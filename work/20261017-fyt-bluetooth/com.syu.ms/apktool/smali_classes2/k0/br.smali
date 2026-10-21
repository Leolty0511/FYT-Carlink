.class public Lk0/br;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static m:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Lo1/g0;

.field public final j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/br;->c:I

    const/16 v1, 0x10

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/br;->d:[[I

    .line 4
    iput v0, p0, Lk0/br;->e:I

    .line 5
    iput v0, p0, Lk0/br;->f:I

    .line 6
    new-instance v0, Lk0/br$a;

    invoke-direct {v0, p0}, Lk0/br$a;-><init>(Lk0/br;)V

    iput-object v0, p0, Lk0/br;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/br$b;

    invoke-direct {v0, p0}, Lk0/br$b;-><init>(Lk0/br;)V

    iput-object v0, p0, Lk0/br;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/br;->i:Lo1/g0;

    .line 9
    iput v4, p0, Lk0/br;->j:I

    .line 10
    new-instance v0, Lk0/br$c;

    invoke-direct {v0, p0}, Lk0/br$c;-><init>(Lk0/br;)V

    iput-object v0, p0, Lk0/br;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/br$d;

    invoke-direct {v0, p0}, Lk0/br$d;-><init>(Lk0/br;)V

    iput-object v0, p0, Lk0/br;->l:Ljava/lang/Runnable;

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
        0xa
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x15
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x36
    .end array-data

    :array_c
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x18
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x19
    .end array-data

    :array_f
    .array-data 4
        0x1a
        0x37
    .end array-data
.end method

.method public static synthetic a3(Lk0/br;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/br;->i:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3(Lk0/br;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/br;->c3(I)V

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
    iget-object v0, p0, Lk0/br;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->h:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/br;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v0, p0, Lk0/br;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lk0/br;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_20

    const/16 p3, 0x16

    const/16 v1, 0x10

    const v3, 0xff00

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, p3, :cond_1f

    const/16 p3, 0x29

    const/4 v7, 0x3

    if-eq v0, p3, :cond_1e

    const/16 p3, 0x30

    if-eq v0, p3, :cond_1a

    const/16 p3, 0x32

    if-eq v0, p3, :cond_19

    const/16 p3, 0x3a

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-eq v0, p3, :cond_17

    const/16 p3, 0x67

    const/16 v3, 0x66

    if-eq v0, v3, :cond_16

    if-eq v0, p3, :cond_15

    const/16 p3, 0x12

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v2, p1, v1

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v7, p1, v3

    and-int/2addr v7, v4

    add-int/2addr p2, v8

    .line 5
    aget-byte v8, p1, p2

    and-int/2addr v8, v4

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 6
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v5, Ll0/c0;->g:I

    if-ne v5, v0, :cond_1

    sget v5, Ll0/c0;->h:I

    if-ne v5, v2, :cond_1

    sget v5, Ll0/c0;->i:I

    if-ne v5, v7, :cond_1

    sget v5, Ll0/c0;->j:I

    if-eq v5, v8, :cond_2

    .line 8
    :cond_1
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_2

    .line 9
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 10
    sput v9, Ll0/c0;->k:I

    .line 11
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 13
    sput v2, Ll0/c0;->h:I

    .line 14
    sput v7, Ll0/c0;->i:I

    .line 15
    sput v8, Ll0/c0;->j:I

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 17
    aget-byte p3, p1, v1

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 18
    aget-byte p3, p1, v3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->s1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v8

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->s1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_2
    const/16 v0, 0xe

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 24
    aget-byte v10, p1, v8

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v3, v6, [I

    .line 25
    aget-byte v10, p1, v8

    shr-int/2addr v10, v9

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v3, v6, [I

    .line 26
    aget-byte v10, p1, v8

    shr-int/2addr v10, v7

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v3, v6, [I

    .line 27
    aget-byte v10, p1, v8

    shr-int/2addr v10, v2

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x41

    new-array v3, v6, [I

    .line 28
    aget-byte v10, p1, v8

    shr-int/2addr v10, v6

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    .line 29
    aget-byte v3, p1, v8

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v1, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 30
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x4

    .line 31
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v7, :cond_4

    if-eq v0, v9, :cond_3

    move v0, v5

    move v1, v0

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_3
    move v1, v5

    move v0, v6

    move v2, v0

    goto :goto_2

    :cond_4
    move v1, v5

    move v2, v1

    move v0, v6

    goto :goto_2

    :cond_5
    move v0, v5

    move v1, v0

    move v2, v6

    goto :goto_2

    :cond_6
    move v0, v5

    move v1, v6

    goto :goto_1

    :cond_7
    move v0, v5

    move v2, v0

    move v1, v6

    :goto_2
    new-array v3, v6, [I

    aput v0, v3, v5

    .line 32
    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v6, [I

    aput v1, v0, v5

    .line 33
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v6, [I

    aput v2, v0, v5

    .line 34
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 35
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    add-int/lit8 p2, p2, 0x6

    .line 36
    aget-byte v1, p1, p2

    and-int/2addr v1, v4

    const-string v2, "persist.fyt.reversetemp"

    .line 37
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 38
    aget-byte p2, p1, p2

    and-int/lit16 v0, p2, 0xff

    .line 39
    aget-byte p1, p1, p3

    and-int/lit16 v1, p1, 0xff

    :cond_8
    const/4 p1, -0x3

    const/4 p2, -0x2

    const/16 p3, 0x1b

    if-nez v0, :cond_9

    new-array v0, v6, [I

    aput p2, v0, v5

    .line 40
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    if-ne v0, v4, :cond_a

    new-array v0, v6, [I

    aput p1, v0, v5

    .line 41
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v2, v6, [I

    aput v0, v2, v5

    .line 42
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 p3, 0x1c

    if-nez v1, :cond_b

    new-array p1, v6, [I

    aput p2, p1, v5

    .line 43
    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_b
    if-ne v1, v4, :cond_c

    new-array p2, v6, [I

    aput p1, p2, v5

    .line 44
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_c
    new-array p1, v6, [I

    aput v1, p1, v5

    .line 45
    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 46
    aget-byte v0, p1, v0

    add-int/2addr p2, v7

    .line 47
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    .line 48
    iput p2, p0, Lk0/br;->c:I

    move p2, v5

    .line 49
    :goto_4
    iget-object v0, p0, Lk0/br;->d:[[I

    array-length v1, v0

    if-ge p2, v1, :cond_e

    .line 50
    iget v1, p0, Lk0/br;->c:I

    aget-object v2, v0, p2

    aget v2, v2, v5

    if-ne v1, v2, :cond_d

    if-eqz v1, :cond_e

    .line 51
    iput p2, p0, Lk0/br;->b:I

    goto :goto_5

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 52
    :cond_e
    :goto_5
    iget v1, p0, Lk0/br;->c:I

    if-eq v1, v7, :cond_13

    if-eq v1, v9, :cond_11

    and-int/2addr p1, v4

    if-ne p1, v6, :cond_f

    .line 53
    array-length p1, v0

    if-ge p2, p1, :cond_21

    .line 54
    aget-object p1, v0, p2

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_f
    if-nez p1, :cond_21

    .line 55
    iget p1, p0, Lk0/br;->b:I

    array-length p2, v0

    if-ge p1, p2, :cond_10

    if-eq p1, v4, :cond_10

    .line 56
    aget-object p1, v0, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 57
    :cond_10
    iput v4, p0, Lk0/br;->b:I

    goto/16 :goto_7

    :cond_11
    and-int/2addr p1, v4

    if-ne p1, v6, :cond_21

    .line 58
    sget p1, Lh0/c;->E:I

    if-eq p1, v9, :cond_12

    .line 59
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    .line 60
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 61
    :cond_12
    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 62
    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_13
    and-int/2addr p1, v4

    if-ne p1, v6, :cond_21

    .line 63
    sget p1, Lh0/c;->E:I

    if-eq p1, v7, :cond_14

    if-eq p1, v9, :cond_14

    if-eq p1, v8, :cond_14

    .line 64
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    .line 65
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_14
    const/16 p1, 0x1a

    .line 66
    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 67
    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_15
    add-int/2addr p2, v2

    .line 68
    aget-byte p3, p1, p2

    shr-int/2addr p3, v6

    and-int/2addr p3, v6

    aget-byte p1, p1, p2

    shr-int/2addr p1, v5

    and-int/2addr p1, v6

    invoke-static {p3, p1, v5}, Ll0/c0;->N1(III)V

    goto/16 :goto_7

    :cond_16
    const/16 v0, 0x65

    new-array v1, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 69
    aget-byte v10, p1, v4

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v6

    aput v10, v1, v5

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    .line 70
    aget-byte v1, p1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    .line 71
    aget-byte v1, p1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v6, [I

    .line 72
    aget-byte v1, p1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 73
    aget-byte v3, p1, v1

    shr-int/2addr v3, v8

    and-int/lit8 v3, v3, 0x7

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v6, [I

    .line 74
    aget-byte v3, p1, v1

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v6, [I

    .line 75
    aget-byte v3, p1, v1

    shr-int/2addr v3, v2

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v6, [I

    .line 76
    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x4

    .line 77
    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x5

    .line 78
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v0, v6, [I

    .line 79
    aget-byte v3, p1, v1

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v0, v6, [I

    .line 80
    aget-byte v3, p1, v1

    shr-int/2addr v3, v9

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v0, v6, [I

    .line 81
    aget-byte v1, p1, v1

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x6

    .line 82
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v0, v6, [I

    .line 83
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x74

    new-array v0, v6, [I

    .line 84
    aget-byte v3, p1, v1

    shr-int/2addr v3, v9

    and-int/2addr v3, v7

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x75

    new-array v0, v6, [I

    .line 85
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x76

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x7

    .line 86
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x77

    new-array v0, v6, [I

    .line 87
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x78

    new-array v0, v6, [I

    .line 88
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x79

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x8

    .line 89
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7a

    new-array v0, v6, [I

    .line 90
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7b

    new-array v0, v6, [I

    .line 91
    aget-byte v3, p1, v1

    shr-int/2addr v3, v8

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7c

    new-array v0, v6, [I

    .line 92
    aget-byte v1, p1, v1

    shr-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x1f

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7d

    new-array v0, v6, [I

    add-int/lit8 p2, p2, 0x9

    .line 93
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v7

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7e

    new-array v0, v6, [I

    .line 94
    aget-byte v1, p1, p2

    shr-int/2addr v1, v9

    and-int/2addr v1, v7

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7f

    new-array v0, v6, [I

    .line 95
    aget-byte v1, p1, p2

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x80

    new-array v0, v6, [I

    .line 96
    aget-byte v1, p1, p2

    shr-int/2addr v1, v2

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x81

    new-array v0, v6, [I

    .line 97
    aget-byte v1, p1, p2

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x82

    new-array v0, v6, [I

    .line 98
    aget-byte p1, p1, p2

    shr-int/2addr p1, v5

    and-int/2addr p1, v6

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_17
    add-int/lit8 p3, p2, 0x2

    .line 99
    aget-byte p3, p1, p3

    const-string v0, "persist.syu.reversefrontdoor"

    .line 100
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_18

    new-array v0, v6, [I

    shr-int/lit8 v1, p3, 0x5

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 101
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    shr-int/lit8 v1, p3, 0x4

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 102
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_18
    new-array v0, v6, [I

    shr-int/lit8 v1, p3, 0x4

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 103
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    shr-int/lit8 v1, p3, 0x5

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 104
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v0, v6, [I

    shr-int/lit8 v1, p3, 0x3

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 105
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    shr-int/lit8 v1, p3, 0x2

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 106
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    shr-int/lit8 v1, p3, 0x1

    and-int/2addr v1, v6

    aput v1, v0, v5

    .line 107
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    shr-int/2addr p3, v5

    and-int/2addr p3, v6

    aput p3, v0, v5

    .line 108
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x62

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x3

    .line 109
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v3

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v6, [I

    add-int/2addr p2, v8

    .line 110
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v6

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v6, [I

    .line 111
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v6

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_19
    const/16 p3, 0x83

    new-array v0, v6, [I

    add-int/2addr p2, v2

    .line 112
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 113
    :cond_1a
    sget p3, Lk0/nt;->a:I

    const v0, 0xdc01c6

    if-ne p3, v0, :cond_1c

    .line 114
    iget p3, p0, Lk0/br;->e:I

    add-int/2addr p2, v2

    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v6

    if-eq p3, v0, :cond_21

    .line 115
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v6

    iput p1, p0, Lk0/br;->e:I

    if-ne p1, v6, :cond_1b

    .line 116
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_7

    .line 117
    :cond_1b
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_7

    .line 118
    :cond_1c
    iget p3, p0, Lk0/br;->e:I

    add-int/2addr p2, v2

    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v6

    if-eq p3, v0, :cond_21

    .line 119
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v6

    iput p1, p0, Lk0/br;->e:I

    .line 120
    sget p2, Lk0/br;->m:I

    if-ne p2, v6, :cond_21

    if-ne p1, v6, :cond_1d

    .line 121
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 122
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_7

    .line 123
    :cond_1d
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 124
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_7

    :cond_1e
    add-int/lit8 p3, p2, 0x2

    .line 125
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    add-int/2addr p2, v7

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    const/16 p2, 0x19c0

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_7

    :cond_1f
    add-int/lit8 p3, p2, 0x3

    .line 126
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    and-int/2addr p3, v3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    or-int/2addr p1, p3

    div-int/2addr p1, v1

    const/16 p2, 0x407

    new-array p3, v6, [I

    aput p1, p3, v5

    .line 127
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 128
    :cond_20
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_21
    :goto_7
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
    iget-object v0, p0, Lk0/br;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/br;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/br;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/br;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/br;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x88

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

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_5

    .line 1
    array-length p1, p2

    if-lez p1, :cond_5

    .line 2
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/br;->c3(I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0xa7

    aput p3, p1, v4

    aput v4, p1, v2

    .line 3
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0x85

    aput p3, p1, v4

    aput v2, p1, v2

    .line 4
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0x88

    aput p3, p1, v4

    aput v2, p1, v2

    .line 5
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0xe0

    aput p3, p1, v4

    aput v2, p1, v2

    .line 6
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final c3(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/br;->m:I

    const/16 v2, 0x87

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/br;->i:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/br;->m:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/br;->i:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
