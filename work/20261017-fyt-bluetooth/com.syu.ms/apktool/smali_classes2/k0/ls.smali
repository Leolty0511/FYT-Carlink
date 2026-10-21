.class public Lk0/ls;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ls;->c:I

    const/16 v1, 0xb

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

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ls;->d:[[I

    .line 4
    iput v0, p0, Lk0/ls;->e:I

    .line 5
    new-instance v0, Lk0/ls$a;

    invoke-direct {v0, p0}, Lk0/ls$a;-><init>(Lk0/ls;)V

    iput-object v0, p0, Lk0/ls;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/ls$b;

    invoke-direct {v0, p0}, Lk0/ls$b;-><init>(Lk0/ls;)V

    iput-object v0, p0, Lk0/ls;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/ls$c;

    invoke-direct {v0, p0}, Lk0/ls$c;-><init>(Lk0/ls;)V

    iput-object v0, p0, Lk0/ls;->h:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x6
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ls;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/ls;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->h:I

    .line 12
    iput v1, v0, Lk0/mt;->p:I

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, 0xc

    const/16 v6, 0x41

    if-eq v0, v6, :cond_f

    const/16 v7, 0x7d

    const/16 v8, 0xb

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eq v0, v7, :cond_d

    const/16 v7, 0x7f

    if-eq v0, v7, :cond_c

    const/16 p3, 0x28

    const/4 v7, 0x5

    if-eq v0, p3, :cond_a

    const/16 p3, 0x29

    if-eq v0, p3, :cond_9

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    add-int/lit8 v0, p2, 0x3

    .line 3
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    add-int/lit8 v11, p2, 0x4

    .line 4
    aget-byte v11, p1, v11

    and-int/2addr v11, v3

    add-int/2addr p2, v7

    .line 5
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    new-array p2, v5, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v5

    aput v7, p2, v4

    const/16 v7, 0xa

    .line 6
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v7, p3, 0x6

    and-int/2addr v7, v5

    aput v7, p2, v4

    .line 7
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v7, p3, 0x5

    and-int/2addr v7, v5

    aput v7, p2, v4

    .line 8
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array v1, v5, [I

    shr-int/lit8 v7, p3, 0x3

    and-int/2addr v7, v5

    aput v7, v1, v4

    .line 9
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x3f

    new-array v1, v5, [I

    shr-int/lit8 v7, p3, 0x2

    and-int/2addr v7, v5

    aput v7, v1, v4

    .line 10
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v1, p3, 0x0

    and-int/2addr v1, v5

    aput v1, p2, v4

    .line 11
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array v1, v5, [I

    shr-int/2addr p3, v5

    and-int/2addr p3, v5

    aput p3, v1, v4

    .line 12
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    if-eq v0, v5, :cond_3

    if-eq v0, v10, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v9, :cond_0

    move p2, v4

    move p3, p2

    :goto_0
    move v0, p3

    goto :goto_1

    :cond_0
    move p3, v4

    move p2, v5

    move v0, p2

    goto :goto_1

    :cond_1
    move p2, v4

    move p3, p2

    move v0, v5

    goto :goto_1

    :cond_2
    move p2, v4

    move p3, v5

    goto :goto_0

    :cond_3
    move p2, v4

    move v0, p2

    move p3, v5

    :goto_1
    const/16 v1, 0x12

    new-array v2, v5, [I

    aput p2, v2, v4

    .line 13
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array v1, v5, [I

    aput p3, v1, v4

    .line 14
    invoke-static {p2, v1}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v5, [I

    aput v0, p3, v4

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v5, [I

    aput v11, p3, v4

    .line 16
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    and-int/2addr p1, v3

    const/16 p2, 0x1b

    if-nez p1, :cond_4

    new-array p1, v5, [I

    const/4 p3, -0x1

    aput p3, p1, v4

    .line 17
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_4
    const/16 p3, 0x26

    if-ge p1, p3, :cond_5

    new-array p1, v5, [I

    const/4 p3, -0x2

    aput p3, p1, v4

    .line 18
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_5
    if-lt p1, p3, :cond_15

    new-array p1, v5, [I

    const/4 p3, -0x3

    aput p3, p1, v4

    .line 19
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0x3

    .line 21
    aget-byte v2, p1, v1

    and-int/2addr v2, v3

    add-int/lit8 v6, p2, 0x4

    .line 22
    aget-byte v8, p1, v6

    and-int/2addr v8, v3

    add-int/2addr p2, v7

    .line 23
    aget-byte v7, p1, p2

    and-int/2addr v7, v3

    if-nez v0, :cond_6

    if-nez v2, :cond_6

    if-nez v8, :cond_6

    if-nez v7, :cond_6

    .line 24
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_2

    .line 25
    :cond_6
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_7

    sget v4, Ll0/c0;->h:I

    if-ne v4, v2, :cond_7

    sget v4, Ll0/c0;->i:I

    if-ne v4, v8, :cond_7

    sget v4, Ll0/c0;->j:I

    if-eq v4, v7, :cond_8

    .line 26
    :cond_7
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_8

    .line 27
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 28
    sput v9, Ll0/c0;->k:I

    .line 29
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 30
    :cond_8
    :goto_2
    sput v0, Ll0/c0;->g:I

    .line 31
    sput v2, Ll0/c0;->h:I

    .line 32
    sput v8, Ll0/c0;->i:I

    .line 33
    sput v7, Ll0/c0;->j:I

    .line 34
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 35
    aget-byte p3, p1, v1

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 36
    aget-byte p3, p1, v6

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 37
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 38
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 39
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 40
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v7

    .line 41
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :cond_9
    add-int/lit8 p3, p2, 0x2

    .line 42
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 43
    aget-byte p1, p1, p2

    const/16 p2, 0x15c2

    .line 44
    invoke-static {p1, p3, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    :cond_a
    add-int/2addr p2, v10

    .line 45
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 46
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_b

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 47
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 48
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 49
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 50
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 51
    invoke-static {v9, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 52
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 53
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 54
    :cond_c
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v10

    sub-int/2addr p3, v10

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    add-int/lit8 p3, p2, 0x2

    .line 55
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_e

    goto/16 :goto_6

    :cond_e
    add-int/2addr p2, v2

    .line 56
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v9

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 57
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v10, [I

    aput v8, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x2

    .line 58
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v6, 0xff00

    and-int/2addr v2, v6

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    or-int/2addr v2, v7

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x4

    .line 59
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x5

    .line 60
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x6

    .line 61
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x7

    .line 62
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, p1, v7

    and-int/2addr v7, v3

    or-int/2addr v2, v7

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x9

    .line 63
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v6, p2, 0xa

    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    or-int/2addr v2, v6

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0xb

    .line 64
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v5, [I

    add-int/2addr p2, v1

    .line 65
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_10
    add-int/lit8 p3, p2, 0x2

    .line 66
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 67
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 68
    iput p2, p0, Lk0/ls;->c:I

    move p2, v4

    .line 69
    :goto_4
    iget-object p3, p0, Lk0/ls;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_12

    .line 70
    iget v0, p0, Lk0/ls;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_11

    if-eqz v0, :cond_12

    .line 71
    iput p2, p0, Lk0/ls;->b:I

    goto :goto_5

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_12
    :goto_5
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_13

    .line 72
    array-length p1, p3

    if-ge p2, p1, :cond_15

    .line 73
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_13
    if-nez p1, :cond_15

    .line 74
    iget p1, p0, Lk0/ls;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_14

    if-eq p1, v3, :cond_14

    .line 75
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 76
    :cond_14
    iput v3, p0, Lk0/ls;->b:I

    :cond_15
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ls;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ls;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ls;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6b

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

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, -0x70

    aput p3, p1, v3

    aput v3, p1, v1

    .line 2
    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x5

    new-array p1, p1, [I

    aput v0, p1, v2

    const/16 v0, -0x39

    aput v0, p1, v3

    aput v1, p1, v1

    .line 4
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
