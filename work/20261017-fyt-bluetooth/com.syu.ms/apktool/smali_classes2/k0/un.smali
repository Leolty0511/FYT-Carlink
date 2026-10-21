.class public Lk0/un;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static k:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:Lo1/g0;

.field public final j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/un;->c:I

    const/4 v1, 0x6

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    iput-object v2, p0, Lk0/un;->d:[[I

    .line 4
    iput v0, p0, Lk0/un;->f:I

    const/16 v2, 0x11

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_6

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    aput-object v0, v2, v5

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    aput-object v0, v2, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    aput-object v0, v2, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    const/4 v1, 0x7

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    const/16 v1, 0x8

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    const/16 v1, 0x9

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    const/16 v1, 0xa

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    const/16 v1, 0xd

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    const/16 v1, 0xe

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    const/16 v1, 0xf

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    const/16 v1, 0x10

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/un;->g:[[I

    .line 6
    new-instance v0, Lk0/un$a;

    invoke-direct {v0, p0}, Lk0/un$a;-><init>(Lk0/un;)V

    iput-object v0, p0, Lk0/un;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/un;->i:Lo1/g0;

    .line 8
    iput v5, p0, Lk0/un;->j:I

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
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
        0x1
        0x7
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x10
    .end array-data

    :array_c
    .array-data 4
        0x7
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_e
    .array-data 4
        0x9
        0x15
    .end array-data

    :array_f
    .array-data 4
        0xa
        0x4c
    .end array-data

    :array_10
    .array-data 4
        0xb
        0x12
    .end array-data

    :array_11
    .array-data 4
        0xc
        0x1a
    .end array-data

    :array_12
    .array-data 4
        0xd
        0x6
    .end array-data

    :array_13
    .array-data 4
        0xe
        0x19
    .end array-data

    :array_14
    .array-data 4
        0xf
        0x26
    .end array-data

    :array_15
    .array-data 4
        0x10
        0x37
    .end array-data

    :array_16
    .array-data 4
        0x11
        0x1
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 3

    if-eqz p1, :cond_6

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x43

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3
    aget p1, p1, v0

    const/4 v0, 0x6

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, v0, [I

    .line 6
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, v0, [I

    .line 7
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x7d
        0x3
        0x1
        0x4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7d
        0x3
        0x1
        0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7d
        0x3
        0x1
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7d
        0x3
        0x1
        0x1
        0x0
    .end array-data
.end method

.method public S2()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/un;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->h:I

    .line 8
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0x35

    if-ne v0, v3, :cond_0

    .line 9
    iget-object v0, p0, Lk0/un;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 10
    iget-object v0, p0, Lk0/un;->i:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/un;->a3(I)V

    .line 11
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    new-array v2, v2, [I

    const/16 v3, 0x43

    aput v3, v2, v1

    iput-object v2, v0, Lk0/mt;->m:[I

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x26

    const/16 v1, 0x12

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq p3, v0, :cond_11

    const/16 v0, 0x29

    if-eq p3, v0, :cond_10

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/2addr p2, v3

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 4
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 5
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 6
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 7
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 8
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 9
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 10
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v8

    aput p1, p2, v7

    .line 11
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte v0, p1, p3

    and-int/2addr v0, v6

    add-int/lit8 v1, p2, 0x3

    .line 13
    aget-byte v3, p1, v1

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x4

    .line 14
    aget-byte v9, p1, v4

    and-int/2addr v9, v6

    add-int/2addr p2, v2

    .line 15
    aget-byte v2, p1, p2

    and-int/2addr v2, v6

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    if-nez v9, :cond_1

    if-nez v2, :cond_1

    .line 16
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v7, Ll0/c0;->g:I

    if-ne v7, v0, :cond_2

    sget v7, Ll0/c0;->h:I

    if-ne v7, v3, :cond_2

    sget v7, Ll0/c0;->i:I

    if-ne v7, v9, :cond_2

    sget v7, Ll0/c0;->j:I

    if-eq v7, v2, :cond_3

    .line 18
    :cond_2
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_3

    .line 19
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 20
    sput v5, Ll0/c0;->k:I

    .line 21
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v0, Ll0/c0;->g:I

    .line 23
    sput v3, Ll0/c0;->h:I

    .line 24
    sput v9, Ll0/c0;->i:I

    .line 25
    sput v2, Ll0/c0;->j:I

    .line 26
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->p1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 27
    aget-byte p3, p1, v1

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->p1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 28
    aget-byte p3, p1, v4

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->p1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 29
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    invoke-static {p1}, Ll0/c0;->p1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->p1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->p1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    invoke-static {p3}, Ll0/c0;->p1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v2

    .line 33
    aget-byte p1, p1, p2

    and-int/2addr p1, v6

    invoke-static {p1}, Ll0/c0;->p1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 34
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 35
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 36
    iput p2, p0, Lk0/un;->f:I

    move p2, v7

    .line 37
    :goto_2
    iget-object p3, p0, Lk0/un;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_5

    .line 38
    iget v0, p0, Lk0/un;->f:I

    aget-object v1, p3, p2

    aget v1, v1, v7

    if-ne v0, v1, :cond_4

    if-eqz v0, :cond_5

    .line 39
    iput p2, p0, Lk0/un;->e:I

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_6

    .line 40
    array-length p1, p3

    if-ge p2, p1, :cond_1b

    .line 41
    aget-object p1, p3, p2

    aget p1, p1, v8

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_6
    if-nez p1, :cond_1b

    .line 42
    iget p1, p0, Lk0/un;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_7

    if-eq p1, v6, :cond_7

    .line 43
    aget-object p1, p3, p1

    aget p1, p1, v8

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    .line 44
    :cond_7
    iput v6, p0, Lk0/un;->e:I

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 45
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 46
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 47
    iput p2, p0, Lk0/un;->c:I

    move p2, v7

    .line 48
    :goto_4
    iget-object p3, p0, Lk0/un;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 49
    iget v0, p0, Lk0/un;->c:I

    aget-object v3, p3, p2

    aget v3, v3, v7

    if-ne v0, v3, :cond_8

    if-eqz v0, :cond_9

    .line 50
    iput p2, p0, Lk0/un;->b:I

    goto :goto_5

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 51
    :cond_9
    :goto_5
    iget v0, p0, Lk0/un;->c:I

    if-eq v0, v4, :cond_e

    if-eq v0, v5, :cond_c

    and-int/2addr p1, v6

    if-ne p1, v8, :cond_a

    .line 52
    array-length p1, p3

    if-ge p2, p1, :cond_1b

    .line 53
    aget-object p1, p3, p2

    aget p1, p1, v8

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_a
    if-nez p1, :cond_1b

    .line 54
    iget p1, p0, Lk0/un;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_b

    if-eq p1, v6, :cond_b

    .line 55
    aget-object p1, p3, p1

    aget p1, p1, v8

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    .line 56
    :cond_b
    iput v6, p0, Lk0/un;->b:I

    goto/16 :goto_9

    :cond_c
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1b

    .line 57
    sget p1, Lh0/c;->E:I

    if-eq p1, v4, :cond_d

    if-eq p1, v5, :cond_d

    if-eq p1, v2, :cond_d

    .line 58
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 59
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_d
    const/16 p1, 0x1a

    .line 60
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 61
    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_e
    and-int/2addr p1, v6

    if-ne p1, v8, :cond_1b

    .line 62
    sget p1, Lh0/c;->E:I

    if-eq p1, v5, :cond_f

    .line 63
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 64
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 65
    :cond_f
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 66
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_10
    add-int/lit8 p3, p2, 0x3

    .line 67
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    const/16 p2, 0x16bc

    invoke-static {p3, p1, v7, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_11
    const/16 p3, 0xa

    new-array v0, v8, [I

    add-int/lit8 v9, p2, 0x2

    .line 68
    aget-byte v10, p1, v9

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v8

    aput v10, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v0, v8, [I

    .line 69
    aget-byte v10, p1, v9

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v8

    aput v10, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v8, [I

    .line 70
    aget-byte v10, p1, v9

    shr-int/2addr v10, v2

    and-int/2addr v10, v8

    aput v10, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v0, v8, [I

    .line 71
    aget-byte v10, p1, v9

    shr-int/2addr v10, v5

    and-int/2addr v10, v8

    aput v10, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v0, v8, [I

    .line 72
    aget-byte v10, p1, v9

    shr-int/lit8 v4, v10, 0x3

    and-int/2addr v4, v8

    aput v4, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v0, v8, [I

    .line 73
    aget-byte v4, p1, v9

    shr-int/lit8 v3, v4, 0x2

    and-int/2addr v3, v8

    aput v3, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v8, [I

    .line 74
    aget-byte v0, p1, v9

    shr-int/2addr v0, v8

    and-int/2addr v0, v8

    aput v0, p3, v7

    const/16 v0, 0xf

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v3, v8, [I

    .line 75
    aget-byte v4, p1, v9

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    new-array p3, v8, [I

    add-int/lit8 v3, p2, 0x3

    .line 76
    aget-byte v4, p1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v8

    aput v4, p3, v7

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v8, [I

    .line 77
    aget-byte v4, p1, v3

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v8

    aput v4, v1, v7

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v8, [I

    .line 78
    aget-byte v4, p1, v3

    shr-int/lit8 v2, v4, 0x5

    and-int/2addr v2, v8

    aput v2, v1, v7

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v1, v8, [I

    .line 79
    aget-byte v2, p1, v3

    shr-int/2addr v2, v7

    and-int/2addr v0, v2

    aput v0, v1, v7

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 80
    invoke-static {p3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v0, -0x3

    const/4 v1, -0x2

    const/16 v2, 0x1f

    const/16 v3, 0x1c

    const/16 v4, 0x1b

    if-eqz p3, :cond_16

    add-int/lit8 p3, p2, 0x4

    .line 81
    aget-byte v9, p1, p3

    and-int/2addr v9, v6

    if-nez v9, :cond_12

    new-array p3, v8, [I

    aput v1, p3, v7

    .line 82
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    .line 83
    :cond_12
    aget-byte v9, p1, p3

    and-int/2addr v9, v6

    if-ne v9, v2, :cond_13

    new-array p3, v8, [I

    aput v0, p3, v7

    .line 84
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    new-array v9, v8, [I

    .line 85
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    aput p3, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 p3, p2, 0x5

    .line 86
    aget-byte v3, p1, p3

    and-int/2addr v3, v6

    if-nez v3, :cond_14

    new-array p3, v8, [I

    aput v1, p3, v7

    .line 87
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 88
    :cond_14
    aget-byte v1, p1, p3

    and-int/2addr v1, v6

    if-ne v1, v2, :cond_15

    new-array p3, v8, [I

    aput v0, p3, v7

    .line 89
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_15
    new-array v0, v8, [I

    .line 90
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    aput p3, v0, v7

    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_16
    add-int/lit8 p3, p2, 0x4

    .line 91
    aget-byte v9, p1, p3

    and-int/2addr v9, v6

    if-nez v9, :cond_17

    new-array p3, v8, [I

    aput v1, p3, v7

    .line 92
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 93
    :cond_17
    aget-byte v9, p1, p3

    and-int/2addr v9, v6

    if-ne v9, v2, :cond_18

    new-array p3, v8, [I

    aput v0, p3, v7

    .line 94
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_18
    new-array v9, v8, [I

    .line 95
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    aput p3, v9, v7

    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 p3, p2, 0x5

    .line 96
    aget-byte v4, p1, p3

    and-int/2addr v4, v6

    if-nez v4, :cond_19

    new-array p3, v8, [I

    aput v1, p3, v7

    .line 97
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 98
    :cond_19
    aget-byte v1, p1, p3

    and-int/2addr v1, v6

    if-ne v1, v2, :cond_1a

    new-array p3, v8, [I

    aput v0, p3, v7

    .line 99
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1a
    new-array v0, v8, [I

    .line 100
    aget-byte p3, p1, p3

    and-int/2addr p3, v6

    aput p3, v0, v7

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 p3, 0x2a

    new-array v0, v8, [I

    add-int/lit8 p2, p2, 0x6

    .line 101
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v8

    aput v1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x2c

    new-array v0, v8, [I

    .line 102
    aget-byte p1, p1, p2

    shr-int/2addr p1, v5

    and-int/lit8 p1, p1, 0x7

    aput p1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_1b
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
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
    iget-object v0, p0, Lk0/un;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/un;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

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
    .locals 5

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "C_CAMERA_MODE codeCmd = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 3
    aget p3, p2, v0

    if-gt p3, p1, :cond_2

    .line 4
    sget p2, Lk0/un;->k:I

    if-ne p2, p1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lk0/un;->a3(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lk0/un;->a3(I)V

    goto :goto_1

    .line 7
    :cond_2
    aget p3, p2, v0

    const/4 p4, 0x2

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-ne p3, v4, :cond_3

    move p2, p1

    goto :goto_0

    .line 8
    :cond_3
    aget p3, p2, v0

    if-ne p3, v2, :cond_4

    move p2, p4

    goto :goto_0

    .line 9
    :cond_4
    aget p3, p2, v0

    if-ne p3, v1, :cond_5

    move p2, v3

    goto :goto_0

    .line 10
    :cond_5
    aget p2, p2, v0

    const/4 p3, 0x7

    if-ne p2, p3, :cond_6

    move p2, v4

    goto :goto_0

    :cond_6
    move p2, v0

    :goto_0
    new-array p3, v1, [I

    const/16 v1, 0xe3

    aput v1, p3, v0

    const/16 v1, -0x7d

    aput v1, p3, p1

    aput v3, p3, p4

    aput p1, p3, v3

    aput p2, p3, v4

    aput v0, p3, v2

    .line 11
    invoke-static {p3}, Lz/k;->s([I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final a3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/un;->k:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x3f5

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    sget p1, Lk0/un;->k:I

    const/4 v1, 0x6

    if-nez p1, :cond_0

    new-array p1, v1, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lk0/un;->i:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/un;->k:I

    if-eq p1, v1, :cond_1

    .line 7
    iget-object p1, p0, Lk0/un;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x7d
        0x3
        0x1
        0x6
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7d
        0x3
        0x1
        0x5
        0x0
    .end array-data
.end method
