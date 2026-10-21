.class public Lk0/g1;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static j:I


# instance fields
.field public final b:[I

.field public c:Lo1/g0;

.field public final d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lk0/g1;->b:[I

    .line 3
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/g1;->c:Lo1/g0;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lk0/g1;->d:I

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lk0/g1;->e:I

    const/16 v3, 0xff

    .line 6
    iput v3, p0, Lk0/g1;->g:I

    const/16 v3, 0xd

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 7
    fill-array-data v5, :array_1

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v3, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v3, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x3

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x4

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    const/4 v2, 0x5

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    const/4 v2, 0x6

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    const/4 v2, 0x7

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_9

    const/16 v2, 0x8

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_a

    const/16 v2, 0x9

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_b

    const/16 v2, 0xa

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_c

    const/16 v2, 0xb

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_d

    aput-object v1, v3, v0

    iput-object v3, p0, Lk0/g1;->h:[[I

    .line 8
    new-instance v0, Lk0/g1$a;

    invoke-direct {v0, p0}, Lk0/g1$a;-><init>(Lk0/g1;)V

    iput-object v0, p0, Lk0/g1;->i:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x258
        0x64
        0x78
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_7
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x20
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x21
    .end array-data

    :array_a
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_b
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_c
    .array-data 4
        0xc
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x39
        0xc
    .end array-data
.end method

.method public static a3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
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
    iget-object v0, p0, Lk0/g1;->c:Lo1/g0;

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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->h:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/g1;->c:Lo1/g0;

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/g1;->b3(I)V

    .line 8
    iget-object v0, p0, Lk0/g1;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v3, Ll0/h0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v3, Ll0/h0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x18

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_23

    const/16 v3, -0x10

    const/4 v8, 0x2

    if-eq v2, v3, :cond_22

    const/16 v3, 0x31

    const/16 v9, 0x41

    const/16 v10, 0xc

    const/16 v11, 0xa

    const/16 v12, 0x10

    const/4 v13, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x4

    if-eq v2, v3, :cond_10

    if-eq v2, v9, :cond_e

    const/16 v3, 0x11

    if-eq v2, v3, :cond_6

    const/16 v3, 0x12

    if-eq v2, v3, :cond_4

    const/16 v3, 0x16

    if-eq v2, v3, :cond_1

    const/16 v3, 0x17

    if-eq v2, v3, :cond_0

    goto/16 :goto_e

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x6e

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 3
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x6f

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 5
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 6
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x8

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x9

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x70

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 7
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xa

    .line 8
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0xb

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x71

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 9
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 10
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/2addr v2, v12

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xe

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x72

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 11
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xf

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x10

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    const/16 v2, 0x73

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    const/16 v3, 0x62

    new-array v8, v7, [I

    aput v2, v8, v6

    .line 15
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x63

    new-array v8, v7, [I

    aput v2, v8, v6

    .line 17
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 18
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x64

    new-array v8, v7, [I

    aput v2, v8, v6

    .line 19
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x8

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x65

    new-array v8, v7, [I

    aput v2, v8, v6

    .line 21
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/2addr v2, v12

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xb

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x66

    new-array v8, v7, [I

    aput v2, v8, v6

    .line 23
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x67

    new-array v8, v7, [I

    aput v2, v8, v6

    .line 25
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xe

    .line 26
    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v5

    const/16 v8, 0x68

    new-array v9, v7, [I

    aput v3, v9, v6

    .line 27
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v4

    and-int/2addr v3, v5

    const/16 v8, 0x69

    new-array v9, v7, [I

    aput v3, v9, v6

    .line 28
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v4

    and-int/2addr v3, v5

    const/16 v4, 0x6a

    new-array v8, v7, [I

    aput v3, v8, v6

    .line 29
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v7

    and-int/2addr v3, v5

    const/16 v4, 0x6b

    new-array v8, v7, [I

    aput v3, v8, v6

    .line 30
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    shr-int/2addr v2, v13

    and-int/2addr v2, v7

    and-int/2addr v2, v5

    const/16 v3, 0x6c

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 31
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xf

    .line 32
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    if-gez v1, :cond_2

    move v11, v6

    goto :goto_0

    :cond_2
    if-le v1, v11, :cond_3

    goto :goto_0

    :cond_3
    move v11, v1

    :goto_0
    const/16 v1, 0x6d

    new-array v2, v7, [I

    .line 33
    iget-object v3, v0, Lk0/g1;->b:[I

    aget v3, v3, v11

    aput v3, v2, v6

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_4
    add-int/lit8 v2, p2, 0x4

    .line 34
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 35
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 36
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 37
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 38
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 39
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 40
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 41
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 42
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 43
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_6
    add-int/lit8 v2, p2, 0x4

    .line 44
    aget-byte v3, v1, v2

    add-int/lit8 v4, p2, 0x5

    .line 45
    aget-byte v8, v1, v4

    if-ne v3, v10, :cond_8

    if-ne v8, v7, :cond_8

    .line 46
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v3

    const-string v8, "com.syu.canbus"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 47
    invoke-static {}, Lo1/u;->k()V

    goto :goto_2

    .line 48
    :cond_7
    invoke-static {}, Lo1/u;->v()I

    .line 49
    :cond_8
    :goto_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 50
    aget-byte v2, v1, v2

    .line 51
    aget-byte v3, v1, v4

    and-int/2addr v2, v5

    .line 52
    iput v2, v0, Lk0/g1;->g:I

    move v2, v6

    .line 53
    :goto_3
    iget-object v4, v0, Lk0/g1;->h:[[I

    array-length v8, v4

    if-ge v2, v8, :cond_a

    .line 54
    iget v8, v0, Lk0/g1;->g:I

    aget-object v9, v4, v2

    aget v9, v9, v6

    if-ne v8, v9, :cond_9

    if-eqz v8, :cond_a

    .line 55
    iput v2, v0, Lk0/g1;->f:I

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    and-int/2addr v3, v5

    if-eqz v3, :cond_b

    .line 56
    array-length v3, v4

    if-ge v2, v3, :cond_d

    .line 57
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 58
    :cond_b
    iget v2, v0, Lk0/g1;->f:I

    array-length v3, v4

    if-ge v2, v3, :cond_c

    if-eq v2, v5, :cond_c

    .line 59
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 60
    :cond_c
    iput v5, v0, Lk0/g1;->f:I

    :cond_d
    :goto_5
    add-int/lit8 v2, p2, 0x9

    .line 61
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x1450

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_e

    .line 62
    :cond_e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v2, p2, 0xc

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_f

    .line 64
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_6

    .line 65
    :cond_f
    invoke-static {v6}, Lu0/d;->C2(I)V

    :goto_6
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/g1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/g1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/g1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/g1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 70
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/g1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/g1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/g1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 73
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Lk0/g1;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 74
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 75
    aget-byte v3, v1, v3

    add-int/lit8 v8, p2, 0x4

    .line 76
    aget-byte v8, v1, v8

    new-array v5, v7, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v6

    .line 77
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v6

    const/16 v11, 0xd

    .line 78
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x3e

    new-array v11, v7, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v6

    .line 79
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v5, v6

    const/16 v2, 0xb

    .line 80
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v3, v15

    and-int/2addr v3, v7

    if-nez v3, :cond_11

    move v3, v6

    goto :goto_7

    :cond_11
    move v3, v7

    :goto_7
    aput v3, v2, v6

    .line 81
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v8, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 82
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v8, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 83
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 84
    aget-byte v2, v1, v2

    if-eq v2, v4, :cond_17

    if-eq v2, v15, :cond_16

    if-eq v2, v14, :cond_15

    const/4 v3, 0x6

    if-eq v2, v3, :cond_14

    if-eq v2, v13, :cond_13

    const/16 v3, 0xa

    if-eq v2, v3, :cond_12

    move v2, v6

    :goto_8
    move v3, v2

    :goto_9
    move v4, v3

    goto :goto_a

    :cond_12
    move v2, v7

    goto :goto_8

    :cond_13
    move v4, v6

    move v2, v7

    move v3, v2

    goto :goto_a

    :cond_14
    move v2, v6

    move v4, v2

    move v3, v7

    goto :goto_a

    :cond_15
    move v2, v6

    move v3, v7

    goto :goto_9

    :cond_16
    move v3, v6

    move v2, v7

    move v4, v2

    goto :goto_a

    :cond_17
    move v2, v6

    move v3, v2

    move v4, v7

    :goto_a
    const/16 v5, 0x12

    new-array v8, v7, [I

    aput v2, v8, v6

    .line 85
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 86
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 88
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-le v2, v13, :cond_18

    goto :goto_b

    :cond_18
    move v13, v2

    :goto_b
    const/16 v2, 0x15

    new-array v3, v7, [I

    aput v13, v3, v6

    .line 89
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 90
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x1

    const/16 v5, 0x1c

    const/16 v8, 0x1b

    const/4 v9, -0x2

    if-eqz v2, :cond_1d

    add-int/lit8 v2, p2, 0x9

    .line 91
    aget-byte v10, v1, v2

    if-eq v10, v9, :cond_1a

    if-eq v10, v4, :cond_19

    new-array v10, v7, [I

    .line 92
    aget-byte v2, v1, v2

    const/16 v11, 0xff

    and-int/2addr v2, v11

    mul-int/2addr v2, v14

    aput v2, v10, v6

    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_19
    new-array v2, v7, [I

    aput v3, v2, v6

    .line 93
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1a
    new-array v2, v7, [I

    aput v9, v2, v6

    .line 94
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    add-int/lit8 v2, p2, 0x8

    .line 95
    aget-byte v8, v1, v2

    if-eq v8, v9, :cond_1c

    if-eq v8, v4, :cond_1b

    new-array v3, v7, [I

    .line 96
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/2addr v1, v14

    aput v1, v3, v6

    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1b
    new-array v1, v7, [I

    aput v3, v1, v6

    .line 97
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1c
    new-array v1, v7, [I

    aput v9, v1, v6

    .line 98
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_1d
    add-int/lit8 v2, p2, 0x8

    .line 99
    aget-byte v10, v1, v2

    if-eq v10, v9, :cond_1f

    if-eq v10, v4, :cond_1e

    new-array v10, v7, [I

    .line 100
    aget-byte v2, v1, v2

    const/16 v11, 0xff

    and-int/2addr v2, v11

    mul-int/2addr v2, v14

    aput v2, v10, v6

    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_1e
    new-array v2, v7, [I

    aput v3, v2, v6

    .line 101
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_1f
    new-array v2, v7, [I

    aput v9, v2, v6

    .line 102
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_d
    add-int/lit8 v2, p2, 0x9

    .line 103
    aget-byte v8, v1, v2

    if-eq v8, v9, :cond_21

    if-eq v8, v4, :cond_20

    new-array v3, v7, [I

    .line 104
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/2addr v1, v14

    aput v1, v3, v6

    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_20
    new-array v1, v7, [I

    aput v3, v1, v6

    .line 105
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_21
    new-array v1, v7, [I

    aput v9, v1, v6

    .line 106
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    .line 107
    :cond_22
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_e

    :cond_23
    const/16 v2, 0x3f5

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 108
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    sub-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_24
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/g1;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/g1;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v1, Ll0/h0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v1, Ll0/h0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x75

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

    const/16 p3, 0x65

    const/4 p4, 0x3

    const/4 v0, 0x0

    if-eq p1, p3, :cond_3

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-lez p1, :cond_4

    .line 2
    aget p1, p2, v0

    const/4 p3, 0x1

    add-int/2addr p1, p3

    aput p1, p2, v0

    .line 3
    aget p1, p2, v0

    if-ge p1, p3, :cond_1

    .line 4
    aput p3, p2, v0

    goto :goto_0

    .line 5
    :cond_1
    aget p1, p2, v0

    if-le p1, p4, :cond_2

    .line 6
    aput p4, p2, v0

    .line 7
    :cond_2
    :goto_0
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/g1;->b3(I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    array-length p1, p2

    if-lez p1, :cond_4

    .line 9
    aget p1, p2, v0

    if-ne p1, p4, :cond_4

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 10
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        -0xe
        0x6
        -0x1
    .end array-data
.end method

.method public final b3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/g1;->j:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, -0xe

    aput v4, v0, v3

    int-to-byte p1, p1

    const/4 v3, 0x3

    aput p1, v0, v3

    const/4 p1, 0x4

    const/4 v3, -0x1

    aput v3, v0, p1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/g1;->c:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/g1;->j:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/g1;->c:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
