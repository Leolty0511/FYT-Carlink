.class public Lk0/rm;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/rm;->c:I

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

    const/16 v2, 0xa

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/rm;->d:[[I

    .line 4
    new-instance v0, Lk0/rm$a;

    invoke-direct {v0, p0}, Lk0/rm$a;-><init>(Lk0/rm;)V

    iput-object v0, p0, Lk0/rm;->e:Ljava/lang/Runnable;

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
        0x0
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "com.syu.canbus"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 4
    :cond_0
    sget v0, Lk0/nt;->c:I

    const/16 v4, 0x9e

    if-ne v0, v4, :cond_1

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    .line 8
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->e:I

    .line 9
    iput v3, v0, Lk0/mt;->f:I

    .line 10
    iput v2, v0, Lk0/mt;->g:I

    .line 11
    iput v2, v0, Lk0/mt;->o:I

    .line 12
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v0, p0, Lk0/rm;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_12

    const/16 p3, 0x29

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, p3, :cond_11

    const/16 p3, 0x3a

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eq v0, p3, :cond_f

    const/16 p3, 0x42

    const/16 v7, 0x12

    const/16 v8, 0xff

    if-eq v0, p3, :cond_e

    const/16 p3, 0x7d

    const/16 v9, 0xb

    if-eq v0, p3, :cond_c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    and-int/2addr v0, v8

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v2, p1, v1

    and-int/2addr v2, v8

    add-int/lit8 v7, p2, 0x4

    .line 4
    aget-byte v9, p1, v7

    and-int/2addr v9, v8

    add-int/2addr p2, v4

    .line 5
    aget-byte v4, p1, p2

    and-int/2addr v4, v8

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v9, :cond_0

    if-nez v4, :cond_0

    .line 6
    invoke-static {v3}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v3, Ll0/c0;->g:I

    if-ne v3, v0, :cond_1

    sget v3, Ll0/c0;->h:I

    if-ne v3, v2, :cond_1

    sget v3, Ll0/c0;->i:I

    if-ne v3, v9, :cond_1

    sget v3, Ll0/c0;->j:I

    if-eq v3, v4, :cond_2

    .line 8
    :cond_1
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_2

    .line 9
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 10
    sput v5, Ll0/c0;->k:I

    .line 11
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 13
    sput v2, Ll0/c0;->h:I

    .line 14
    sput v9, Ll0/c0;->i:I

    .line 15
    sput v4, Ll0/c0;->j:I

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 17
    aget-byte p3, p1, v1

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 18
    aget-byte p3, p1, v7

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    invoke-static {p1}, Ll0/c0;->s1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v4

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    invoke-static {p1}, Ll0/c0;->s1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 24
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 25
    aget-byte v0, p1, v0

    add-int/lit8 v10, p2, 0x4

    .line 26
    aget-byte v10, p1, v10

    add-int/2addr p2, v4

    .line 27
    aget-byte p1, p1, p2

    const/16 p2, 0x36

    new-array v4, v6, [I

    shr-int/lit8 v11, p3, 0x6

    and-int/2addr v11, v6

    aput v11, v4, v3

    .line 28
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x3f

    new-array v4, v6, [I

    shr-int/lit8 v11, p3, 0x5

    and-int/2addr v11, v6

    aput v11, v4, v3

    .line 29
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v4, p3, 0x4

    and-int/2addr v4, v6

    aput v4, p2, v3

    const/16 v4, 0xd

    .line 30
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v4, p3, 0x3

    and-int/2addr v4, v6

    aput v4, p2, v3

    .line 31
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v4, p3, 0x2

    and-int/2addr v4, v6

    aput v4, p2, v3

    const/16 v4, 0xc

    .line 32
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v6

    aput p3, p2, v3

    const/16 p3, 0x10

    .line 33
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v6, [I

    and-int/2addr v0, v8

    aput v0, p3, v3

    .line 34
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 p2, v10, 0xff

    if-eqz p2, :cond_7

    if-eq p2, v6, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    if-eq p2, v5, :cond_3

    move p3, v3

    move v0, p3

    :goto_1
    move v1, v0

    goto :goto_2

    :cond_3
    move v0, v3

    move p3, v6

    move v1, p3

    goto :goto_2

    :cond_4
    move v0, v3

    move v1, v0

    move p3, v6

    goto :goto_2

    :cond_5
    move p3, v3

    move v0, p3

    move v1, v6

    goto :goto_2

    :cond_6
    move p3, v3

    move v0, v6

    goto :goto_1

    :cond_7
    move p3, v3

    move v1, p3

    move v0, v6

    :goto_2
    const/16 v2, 0x41

    new-array v4, v6, [I

    aput p3, v4, v3

    .line 35
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    aput p3, v2, v3

    .line 36
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v2, v6, [I

    aput v0, v2, v3

    .line 37
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v6, [I

    aput v1, v0, v3

    .line 38
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4d

    new-array v0, v6, [I

    aput p2, v0, v3

    .line 39
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1b

    new-array p3, v6, [I

    and-int/2addr p1, v8

    aput p1, p3, v3

    .line 40
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1c

    new-array p3, v6, [I

    aput p1, p3, v3

    .line 41
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 42
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 43
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 44
    iput p2, p0, Lk0/rm;->c:I

    move p2, v3

    .line 45
    :goto_3
    iget-object p3, p0, Lk0/rm;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 46
    iget v0, p0, Lk0/rm;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_8

    if-eqz v0, :cond_9

    .line 47
    iput p2, p0, Lk0/rm;->b:I

    goto :goto_4

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    and-int/2addr p1, v8

    if-ne p1, v6, :cond_a

    .line 48
    array-length p1, p3

    if-ge p2, p1, :cond_13

    .line 49
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_a
    if-nez p1, :cond_13

    .line 50
    iget p1, p0, Lk0/rm;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_b

    if-eq p1, v8, :cond_b

    .line 51
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 52
    :cond_b
    iput v8, p0, Lk0/rm;->b:I

    goto/16 :goto_6

    :cond_c
    add-int/lit8 p3, p2, 0x2

    .line 53
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    if-eq p3, v6, :cond_d

    goto/16 :goto_6

    :cond_d
    add-int/2addr p2, v1

    .line 54
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v6

    aget-byte v0, p1, p2

    shr-int/2addr v0, v5

    and-int/2addr v0, v6

    invoke-static {p3, v0, v3}, Ll0/c0;->a(III)V

    .line 55
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v2, [I

    aput v9, v1, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    aput p1, v1, v6

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    const/16 p3, 0x62

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x2

    .line 56
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 57
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x4

    .line 58
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/2addr v4, v8

    or-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x6

    .line 59
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    and-int/2addr v4, v8

    or-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x8

    .line 60
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    add-int/lit8 v4, p2, 0x9

    aget-byte v4, p1, v4

    and-int/2addr v4, v8

    or-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xa

    .line 61
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xb

    .line 62
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xc

    .line 63
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    add-int/lit8 v4, p2, 0xd

    aget-byte v4, p1, v4

    and-int/2addr v4, v8

    or-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0xe

    .line 64
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0xf

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    or-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x10

    .line 65
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x11

    .line 66
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v6, [I

    add-int/2addr p2, v7

    .line 67
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_f
    add-int/2addr p2, v2

    .line 68
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 69
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_10

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 70
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 71
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 72
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 73
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 74
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 75
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v6

    aput p3, p2, v3

    .line 76
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v6

    aput p1, p2, v3

    .line 77
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 78
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x19c0

    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_6

    .line 79
    :cond_12
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_13
    :goto_6
    return-void

    nop

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

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/rm;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6e

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
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

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

    .line 2
    aget p4, p2, p4

    int-to-byte p4, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method
