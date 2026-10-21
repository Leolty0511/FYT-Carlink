.class public Lk0/jn;
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

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/jn;->c:I

    const/16 v1, 0x13

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

    new-array v2, v2, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/jn;->d:[[I

    .line 4
    iput v0, p0, Lk0/jn;->e:I

    .line 5
    new-instance v0, Lk0/jn$a;

    invoke-direct {v0, p0}, Lk0/jn$a;-><init>(Lk0/jn;)V

    iput-object v0, p0, Lk0/jn;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/jn$b;

    invoke-direct {v0, p0}, Lk0/jn$b;-><init>(Lk0/jn;)V

    iput-object v0, p0, Lk0/jn;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/jn$c;

    invoke-direct {v0, p0}, Lk0/jn$c;-><init>(Lk0/jn;)V

    iput-object v0, p0, Lk0/jn;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/jn$d;

    invoke-direct {v0, p0}, Lk0/jn$d;-><init>(Lk0/jn;)V

    iput-object v0, p0, Lk0/jn;->i:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x6
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x18
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x36
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x5
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x37
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x3e
    .end array-data

    :array_12
    .array-data 4
        0x14
        0xd
    .end array-data
.end method

.method public static a3()V
    .locals 10

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x6

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v5, v2, :cond_3

    if-eq v5, v9, :cond_2

    if-eq v5, v7, :cond_1

    if-eq v5, v0, :cond_0

    const/16 v4, 0xa

    if-eq v5, v4, :cond_0

    const/16 v4, 0xd

    aput v4, v1, v9

    aput v3, v1, v8

    goto :goto_1

    :cond_0
    aput v0, v1, v9

    aput v9, v1, v8

    .line 2
    sget v4, Lu0/b;->r3:I

    aput v4, v1, v6

    goto :goto_1

    :cond_1
    const/16 v4, 0xc

    aput v4, v1, v9

    aput v3, v1, v8

    goto :goto_1

    :cond_2
    aput v7, v1, v9

    aput v3, v1, v8

    goto :goto_1

    :cond_3
    aput v2, v1, v9

    aput v2, v1, v8

    .line 3
    sget v5, Lw0/d;->h:I

    const/high16 v8, 0x10000

    if-lt v5, v8, :cond_4

    const v8, 0x10002

    if-gt v5, v8, :cond_4

    aput v2, v1, v6

    goto :goto_0

    :cond_4
    const/16 v5, 0x10

    aput v5, v1, v6

    .line 4
    :goto_0
    sget v5, Lw0/d;->i:I

    and-int/lit16 v6, v5, 0xff

    aput v6, v1, v7

    shr-int/2addr v5, v0

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    .line 5
    :goto_1
    sget v4, Ly0/f;->i:I

    const/4 v5, 0x7

    if-eq v4, v2, :cond_6

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    aput v2, v1, v5

    goto :goto_3

    :cond_6
    :goto_2
    aput v3, v1, v5

    :goto_3
    const/16 v2, 0x9

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_4
    if-ge v3, v0, :cond_7

    add-int/lit8 v4, v3, 0x1

    .line 6
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_4

    .line 7
    :cond_7
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
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
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/jn;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 10
    iget-object v0, p0, Lk0/jn;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/jn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 13
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 14
    iget-object v0, p0, Lk0/jn;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/jn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 16
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1501c8 -> :sswitch_1
        0x5401c8 -> :sswitch_1
        0x5501c8 -> :sswitch_1
        0xe901c7 -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x27

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/16 v4, 0xff

    const/4 v5, 0x0

    if-eq v0, v1, :cond_14

    const/16 v1, 0x29

    const/4 v6, 0x3

    if-eq v0, v1, :cond_13

    const/16 v1, 0x30

    if-eq v0, v1, :cond_12

    const/16 p3, 0x41

    const/16 v1, 0xf

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eq v0, p3, :cond_11

    const/16 p3, 0x44

    if-eq v0, p3, :cond_10

    const/16 v9, 0x7d

    const/16 v10, 0xb

    if-eq v0, v9, :cond_e

    const/16 v9, 0xc

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    add-int/2addr p2, v3

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v8

    aput p3, p2, v5

    .line 4
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v8

    aput p3, p2, v5

    .line 5
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v8

    aput p3, p2, v5

    .line 6
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v8

    aput p3, p2, v5

    .line 7
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v8

    aput p3, p2, v5

    .line 8
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v8

    aput p3, p2, v5

    .line 9
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v8

    aput p3, p2, v5

    .line 10
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v8

    aput p1, p2, v5

    .line 11
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    add-int/lit8 v1, p2, 0x3

    .line 13
    aget-byte v3, p1, v1

    and-int/2addr v3, v4

    add-int/lit8 v6, p2, 0x4

    .line 14
    aget-byte v9, p1, v6

    and-int/2addr v9, v4

    add-int/2addr p2, v2

    .line 15
    aget-byte v2, p1, p2

    and-int/2addr v2, v4

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    if-nez v9, :cond_1

    if-nez v2, :cond_1

    .line 16
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v5, Ll0/c0;->g:I

    if-ne v5, v0, :cond_2

    sget v5, Ll0/c0;->h:I

    if-ne v5, v3, :cond_2

    sget v5, Ll0/c0;->i:I

    if-ne v5, v9, :cond_2

    sget v5, Ll0/c0;->j:I

    if-eq v5, v2, :cond_3

    .line 18
    :cond_2
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_3

    .line 19
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 20
    sput v7, Ll0/c0;->k:I

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

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 27
    aget-byte p3, p1, v1

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 28
    aget-byte p3, p1, v6

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 29
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_5

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v2

    .line 33
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_5

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 34
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    add-int/lit8 v3, p2, 0x3

    .line 35
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    const/16 v6, 0xa

    new-array v7, v8, [I

    shr-int/lit8 v11, v0, 0x7

    and-int/2addr v11, v8

    aput v11, v7, v5

    .line 36
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/lit8 v7, v0, 0x6

    and-int/2addr v7, v8

    aput v7, v6, v5

    .line 37
    invoke-static {v10, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/lit8 v7, v0, 0x5

    and-int/2addr v7, v8

    aput v7, v6, v5

    .line 38
    invoke-static {v9, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/lit8 v7, v0, 0x4

    and-int/2addr v7, v8

    aput v7, v6, v5

    .line 39
    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    new-array p3, v8, [I

    shr-int/lit8 v6, v0, 0x1

    and-int/2addr v6, v8

    aput v6, p3, v5

    .line 40
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v6, v8, [I

    and-int/2addr v0, v8

    aput v0, v6, v5

    .line 41
    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v8, [I

    shr-int/lit8 v6, v3, 0x7

    and-int/2addr v6, v8

    aput v6, v0, v5

    .line 42
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v8, [I

    shr-int/lit8 v6, v3, 0x6

    and-int/2addr v6, v8

    aput v6, v0, v5

    .line 43
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v8, [I

    shr-int/lit8 v6, v3, 0x5

    and-int/2addr v6, v8

    aput v6, v0, v5

    .line 44
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v8, [I

    and-int/2addr v1, v3

    aput v1, v0, v5

    .line 45
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 46
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    add-int/2addr p2, v2

    .line 47
    aget-byte v1, p1, p2

    and-int/2addr v1, v4

    const-string v2, "persist.fyt.reversetemp"

    .line 48
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    aget-byte p2, p1, p2

    and-int/lit16 v0, p2, 0xff

    .line 50
    aget-byte p1, p1, p3

    and-int/lit16 v1, p1, 0xff

    :cond_4
    const/4 p1, -0x3

    const/4 p2, -0x2

    const/16 p3, 0x1f

    const/16 v2, 0x1b

    if-nez v0, :cond_5

    new-array v0, v8, [I

    aput p2, v0, v5

    .line 51
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    if-ne v0, p3, :cond_6

    new-array v0, v8, [I

    aput p1, v0, v5

    .line 52
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v3, v8, [I

    aput v0, v3, v5

    .line 53
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v0, 0x1c

    if-nez v1, :cond_7

    new-array p1, v8, [I

    aput p2, p1, v5

    .line 54
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_7
    if-ne v1, p3, :cond_8

    new-array p2, v8, [I

    aput p1, p2, v5

    .line 55
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_8
    new-array p1, v8, [I

    aput v1, p1, v5

    .line 56
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_4
    add-int/lit8 p3, p2, 0x2

    .line 57
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 58
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 59
    iput p2, p0, Lk0/jn;->c:I

    move p2, v5

    .line 60
    :goto_3
    iget-object p3, p0, Lk0/jn;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_a

    .line 61
    iget v0, p0, Lk0/jn;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v5

    if-ne v0, v1, :cond_9

    if-eqz v0, :cond_a

    .line 62
    iput p2, p0, Lk0/jn;->b:I

    goto :goto_4

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 63
    :cond_a
    :goto_4
    iget v0, p0, Lk0/jn;->c:I

    if-eq v0, v2, :cond_d

    and-int/2addr p1, v4

    if-ne p1, v8, :cond_b

    .line 64
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 65
    aget-object p1, p3, p2

    aget p1, p1, v8

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_b
    if-nez p1, :cond_16

    .line 66
    iget p1, p0, Lk0/jn;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_c

    if-eq p1, v4, :cond_c

    .line 67
    aget-object p1, p3, p1

    aget p1, p1, v8

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    .line 68
    :cond_c
    iput v4, p0, Lk0/jn;->b:I

    goto/16 :goto_5

    :cond_d
    and-int/2addr p1, v4

    if-ne p1, v8, :cond_16

    .line 69
    sget p1, Lh0/c;->E:I

    .line 70
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    .line 71
    invoke-static {v9, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_e
    add-int/lit8 p3, p2, 0x2

    .line 72
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    if-eq p3, v8, :cond_f

    goto/16 :goto_5

    :cond_f
    add-int/2addr p2, v6

    .line 73
    aget-byte p3, p1, p2

    shr-int/2addr p3, v6

    and-int/2addr p3, v8

    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v8

    invoke-static {p3, v0, v5}, Ll0/c0;->a(III)V

    .line 74
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v3, [I

    aput v10, v1, v5

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v1, v8

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const/16 p3, 0x69

    new-array v0, v8, [I

    add-int/lit8 v1, p2, 0x2

    .line 75
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr p2, v6

    aget-byte v2, p1, p2

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v8, [I

    .line 76
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_11
    const/16 p3, 0x62

    new-array v0, v8, [I

    add-int/lit8 v9, p2, 0x2

    .line 77
    aget-byte v10, p1, v9

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v8

    aput v10, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v8, [I

    .line 78
    aget-byte v10, p1, v9

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v8

    aput v10, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v8, [I

    .line 79
    aget-byte v10, p1, v9

    shr-int/lit8 v2, v10, 0x5

    and-int/2addr v2, v8

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v8, [I

    .line 80
    aget-byte v2, p1, v9

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v8, [I

    .line 81
    aget-byte v2, p1, v9

    shr-int/2addr v2, v6

    and-int/2addr v2, v8

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v8, [I

    .line 82
    aget-byte v2, p1, v9

    shr-int/2addr v2, v3

    and-int/2addr v2, v8

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v8, [I

    .line 83
    aget-byte v2, p1, v9

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v8, [I

    .line 84
    aget-byte v2, p1, v9

    shr-int/2addr v2, v5

    and-int/2addr v2, v8

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v8, [I

    add-int/lit8 v2, p2, 0x3

    .line 85
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v8, [I

    add-int/lit8 v2, p2, 0x4

    .line 86
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v0, v8, [I

    add-int/lit8 v2, p2, 0x5

    .line 87
    aget-byte v3, p1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v8

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v0, v8, [I

    .line 88
    aget-byte v3, p1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v6

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v0, v8, [I

    .line 89
    aget-byte v2, p1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v8

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v0, v8, [I

    add-int/lit8 v2, p2, 0x6

    .line 90
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v0, v8, [I

    add-int/lit8 v2, p2, 0x7

    .line 91
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v0, v8, [I

    add-int/lit8 v2, p2, 0x8

    .line 92
    aget-byte v3, p1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x74

    new-array v0, v8, [I

    .line 93
    aget-byte v3, p1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v8

    aput v3, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x75

    new-array v0, v8, [I

    .line 94
    aget-byte v2, p1, v2

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0x7

    aput v2, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x76

    new-array v0, v8, [I

    add-int/lit8 p2, p2, 0x9

    .line 95
    aget-byte v2, p1, p2

    shr-int/2addr v2, v7

    and-int/2addr v1, v2

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x77

    new-array v0, v8, [I

    .line 96
    aget-byte v1, p1, p2

    shr-int/2addr v1, v8

    and-int/lit8 v1, v1, 0x7

    aput v1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x78

    new-array v0, v8, [I

    .line 97
    aget-byte p1, p1, p2

    shr-int/2addr p1, v5

    and-int/2addr p1, v8

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 98
    :cond_12
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    add-int/lit8 p3, p2, 0x2

    .line 99
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    aget-byte p1, p1, p2

    const p2, 0x8000

    const/16 v0, 0x229c

    invoke-static {p3, p1, p2, v5, v0}, Lk0/qt;->m(IIIZI)V

    goto :goto_5

    :cond_14
    add-int/2addr p2, v3

    .line 100
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_15

    .line 101
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto :goto_5

    :cond_15
    mul-int/2addr p1, v2

    add-int/lit16 p1, p1, 0x258

    .line 102
    invoke-static {p1}, Lu0/d;->A3(I)V

    :cond_16
    :goto_5
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

    iget-object v1, p0, Lk0/jn;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/jn;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/jn;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/jn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x79

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

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, -0x3a

    aput p3, p1, v4

    aput v3, p1, v3

    .line 1
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, -0x70

    aput p3, p1, v4

    aput v3, p1, v3

    .line 2
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p3, p1, v2

    const/16 p3, -0x39

    aput p3, p1, v4

    const/4 p3, 0x6

    aput p3, p1, v3

    .line 3
    aget v2, p2, v2

    aput v2, p1, v1

    aget v2, p2, v4

    aput v2, p1, v0

    aget v2, p2, v3

    aput v2, p1, p4

    aget v1, p2, v1

    aput v1, p1, p3

    const/4 p3, 0x7

    aget v0, p2, v0

    aput v0, p1, p3

    const/16 p3, 0x8

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
