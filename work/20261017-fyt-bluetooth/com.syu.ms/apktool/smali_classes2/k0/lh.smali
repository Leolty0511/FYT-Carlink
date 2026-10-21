.class public Lk0/lh;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static l:I = 0xff


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public final e:[B

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/lh;->c:I

    const/16 v1, 0x1f

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

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/lh;->d:[[I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 4
    iput-object v1, p0, Lk0/lh;->e:[B

    .line 5
    iput v0, p0, Lk0/lh;->f:I

    .line 6
    iput v0, p0, Lk0/lh;->g:I

    .line 7
    iput v0, p0, Lk0/lh;->h:I

    .line 8
    iput v0, p0, Lk0/lh;->i:I

    .line 9
    iput v0, p0, Lk0/lh;->j:I

    .line 10
    new-instance v0, Lk0/lh$a;

    invoke-direct {v0, p0}, Lk0/lh$a;-><init>(Lk0/lh;)V

    iput-object v0, p0, Lk0/lh;->k:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x2e
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x2f
    .end array-data

    :array_11
    .array-data 4
        0x29
        0x1e
    .end array-data

    :array_12
    .array-data 4
        0x2a
        0x1f
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x20
    .end array-data

    :array_14
    .array-data 4
        0x2c
        0x21
    .end array-data

    :array_15
    .array-data 4
        0x2d
        0x22
    .end array-data

    :array_16
    .array-data 4
        0x2e
        0x23
    .end array-data

    :array_17
    .array-data 4
        0x2f
        0x1d
    .end array-data

    :array_18
    .array-data 4
        0x30
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x31
        0x18
    .end array-data

    :array_1a
    .array-data 4
        0x32
        0x5
    .end array-data

    :array_1b
    .array-data 4
        0x33
        0x12
    .end array-data

    :array_1c
    .array-data 4
        0x34
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x35
        0x6
    .end array-data

    :array_1e
    .array-data 4
        0x46
        0x37
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

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/lh;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

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

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_1b

    const/16 v6, 0x12

    const/4 v7, 0x2

    if-eq v0, v6, :cond_19

    const/16 v8, 0x29

    if-eq v0, v8, :cond_18

    const/16 v9, 0x30

    if-eq v0, v9, :cond_17

    const/16 p3, 0x7d

    const/16 v9, 0xb

    const/4 v10, 0x4

    if-eq v0, p3, :cond_15

    const/16 p3, 0x1f

    const/16 v11, 0x1e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/lit8 v0, p3, 0x1

    if-ne v0, v5, :cond_1

    const-string v0, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x6

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 4
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 5
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 6
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x6

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 7
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x5

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 8
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x4

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 9
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x3

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 10
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/2addr p3, v7

    and-int/2addr p3, v5

    aput p3, v0, v4

    .line 11
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    :cond_1
    add-int/2addr p2, v1

    .line 12
    aget-byte p3, p1, p2

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_2

    .line 13
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {v4}, Lu0/d;->C2(I)V

    .line 15
    :goto_1
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    .line 16
    iget p2, p0, Lk0/lh;->j:I

    if-eq p2, p1, :cond_1d

    .line 17
    iput p1, p0, Lk0/lh;->j:I

    .line 18
    sget p2, Lu0/b;->r0:I

    if-nez p2, :cond_1d

    if-eqz p1, :cond_3

    .line 19
    sget-object p1, La/b;->s:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 20
    sget-object p1, La/b;->t:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_9

    .line 21
    :cond_3
    sget-object p1, La/b;->s:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 22
    invoke-static {}, Lo1/u;->k()V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 23
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->y1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 24
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->y1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 25
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->y1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/2addr p2, v2

    .line 26
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->y1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 27
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->y1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 28
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->y1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 29
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->y1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v2

    .line 30
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->y1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 31
    aget-byte v0, p1, v0

    const/16 v1, 0xa

    new-array v2, v5, [I

    shr-int/lit8 v7, v0, 0x7

    and-int/2addr v7, v5

    aput v7, v2, v4

    .line 32
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v5

    aput v2, v1, v4

    .line 33
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v5, [I

    shr-int/lit8 v7, v0, 0x5

    and-int/2addr v7, v5

    aput v7, v2, v4

    .line 34
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v5, [I

    shr-int/lit8 v7, v0, 0x4

    and-int/2addr v7, v5

    aput v7, v2, v4

    .line 35
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v5, [I

    shr-int/lit8 v7, v0, 0x3

    and-int/2addr v7, v5

    aput v7, v2, v4

    .line 36
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v5, [I

    shr-int/lit8 v7, v0, 0x2

    and-int/2addr v7, v5

    aput v7, v2, v4

    .line 37
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v2, v0, 0x1

    and-int/2addr v2, v5

    aput v2, v1, v4

    const/16 v2, 0xf

    .line 38
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v7, v5, [I

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, v7, v4

    .line 39
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x3

    .line 40
    aget-byte v0, p1, v0

    new-array v1, v5, [I

    shr-int/lit8 v7, v0, 0x7

    and-int/2addr v7, v5

    aput v7, v1, v4

    .line 41
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v6, v5, [I

    shr-int/lit8 v7, v0, 0x6

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 42
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v6, v5, [I

    shr-int/lit8 v7, v0, 0x5

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 43
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v6, v5, [I

    shr-int/2addr v0, v4

    and-int/2addr v0, v2

    aput v0, v6, v4

    .line 44
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x5

    .line 45
    aget-byte v1, p1, v0

    and-int/2addr v1, v3

    add-int/lit8 v2, p2, 0x6

    .line 46
    aget-byte v6, p1, v2

    and-int/2addr v6, v3

    const-string v7, "persist.fyt.reversetemp"

    .line 47
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 48
    aget-byte v1, p1, v2

    and-int/2addr v1, v3

    .line 49
    aget-byte v0, p1, v0

    and-int/lit16 v6, v0, 0xff

    :cond_4
    const/4 v0, -0x2

    const/16 v2, 0x1b

    if-eqz v1, :cond_7

    if-eq v1, p3, :cond_6

    if-lt v1, v5, :cond_5

    if-gt v1, v11, :cond_5

    new-array v3, v5, [I

    aput v1, v3, v4

    .line 50
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v1, v5, [I

    const/4 v3, -0x1

    aput v3, v1, v4

    .line 51
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v1, v5, [I

    const/4 v3, -0x3

    aput v3, v1, v4

    .line 52
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v1, v5, [I

    aput v0, v1, v4

    .line 53
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v1, 0x1c

    if-eqz v6, :cond_a

    if-eq v6, p3, :cond_9

    if-lt v6, v5, :cond_8

    if-gt v6, v11, :cond_8

    new-array p3, v5, [I

    aput v6, p3, v4

    .line 54
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array p3, v5, [I

    const/4 v0, -0x1

    aput v0, p3, v4

    .line 55
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array p3, v5, [I

    const/4 v0, -0x3

    aput v0, p3, v4

    .line 56
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array p3, v5, [I

    aput v0, p3, v4

    .line 57
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 p3, 0x1d

    new-array v0, v5, [I

    add-int/lit8 p2, p2, 0x7

    .line 58
    aget-byte v1, p1, p2

    shr-int/2addr v1, v10

    and-int/lit8 v1, v1, 0x7

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 59
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/lit8 p1, p1, 0x7

    aput p1, p3, v4

    invoke-static {v11, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 v0, p2, 0x2

    .line 60
    aget-byte v0, p1, v0

    add-int/2addr p2, v1

    .line 61
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    .line 62
    iput p2, p0, Lk0/lh;->c:I

    move p2, v4

    .line 63
    :goto_4
    iget-object v0, p0, Lk0/lh;->d:[[I

    array-length v7, v0

    if-ge p2, v7, :cond_c

    .line 64
    iget v7, p0, Lk0/lh;->c:I

    aget-object v9, v0, p2

    aget v9, v9, v4

    if-ne v7, v9, :cond_b

    if-eqz v7, :cond_c

    .line 65
    iput p2, p0, Lk0/lh;->b:I

    goto :goto_5

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 66
    :cond_c
    :goto_5
    iget v7, p0, Lk0/lh;->c:I

    if-eq v7, v2, :cond_13

    if-eq v7, v8, :cond_11

    const/16 v1, 0x2a

    if-eq v7, v1, :cond_f

    and-int/2addr p1, v3

    if-ne p1, v5, :cond_d

    .line 67
    array-length p1, v0

    if-ge p2, p1, :cond_1d

    .line 68
    aget-object p1, v0, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_d
    if-nez p1, :cond_1d

    .line 69
    iget p1, p0, Lk0/lh;->b:I

    array-length p2, v0

    if-ge p1, p2, :cond_e

    if-eq p1, v3, :cond_e

    .line 70
    aget-object p1, v0, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 71
    :cond_e
    iput v3, p0, Lk0/lh;->b:I

    goto/16 :goto_9

    :cond_f
    move p2, v4

    :goto_6
    and-int/lit16 v0, p1, 0xff

    if-ge p2, v0, :cond_10

    .line 72
    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 73
    :cond_10
    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_11
    move p2, v4

    :goto_7
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_12

    .line 74
    invoke-static {v11, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 75
    :cond_12
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_13
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_1d

    .line 76
    sget p1, Lh0/c;->E:I

    if-eq p1, v1, :cond_14

    if-eq p1, v2, :cond_14

    .line 77
    invoke-static {v6, v4}, Ll0/b0;->l0(II)V

    .line 78
    invoke-static {v6, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_14
    const/16 p1, 0x1a

    .line 79
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 80
    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_15
    add-int/lit8 p3, p2, 0x2

    .line 81
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_16

    goto/16 :goto_9

    :cond_16
    add-int/2addr p2, v1

    .line 82
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v10

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 83
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v7, [I

    aput v9, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    .line 84
    :cond_17
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_18
    add-int/lit8 p3, p2, 0x2

    .line 85
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x1518

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    .line 86
    :cond_19
    iget p3, p0, Lk0/lh;->i:I

    add-int/2addr p2, v7

    aget-byte v0, p1, p2

    if-eq p3, v0, :cond_1d

    .line 87
    aget-byte p1, p1, p2

    iput p1, p0, Lk0/lh;->i:I

    if-ne p1, v5, :cond_1a

    .line 88
    sget p2, Lu0/b;->D:I

    if-eq p2, v2, :cond_1a

    .line 89
    invoke-static {}, Lo1/u;->j()I

    goto/16 :goto_9

    :cond_1a
    if-nez p1, :cond_1d

    .line 90
    sget p1, Lu0/b;->D:I

    if-ne p1, v2, :cond_1d

    .line 91
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    .line 92
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 93
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v4}, Lu0/h;->c(I)V

    goto :goto_9

    :cond_1b
    add-int/lit8 p3, p2, 0x2

    .line 94
    aget-byte p3, p1, p3

    shl-int/lit8 p3, p3, 0x8

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    or-int/2addr p3, v1

    const v1, 0x8000

    and-int/2addr v1, p3

    if-eqz v1, :cond_1c

    const/high16 v1, 0x10000

    sub-int/2addr v1, p3

    mul-int/2addr v1, v2

    rsub-int p3, v1, 0x3e8

    goto :goto_8

    :cond_1c
    mul-int/2addr p3, v2

    add-int/lit16 p3, p3, 0x3e8

    .line 95
    :goto_8
    invoke-static {p3}, Lu0/d;->A3(I)V

    const/16 p3, 0x62

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x4

    .line 96
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v0

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    or-int/2addr v2, v6

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x6

    .line 97
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v0

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, p1, v6

    and-int/2addr v6, v3

    or-int/2addr v2, v6

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x8

    .line 98
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x9

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    aput p1, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    :cond_1d
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/lh;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x65

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

.method public b([B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_e

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    iget v1, p0, Lk0/lh;->f:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/lh;->f:I

    .line 5
    iput v0, p0, Lk0/lh;->g:I

    .line 6
    iput v0, p0, Lk0/lh;->h:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/lh;->e:[B

    iget v2, p0, Lk0/lh;->f:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/lh;->f:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/lh;->f:I

    .line 9
    iget p1, p0, Lk0/lh;->h:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/lh;->e:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/lh;->h:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/lh;->e:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/lh;->e:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/lh;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/lh;->h:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/lh;->g:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/lh;->g:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/lh;->h:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/lh;->f:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/lh;->g:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/lh;->e:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/lh;->h:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/lh;->h:I

    .line 23
    iget v6, p0, Lk0/lh;->f:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/lh;->h:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/lh;->h:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/lh;->e:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/lh;->e:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/lh;->g:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/lh;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/lh;->h:I

    iput v1, p0, Lk0/lh;->g:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/lh;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/lh;->g:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/lh;->h:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/lh;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/lh;->g:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/lh;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/lh;->f:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/lh;->e:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/lh;->g:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method
