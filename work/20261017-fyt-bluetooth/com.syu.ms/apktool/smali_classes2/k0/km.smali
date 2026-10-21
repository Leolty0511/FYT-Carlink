.class public Lk0/km;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/km;->c:I

    const/16 v1, 0xb

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

    const/4 v4, 0x6

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x7

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v2, 0xa

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/km;->d:[[I

    .line 4
    iput-byte v3, p0, Lk0/km;->e:B

    .line 5
    new-instance v0, Lk0/km$a;

    invoke-direct {v0, p0}, Lk0/km$a;-><init>(Lk0/km;)V

    iput-object v0, p0, Lk0/km;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/km$b;

    invoke-direct {v0, p0}, Lk0/km$b;-><init>(Lk0/km;)V

    iput-object v0, p0, Lk0/km;->g:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x5
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x6
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x19
    .end array-data
.end method

.method public static synthetic a3(Lk0/km;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/km;->g:Ljava/lang/Runnable;

    return-object p0
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->q:I

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v1, v0, Lk0/mt;->f:I

    .line 7
    iput v1, v0, Lk0/mt;->l:I

    .line 8
    iput v1, v0, Lk0/mt;->g:I

    .line 9
    iput v2, v0, Lk0/mt;->o:I

    .line 10
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/km;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_13

    const/16 p3, 0x29

    const v1, 0xff00

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, p3, :cond_11

    const/16 p3, 0x3a

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v0, p3, :cond_f

    const/16 p3, 0x50

    if-eq v0, p3, :cond_e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v2, p1, v1

    and-int/2addr v2, v3

    add-int/lit8 v8, p2, 0x4

    .line 4
    aget-byte v9, p1, v8

    and-int/2addr v9, v3

    add-int/2addr p2, v6

    .line 5
    aget-byte v6, p1, p2

    and-int/2addr v6, v3

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v9, :cond_0

    if-nez v6, :cond_0

    .line 6
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_1

    sget v4, Ll0/c0;->h:I

    if-ne v4, v2, :cond_1

    sget v4, Ll0/c0;->i:I

    if-ne v4, v9, :cond_1

    sget v4, Ll0/c0;->j:I

    if-eq v4, v6, :cond_2

    .line 8
    :cond_1
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_2

    .line 9
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 10
    sput v7, Ll0/c0;->k:I

    .line 11
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 13
    sput v2, Ll0/c0;->h:I

    .line 14
    sput v9, Ll0/c0;->i:I

    .line 15
    sput v6, Ll0/c0;->j:I

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 17
    aget-byte p3, p1, v1

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 18
    aget-byte p3, p1, v8

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->K0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v6

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->K0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 24
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/lit8 v0, p2, 0x3

    .line 25
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x4

    .line 26
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    add-int/2addr p2, v6

    .line 27
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const/16 p2, 0x34

    new-array v6, v5, [I

    shr-int/lit8 v9, p3, 0x6

    and-int/2addr v9, v5

    aput v9, v6, v4

    .line 28
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x36

    new-array v6, v5, [I

    shr-int/lit8 v9, p3, 0x5

    and-int/2addr v9, v5

    aput v9, v6, v4

    .line 29
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v6, v5, [I

    shr-int/lit8 v9, p3, 0x4

    and-int/2addr v9, v5

    aput v9, v6, v4

    .line 30
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array v6, v5, [I

    shr-int/lit8 v9, p3, 0x3

    and-int/2addr v9, v5

    aput v9, v6, v4

    .line 31
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v6, v5, [I

    shr-int/lit8 v9, p3, 0x2

    and-int/2addr v9, v5

    aput v9, v6, v4

    .line 32
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array v6, v5, [I

    shr-int/lit8 v9, p3, 0x1

    and-int/2addr v9, v5

    aput v9, v6, v4

    .line 33
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array v6, v5, [I

    shr-int/2addr p3, v4

    and-int/2addr p3, v5

    aput p3, v6, v4

    .line 34
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v5, [I

    and-int/2addr v0, v3

    aput v0, p3, v4

    .line 35
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v2, :cond_5

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    move p2, v4

    move p3, p2

    :goto_1
    move v0, p3

    goto :goto_2

    :cond_3
    move p3, v4

    move p2, v5

    move v0, p2

    goto :goto_2

    :cond_4
    move p3, v4

    move v0, p3

    move p2, v5

    goto :goto_2

    :cond_5
    move p2, v4

    move p3, p2

    move v0, v5

    goto :goto_2

    :cond_6
    move p2, v4

    move p3, v5

    goto :goto_1

    :cond_7
    move p2, v4

    move v0, p2

    move p3, v5

    :goto_2
    const/16 v1, 0x12

    new-array v2, v5, [I

    aput p2, v2, v4

    .line 36
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array v1, v5, [I

    aput p3, v1, v4

    .line 37
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v5, [I

    aput v0, p3, v4

    .line 38
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1b

    if-nez p1, :cond_8

    new-array p1, v5, [I

    const/4 p3, -0x2

    aput p3, p1, v4

    .line 39
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_8
    if-ne p1, v3, :cond_9

    new-array p1, v5, [I

    const/4 p3, -0x3

    aput p3, p1, v4

    .line 40
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_9
    new-array p3, v5, [I

    aput p1, p3, v4

    .line 41
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 42
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    .line 43
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 44
    iput p2, p0, Lk0/km;->c:I

    move p2, v4

    .line 45
    :goto_3
    iget-object p3, p0, Lk0/km;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_b

    .line 46
    iget v0, p0, Lk0/km;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_a

    if-eqz v0, :cond_b

    .line 47
    iput p2, p0, Lk0/km;->b:I

    goto :goto_4

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_c

    .line 48
    array-length p1, p3

    if-ge p2, p1, :cond_14

    .line 49
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_c
    if-nez p1, :cond_14

    .line 50
    iget p1, p0, Lk0/km;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_d

    if-eq p1, v3, :cond_d

    .line 51
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 52
    :cond_d
    iput v3, p0, Lk0/km;->b:I

    goto/16 :goto_6

    :cond_e
    add-int/lit8 p3, p2, 0x2

    .line 53
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr p3, v1

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, p3

    const p2, 0xffff

    and-int/2addr p1, p2

    const/16 p2, 0x408

    new-array p3, v5, [I

    aput p1, p3, v4

    .line 54
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_f
    add-int/2addr p2, v2

    .line 55
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 56
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_10

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 57
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 58
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 59
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 60
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 61
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 62
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 63
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v4

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 64
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    add-int/lit8 p3, p2, 0x3

    .line 65
    aget-byte v0, p1, p3

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v1

    add-int/2addr p2, v2

    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const v1, 0x8000

    const/16 v2, 0x19b4

    if-ne v0, v1, :cond_12

    .line 66
    invoke-static {v4, v4, v5, v2}, Lk0/qt;->i(IIZI)V

    goto :goto_6

    .line 67
    :cond_12
    aget-byte p2, p1, p2

    aget-byte p1, p1, p3

    invoke-static {p2, p1, v4, v2}, Lk0/qt;->i(IIZI)V

    goto :goto_6

    .line 68
    :cond_13
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_14
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/km;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x61

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0xe0

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
