.class public Lk0/u1;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:J

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/u1;->c:I

    const/16 v1, 0x12

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

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/u1;->d:[[I

    .line 4
    iput v0, p0, Lk0/u1;->e:I

    .line 5
    iput v0, p0, Lk0/u1;->f:I

    .line 6
    new-instance v0, Lk0/u1$a;

    invoke-direct {v0, p0}, Lk0/u1$a;-><init>(Lk0/u1;)V

    iput-object v0, p0, Lk0/u1;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/u1$b;

    invoke-direct {v0, p0}, Lk0/u1$b;-><init>(Lk0/u1;)V

    iput-object v0, p0, Lk0/u1;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/u1$c;

    invoke-direct {v0, p0}, Lk0/u1$c;-><init>(Lk0/u1;)V

    iput-object v0, p0, Lk0/u1;->i:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lk0/u1;->j:J

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lk0/u1;->k:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x15
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x9
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x40
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x26
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xb
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_e
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x18
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_11
    .array-data 4
        0x31
        0x1a
    .end array-data
.end method

.method public static synthetic a3(Lk0/u1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/u1;->j:J

    return-wide v0
.end method

.method public static synthetic b3(Lk0/u1;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/u1;->j:J

    return-wide p1
.end method

.method public static synthetic c3(Lk0/u1;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/u1;->k:I

    return p0
.end method

.method public static synthetic d3(Lk0/u1;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/u1;->k:I

    return p1
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->i:I

    .line 2
    sget v2, Lk0/nt;->a:I

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    const/4 v2, 0x0

    .line 3
    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 4
    :sswitch_0
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 5
    :sswitch_1
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v4, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 7
    :sswitch_2
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    :goto_0
    iput v1, v0, Lk0/mt;->e:I

    .line 9
    iput v4, v0, Lk0/mt;->f:I

    .line 10
    iput v4, v0, Lk0/mt;->g:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/u1;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/u1;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    iget-object v0, p0, Lk0/u1;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/u1;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_2
        0x3004f -> :sswitch_2
        0x8004f -> :sswitch_1
        0x9004f -> :sswitch_0
        0xa004f -> :sswitch_1
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 12

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    const/4 v1, 0x2

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v0, :cond_1b

    const/16 v5, 0x21

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq p3, v5, :cond_c

    const/16 v0, 0x27

    if-eq p3, v0, :cond_8

    const/16 v0, 0x29

    const/4 v5, 0x3

    if-eq p3, v0, :cond_7

    const/16 v0, 0x40

    if-eq p3, v0, :cond_5

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/lit8 v0, p2, 0x3

    .line 3
    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    add-int/lit8 v1, p2, 0x4

    .line 4
    aget-byte v5, p1, v1

    and-int/2addr v5, v2

    add-int/lit8 v6, p2, 0x5

    .line 5
    aget-byte v7, p1, v6

    and-int/2addr v7, v2

    add-int/lit8 v8, p2, 0x6

    .line 6
    aget-byte v9, p1, v8

    and-int/2addr v9, v2

    add-int/lit8 p2, p2, 0x7

    .line 7
    aget-byte v10, p1, p2

    and-int/2addr v10, v2

    .line 8
    sget v11, Ll0/c0;->g:I

    if-ne v11, v5, :cond_0

    sget v11, Ll0/c0;->h:I

    if-ne v11, v5, :cond_0

    sget v11, Ll0/c0;->i:I

    if-ne v11, v7, :cond_0

    sget v11, Ll0/c0;->j:I

    if-eq v11, v10, :cond_4

    .line 9
    :cond_0
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_4

    if-nez p3, :cond_1

    if-lt v5, v0, :cond_2

    if-lt v7, v0, :cond_2

    if-lt v9, v0, :cond_2

    if-lt v10, v0, :cond_2

    goto :goto_0

    :cond_1
    if-lt v5, v2, :cond_2

    if-lt v7, v2, :cond_2

    if-lt v9, v2, :cond_2

    if-lt v10, v2, :cond_2

    :goto_0
    move v3, v4

    :cond_2
    if-eqz v3, :cond_3

    .line 10
    sget v3, Lu0/b;->p:I

    if-ne v3, v4, :cond_4

    .line 11
    sput v4, Ll0/c0;->k:I

    .line 12
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v4}, Lu0/d;->C2(I)V

    .line 14
    :cond_4
    :goto_1
    sput v5, Ll0/c0;->g:I

    .line 15
    sput v7, Ll0/c0;->h:I

    .line 16
    sput v9, Ll0/c0;->i:I

    .line 17
    sput v10, Ll0/c0;->j:I

    .line 18
    aget-byte v1, p1, v1

    and-int/2addr p3, v2

    and-int/2addr v0, v2

    invoke-static {v1, p3, v0}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    .line 19
    aget-byte v1, p1, v6

    invoke-static {v1, p3, v0}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    .line 20
    aget-byte v1, p1, v8

    invoke-static {v1, p3, v0}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    .line 21
    aget-byte p1, p1, p2

    invoke-static {p1, p3, v0}, Ll0/e0;->o(III)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    .line 22
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1e

    add-int/lit8 p3, p2, 0x2

    .line 23
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 24
    aget-byte v0, p1, v0

    and-int/2addr p3, v2

    .line 25
    iput p3, p0, Lk0/u1;->e:I

    and-int/2addr v0, v2

    .line 26
    iput v0, p0, Lk0/u1;->f:I

    add-int/lit8 v1, p2, 0x4

    .line 27
    aget-byte v1, p1, v1

    invoke-static {v1, p3, v0}, Ll0/e0;->o(III)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 28
    aget-byte p3, p1, p3

    iget v0, p0, Lk0/u1;->e:I

    iget v1, p0, Lk0/u1;->f:I

    invoke-static {p3, v0, v1}, Ll0/e0;->o(III)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 29
    aget-byte p3, p1, p3

    iget v0, p0, Lk0/u1;->e:I

    iget v1, p0, Lk0/u1;->f:I

    invoke-static {p3, v0, v1}, Ll0/e0;->o(III)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0x7

    .line 30
    aget-byte p1, p1, p2

    iget p2, p0, Lk0/u1;->e:I

    iget p3, p0, Lk0/u1;->f:I

    invoke-static {p1, p2, p3}, Ll0/e0;->o(III)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    :pswitch_2
    const/16 p3, 0x67

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 31
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 32
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 33
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x5

    .line 34
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x6

    .line 35
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v4, [I

    add-int/lit8 p2, p2, 0x7

    .line 36
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v4, [I

    .line 37
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v4

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 38
    aget-byte v0, p1, p3

    and-int/2addr v0, v2

    const-string v6, "persist.syu.reversefrontdoor"

    .line 39
    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    new-array v6, v4, [I

    shr-int/lit8 v8, v0, 0x7

    and-int/2addr v8, v4

    aput v8, v6, v3

    .line 40
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v4, [I

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v4

    aput v8, v6, v3

    .line 41
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v6, v4, [I

    shr-int/lit8 v8, v0, 0x7

    and-int/2addr v8, v4

    aput v8, v6, v3

    .line 42
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v4, [I

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v4

    aput v8, v6, v3

    .line 43
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v6, v4, [I

    shr-int/lit8 v8, v0, 0x5

    and-int/2addr v8, v4

    aput v8, v6, v3

    .line 44
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    shr-int/lit8 v6, v0, 0x4

    and-int/2addr v6, v4

    aput v6, v5, v3

    const/4 v6, 0x4

    .line 45
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    shr-int/lit8 v6, v0, 0x3

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 46
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    shr-int/2addr v0, v1

    and-int/2addr v0, v4

    aput v0, v5, v3

    .line 47
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v1, v4, [I

    .line 48
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    aput p3, v1, v3

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x62

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 49
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 50
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v5, 0xff00

    and-int/2addr v1, v5

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, p1, v6

    and-int/2addr v6, v2

    or-int/2addr v1, v6

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x6

    .line 51
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v5

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, p1, v6

    and-int/2addr v6, v2

    or-int/2addr v1, v6

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x8

    .line 52
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v5

    add-int/lit8 p2, p2, 0x9

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 53
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0x1e40

    const/16 v0, 0x1630

    invoke-static {p3, p1, p2, v3, v0}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_c

    :cond_8
    add-int/2addr p2, v1

    .line 54
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    if-eqz p1, :cond_b

    if-ne p1, v2, :cond_9

    goto :goto_4

    :cond_9
    const-string p2, "persist.fyt.temperature"

    .line 55
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_a

    mul-int/2addr p1, v7

    add-int/lit16 p1, p1, 0x258

    goto :goto_3

    :cond_a
    mul-int/lit8 p1, p1, 0x9

    add-int/lit16 p1, p1, 0x258

    const/high16 p2, 0x10000000

    or-int/2addr p1, p2

    and-int/2addr p1, v6

    .line 56
    :goto_3
    invoke-static {p1}, Lu0/d;->B3(I)V

    goto/16 :goto_c

    .line 57
    :cond_b
    :goto_4
    invoke-static {v3}, Lu0/d;->A3(I)V

    goto/16 :goto_c

    :cond_c
    add-int/lit8 p3, p2, 0x2

    .line 58
    aget-byte p3, p1, p3

    new-array v1, v4, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v4

    aput v5, v1, v3

    const/16 v5, 0xa

    .line 59
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v8, v4, [I

    shr-int/lit8 v9, p3, 0x6

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 60
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v8, v4, [I

    shr-int/lit8 v9, p3, 0x5

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 61
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v8, v4, [I

    shr-int/lit8 v9, p3, 0x4

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 62
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v8, v4, [I

    shr-int/lit8 v9, p3, 0x3

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 63
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v8, v4, [I

    shr-int/lit8 v9, p3, 0x2

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 64
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v8, v4, [I

    shr-int/lit8 v9, p3, 0x1

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 65
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v8, v4, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v4

    aput p3, v8, v3

    .line 66
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 67
    aget-byte p3, p1, p3

    packed-switch p3, :pswitch_data_1

    move p3, v3

    :goto_5
    move v1, p3

    :goto_6
    move v8, v1

    goto :goto_7

    :pswitch_3
    move p3, v4

    goto :goto_5

    :pswitch_4
    move p3, v3

    move v1, v4

    goto :goto_6

    :pswitch_5
    move p3, v3

    move v1, p3

    move v8, v4

    goto :goto_7

    :pswitch_6
    move v1, v3

    move p3, v4

    move v8, p3

    goto :goto_7

    :pswitch_7
    move v1, v3

    move v8, v1

    move p3, v4

    goto :goto_7

    :pswitch_8
    move v8, v3

    move p3, v4

    move v1, p3

    goto :goto_7

    :pswitch_9
    move p3, v3

    move v8, p3

    move v1, v4

    :goto_7
    const/16 v9, 0x14

    new-array v10, v4, [I

    aput p3, v10, v3

    .line 68
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v9, v4, [I

    aput v1, v9, v3

    .line 69
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    aput v8, p3, v3

    .line 70
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 71
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x25

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x8

    .line 72
    aget-byte v8, p1, v1

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v4

    aput v8, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 73
    aget-byte v0, p1, p3

    and-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x6

    .line 74
    aget-byte v8, p1, p2

    and-int/2addr v8, v2

    const-string v9, "persist.fyt.reversetemp"

    .line 75
    invoke-static {v9, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 76
    aget-byte p2, p1, p2

    and-int/lit16 v0, p2, 0xff

    .line 77
    aget-byte p2, p1, p3

    and-int/lit16 v8, p2, 0xff

    .line 78
    :cond_d
    aget-byte p1, p1, v1

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v4

    const/4 p2, -0x3

    const/4 p3, -0x2

    const/16 v1, 0x1c

    const/16 v9, 0x1b

    if-ne p1, v4, :cond_14

    const/16 p1, 0x1e

    if-eqz v0, :cond_10

    if-eq v0, p1, :cond_f

    if-eq v0, v2, :cond_e

    new-array v7, v4, [I

    mul-int/2addr v0, v5

    add-int/lit16 v0, v0, 0x258

    aput v0, v7, v3

    .line 79
    invoke-static {v9, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_e
    new-array v0, v4, [I

    aput v6, v0, v3

    .line 80
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_f
    new-array v0, v4, [I

    aput p2, v0, v3

    .line 81
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_10
    new-array v0, v4, [I

    aput p3, v0, v3

    .line 82
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    :goto_8
    if-eqz v8, :cond_13

    if-eq v8, p1, :cond_12

    if-eq v8, v2, :cond_11

    new-array p1, v4, [I

    mul-int/2addr v8, v5

    add-int/lit16 v8, v8, 0x258

    aput v8, p1, v3

    .line 83
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_11
    new-array p1, v4, [I

    aput v6, p1, v3

    .line 84
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_12
    new-array p1, v4, [I

    aput p2, p1, v3

    .line 85
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_13
    new-array p1, v4, [I

    aput p3, p1, v3

    .line 86
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_14
    const/16 p1, 0x22

    if-eqz v0, :cond_17

    if-eq v0, p1, :cond_16

    if-eq v0, v2, :cond_15

    new-array v5, v4, [I

    mul-int/2addr v0, v7

    add-int/lit16 v0, v0, 0x96

    aput v0, v5, v3

    .line 87
    invoke-static {v9, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_15
    new-array v0, v4, [I

    aput v6, v0, v3

    .line 88
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_16
    new-array v0, v4, [I

    aput p2, v0, v3

    .line 89
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_17
    new-array v0, v4, [I

    aput p3, v0, v3

    .line 90
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    :goto_9
    if-eqz v8, :cond_1a

    if-eq v8, p1, :cond_19

    if-eq v8, v2, :cond_18

    new-array p1, v4, [I

    mul-int/2addr v8, v7

    add-int/lit16 v8, v8, 0x96

    aput v8, p1, v3

    .line 91
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_18
    new-array p1, v4, [I

    aput v6, p1, v3

    .line 92
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_19
    new-array p1, v4, [I

    aput p2, p1, v3

    .line 93
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1a
    new-array p1, v4, [I

    aput p3, p1, v3

    .line 94
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    .line 95
    :cond_1b
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1e

    add-int/2addr p2, v1

    .line 96
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    .line 97
    iput p1, p0, Lk0/u1;->c:I

    move p2, v3

    .line 98
    :goto_a
    iget-object p3, p0, Lk0/u1;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_1d

    .line 99
    iget v0, p0, Lk0/u1;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_1c

    if-eqz v0, :cond_1d

    .line 100
    iput p2, p0, Lk0/u1;->b:I

    goto :goto_b

    :cond_1c
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_1d
    :goto_b
    if-eqz p1, :cond_1e

    .line 101
    iget p1, p0, Lk0/u1;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_1e

    .line 102
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 103
    iget-object p1, p0, Lk0/u1;->d:[[I

    iget p2, p0, Lk0/u1;->b:I

    aget-object p1, p1, p2

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    :cond_1e
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/u1;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/u1;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/u1;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/u1;->g:Ljava/lang/Runnable;

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
    .locals 6

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x4

    if-eqz p1, :cond_8

    if-eq p1, p3, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/16 v2, 0xe3

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eq p1, v3, :cond_3

    const/4 v5, 0x6

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    const-wide/16 p1, 0xc8

    .line 2
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v4, [I

    aput v2, p1, p4

    aput v4, p1, p3

    aput v5, p1, v1

    .line 4
    aget p4, p2, p4

    aput p4, p1, v3

    aget p2, p2, p3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v4, [I

    aput v2, p1, p4

    aput v4, p1, p3

    aput v5, p1, v1

    .line 5
    aget p4, p2, p4

    aput p4, p1, v3

    aget p2, p2, p3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v4, [I

    aput v2, p1, p4

    aput v4, p1, p3

    const/16 v2, 0xe0

    aput v2, p1, v1

    .line 6
    aget p4, p2, p4

    aput p4, p1, v3

    aget p2, p2, p3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_4
    aget p1, p2, p4

    if-ne p1, p3, :cond_5

    new-array p1, v0, [I

    .line 8
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 9
    :cond_5
    aget p1, p2, p4

    if-nez p1, :cond_a

    new-array p1, v0, [I

    .line 10
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_6
    aget p1, p2, p4

    if-ne p1, p3, :cond_7

    new-array p1, v0, [I

    .line 12
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :cond_7
    aget p1, p2, p4

    if-nez p1, :cond_a

    new-array p1, v0, [I

    .line 14
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 15
    :cond_8
    aget p1, p2, p4

    if-ne p1, p3, :cond_9

    new-array p1, v0, [I

    .line 16
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 17
    :cond_9
    aget p1, p2, p4

    if-nez p1, :cond_a

    new-array p1, v0, [I

    .line 18
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_a
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x4
        0x5
        0x80
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x5
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x6
        0x80
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        0x6
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x4
        0x6
        0x40
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x4
        0x6
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x4
        0x6
        0x20
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x4
        0x6
        0x0
    .end array-data
.end method
