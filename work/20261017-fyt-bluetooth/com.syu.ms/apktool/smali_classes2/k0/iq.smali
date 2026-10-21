.class public Lk0/iq;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static l:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Lo1/g0;

.field public final k:I


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
    iput v0, p0, Lk0/iq;->c:I

    const/16 v1, 0xa

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

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/iq;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/iq;->e:Z

    .line 5
    new-instance v1, Lk0/iq$a;

    invoke-direct {v1, p0}, Lk0/iq$a;-><init>(Lk0/iq;)V

    iput-object v1, p0, Lk0/iq;->f:Ljava/lang/Runnable;

    .line 6
    iput v0, p0, Lk0/iq;->g:I

    .line 7
    new-instance v0, Lk0/iq$b;

    invoke-direct {v0, p0}, Lk0/iq$b;-><init>(Lk0/iq;)V

    iput-object v0, p0, Lk0/iq;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/iq$c;

    invoke-direct {v0, p0}, Lk0/iq$c;-><init>(Lk0/iq;)V

    iput-object v0, p0, Lk0/iq;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/iq;->j:Lo1/g0;

    .line 10
    iput v4, p0, Lk0/iq;->k:I

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
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
        0x17
        0x5
    .end array-data

    :array_9
    .array-data 4
        0x30
        0xc
    .end array-data
.end method

.method public static synthetic a3(Lk0/iq;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/iq;->j:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3(Lk0/iq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/iq;->c3(I)V

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
    iget-object v0, p0, Lk0/iq;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/iq;->h:Ljava/lang/Runnable;

    const/4 v2, 0x1

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
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    .line 10
    iput v1, v0, Lk0/mt;->l:I

    .line 11
    iget-object v0, p0, Lk0/iq;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x29

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x30

    const/4 v7, 0x2

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x33

    const/16 v8, 0x10

    const/16 v9, 0xc

    const v10, 0xff00

    const/4 v11, 0x4

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-eq v2, v3, :cond_18

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_13

    const/4 v3, 0x5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const-string v5, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v5, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v5, v6, [I

    shr-int/lit8 v8, v2, 0x7

    and-int/2addr v8, v6

    aput v8, v5, v13

    .line 4
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v8, v2, 0x6

    and-int/2addr v8, v6

    aput v8, v5, v13

    .line 5
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v5, v6, [I

    shr-int/lit8 v8, v2, 0x6

    and-int/2addr v8, v6

    aput v8, v5, v13

    .line 6
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v8, v2, 0x7

    and-int/2addr v8, v6

    aput v8, v5, v13

    .line 7
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v5, v6, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v6

    aput v8, v5, v13

    .line 8
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v6

    aput v8, v5, v13

    .line 9
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v6

    aput v8, v5, v13

    .line 10
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v6

    aput v2, v3, v13

    .line 11
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 12
    invoke-static {v2, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, 0x3

    .line 13
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v6

    invoke-static {v3, v1, v13}, Ll0/c0;->b(III)V

    goto/16 :goto_7

    :cond_1
    add-int/lit8 v2, p2, 0x3

    .line 14
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v6

    invoke-static {v3, v1, v13}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v4, v1, v2

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x3

    .line 16
    aget-byte v8, v1, v7

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 17
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v3, p2, 0x5

    .line 18
    aget-byte v12, v1, v3

    and-int/2addr v12, v5

    if-nez v4, :cond_2

    if-nez v8, :cond_2

    if-nez v10, :cond_2

    if-nez v12, :cond_2

    .line 19
    invoke-static {v13}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 20
    :cond_2
    sget v13, Ll0/c0;->g:I

    if-ne v13, v4, :cond_3

    sget v13, Ll0/c0;->h:I

    if-ne v13, v8, :cond_3

    sget v13, Ll0/c0;->i:I

    if-ne v13, v10, :cond_3

    sget v13, Ll0/c0;->j:I

    if-eq v13, v12, :cond_4

    .line 21
    :cond_3
    sget v13, Lu0/b;->o:I

    if-nez v13, :cond_4

    .line 22
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 23
    sput v11, Ll0/c0;->k:I

    .line 24
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 25
    :cond_4
    :goto_1
    sput v4, Ll0/c0;->g:I

    .line 26
    sput v8, Ll0/c0;->h:I

    .line 27
    sput v10, Ll0/c0;->i:I

    .line 28
    sput v12, Ll0/c0;->j:I

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 30
    aget-byte v2, v1, v7

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 31
    aget-byte v2, v1, v9

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 32
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 34
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 35
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 36
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_3
    new-array v2, v6, [I

    add-int/lit8 v10, p2, 0x2

    .line 37
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v6

    aput v12, v2, v13

    const/16 v12, 0xa

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 38
    aget-byte v14, v1, v10

    shr-int/lit8 v14, v14, 0x6

    and-int/2addr v14, v6

    aput v14, v2, v13

    const/16 v14, 0xb

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 39
    aget-byte v15, v1, v10

    shr-int/2addr v15, v3

    and-int/2addr v15, v6

    aput v15, v2, v13

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v9, v6, [I

    .line 40
    aget-byte v15, v1, v10

    shr-int/2addr v15, v11

    and-int/2addr v15, v6

    aput v15, v9, v13

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 41
    aget-byte v9, v1, v10

    shr-int/2addr v9, v4

    and-int/2addr v9, v6

    aput v9, v2, v13

    const/16 v9, 0xd

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 42
    aget-byte v9, v1, v10

    shr-int/2addr v9, v6

    and-int/2addr v9, v6

    aput v9, v2, v13

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x26

    new-array v8, v6, [I

    .line 43
    aget-byte v9, v1, v10

    shr-int/2addr v9, v13

    and-int/2addr v9, v6

    aput v9, v8, v13

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x3

    .line 44
    aget-byte v10, v1, v9

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v6

    aput v10, v8, v13

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v6, [I

    .line 45
    aget-byte v10, v1, v9

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v6

    aput v10, v8, v13

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v8, v6, [I

    .line 46
    aget-byte v10, v1, v9

    shr-int/2addr v10, v3

    and-int/2addr v10, v6

    aput v10, v8, v13

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v8, v6, [I

    .line 47
    aget-byte v9, v1, v9

    and-int/lit8 v9, v9, 0xf

    aput v9, v8, v13

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v8, p2, 0x6

    .line 48
    aget-byte v9, v1, v8

    and-int/2addr v9, v6

    aput v9, v2, v13

    const/16 v9, 0x25

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 49
    aget-byte v10, v1, v2

    and-int/2addr v10, v5

    add-int/lit8 v15, p2, 0x5

    .line 50
    aget-byte v4, v1, v15

    and-int/2addr v4, v5

    const-string v11, "persist.fyt.reversetemp"

    .line 51
    invoke-static {v11, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 52
    aget-byte v4, v1, v15

    and-int/lit16 v10, v4, 0xff

    .line 53
    aget-byte v2, v1, v2

    and-int/lit16 v4, v2, 0xff

    :cond_5
    const/16 v2, 0x1b

    if-eqz v10, :cond_8

    if-eq v10, v5, :cond_7

    .line 54
    sget-object v11, Lk0/nt;->g:[I

    aget v11, v11, v9

    if-ne v11, v6, :cond_6

    new-array v11, v6, [I

    mul-int/2addr v10, v12

    aput v10, v11, v13

    .line 55
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v11, v6, [I

    mul-int/2addr v10, v3

    aput v10, v11, v13

    .line 56
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v10, v6, [I

    const/4 v11, -0x3

    aput v11, v10, v13

    .line 57
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v10, v6, [I

    const/4 v11, -0x2

    aput v11, v10, v13

    .line 58
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x1c

    if-eqz v4, :cond_b

    if-eq v4, v5, :cond_a

    .line 59
    sget-object v10, Lk0/nt;->g:[I

    aget v10, v10, v9

    if-ne v10, v6, :cond_9

    new-array v10, v6, [I

    mul-int/2addr v4, v12

    aput v4, v10, v13

    .line 60
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v10, v6, [I

    mul-int/2addr v4, v3

    aput v4, v10, v13

    .line 61
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v4, v6, [I

    const/4 v10, -0x3

    aput v10, v4, v13

    .line 62
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v4, v6, [I

    const/4 v10, -0x2

    aput v10, v4, v13

    .line 63
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x41

    new-array v4, v6, [I

    .line 64
    aget-byte v10, v1, v8

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v6

    aput v10, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v4, v6, [I

    .line 65
    aget-byte v8, v1, v8

    shr-int/2addr v8, v7

    and-int/2addr v8, v6

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    const/16 v4, 0x28

    if-eqz v2, :cond_e

    if-eq v2, v5, :cond_d

    .line 67
    sget-object v5, Lk0/nt;->g:[I

    aget v5, v5, v9

    if-ne v5, v6, :cond_c

    new-array v5, v6, [I

    mul-int/2addr v2, v12

    aput v2, v5, v13

    .line 68
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v5, v6, [I

    mul-int/2addr v2, v3

    aput v2, v5, v13

    .line 69
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    new-array v2, v6, [I

    const/4 v5, -0x3

    aput v5, v2, v13

    .line 70
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array v2, v6, [I

    const/4 v5, -0x2

    aput v5, v2, v13

    .line 71
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x30

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x9

    .line 72
    aget-byte v8, v1, v5

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v6

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v4, v6, [I

    .line 73
    aget-byte v8, v1, v5

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v6

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v4, v6, [I

    .line 74
    aget-byte v8, v1, v5

    shr-int/lit8 v3, v8, 0x5

    and-int/2addr v3, v6

    aput v3, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v6, [I

    .line 75
    aget-byte v4, v1, v5

    shr-int/2addr v4, v13

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 76
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 77
    aget-byte v5, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v5, v8

    const/4 v8, 0x3

    and-int/2addr v5, v8

    aput v5, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v6, [I

    .line 78
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v8

    aput v5, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v6, [I

    .line 79
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v6, [I

    .line 80
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_4
    move v8, v4

    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 82
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 83
    iput v2, v0, Lk0/iq;->c:I

    move v2, v13

    .line 84
    :goto_5
    iget-object v3, v0, Lk0/iq;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_10

    .line 85
    iget v4, v0, Lk0/iq;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v13

    if-ne v4, v7, :cond_f

    if-eqz v4, :cond_10

    .line 86
    iput v2, v0, Lk0/iq;->b:I

    goto :goto_6

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    and-int/2addr v1, v5

    if-ne v1, v6, :cond_11

    .line 87
    array-length v1, v3

    if-ge v2, v1, :cond_1e

    .line 88
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_11
    if-nez v1, :cond_1e

    .line 89
    iget v1, v0, Lk0/iq;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_12

    if-eq v1, v5, :cond_12

    .line 90
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 91
    :cond_12
    iput v5, v0, Lk0/iq;->b:I

    goto/16 :goto_7

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 92
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    if-eq v2, v6, :cond_16

    const/4 v3, 0x3

    if-eq v2, v3, :cond_15

    if-eq v2, v12, :cond_14

    goto/16 :goto_7

    :cond_14
    add-int/lit8 v2, p2, 0x3

    .line 93
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 94
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 95
    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    .line 96
    iput-boolean v6, v0, Lk0/iq;->e:Z

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v2, p2, 0x4

    .line 97
    aget-byte v2, v1, v2

    shl-int/2addr v2, v12

    and-int/2addr v2, v10

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v6, [I

    aput v1, v3, v13

    .line 98
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 99
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v7, [I

    aput v6, v4, v13

    aput v1, v4, v6

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_16
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 100
    invoke-static {v2, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 101
    aget-byte v4, v1, v3

    shr-int/lit8 v2, v4, 0x3

    and-int/2addr v2, v6

    aget-byte v1, v1, v3

    const/4 v3, 0x4

    shr-int/2addr v1, v3

    and-int/2addr v1, v6

    invoke-static {v2, v1, v13}, Ll0/c0;->b(III)V

    goto/16 :goto_7

    :cond_17
    const/4 v2, 0x3

    const/4 v3, 0x4

    add-int/lit8 v4, p2, 0x3

    .line 102
    aget-byte v5, v1, v4

    shr-int/lit8 v2, v5, 0x3

    and-int/2addr v2, v6

    aget-byte v1, v1, v4

    shr-int/2addr v1, v3

    and-int/2addr v1, v6

    invoke-static {v2, v1, v13}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 103
    aget-byte v2, v1, v2

    if-eq v2, v6, :cond_1b

    if-eq v2, v7, :cond_1a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_19

    goto/16 :goto_7

    :cond_19
    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 104
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 105
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 106
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 107
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 108
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 109
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 110
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 111
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xc

    .line 112
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xd

    .line 113
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v7, p2, 0xe

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xf

    .line 114
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x10

    .line 115
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x11

    .line 116
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x12

    .line 117
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x13

    .line 118
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v7, p2, 0x14

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x15

    .line 119
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x16

    .line 120
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x17

    .line 121
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x18

    .line 122
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x19

    .line 123
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v7, p2, 0x1a

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x1b

    .line 124
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x1c

    .line 125
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x1d

    .line 126
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x1e

    .line 127
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x1f

    .line 128
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v6, p2, 0x20

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_1a
    const/16 v2, 0x6b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 129
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 130
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 131
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 132
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v7, p2, 0xa

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 133
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v6, p2, 0xc

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_1b
    const/16 v2, 0x62

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 134
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 135
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xd

    .line 136
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v10

    add-int/lit8 v9, p2, 0xe

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xf

    .line 137
    aget-byte v9, v1, v4

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v6

    aput v9, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    .line 138
    aget-byte v9, v1, v4

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v6

    aput v9, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    .line 139
    aget-byte v9, v1, v4

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    const/4 v10, 0x3

    and-int/2addr v9, v10

    aput v9, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    .line 140
    aget-byte v9, v1, v4

    shr-int/lit8 v7, v9, 0x2

    and-int/2addr v7, v10

    aput v7, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    .line 141
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v10

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x10

    .line 142
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 143
    :cond_1c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_7

    .line 144
    :cond_1d
    iget-boolean v2, v0, Lk0/iq;->e:Z

    if-nez v2, :cond_1e

    add-int/lit8 v2, p2, 0x2

    .line 145
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    const/16 v3, 0x1200

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    :cond_1e
    :goto_7
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
    iget-object v0, p0, Lk0/iq;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/iq;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/iq;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/iq;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x89

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lez p1, :cond_3

    .line 2
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/iq;->c3(I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0xc6

    aput v0, p1, v4

    aput v2, p1, v2

    .line 3
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x90

    aput v0, p1, v4

    aput v2, p1, v2

    .line 4
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c3(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/iq;->l:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez p1, :cond_2

    new-array p1, v2, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    new-array p1, v2, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    new-array p1, v2, [I

    .line 4
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    new-array p1, v2, [I

    .line 5
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_1
    const/16 p1, 0x3f5

    new-array v1, v3, [I

    .line 6
    sget v2, Lk0/iq;->l:I

    aput v2, v1, v0

    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 7
    iget-object p1, p0, Lk0/iq;->j:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/iq;->l:I

    if-eq p1, v0, :cond_6

    .line 8
    iget-object p1, p0, Lk0/iq;->j:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_6
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x3
    .end array-data
.end method
