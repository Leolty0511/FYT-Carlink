.class public Lk0/im;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:Lo1/g0;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public l:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/im;->b:I

    .line 3
    iput v0, p0, Lk0/im;->d:I

    const/16 v1, 0xd

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    const/4 v4, 0x3

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v5, 0x4

    aput-object v0, v1, v5

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v6, 0x5

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v6, 0x6

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v6, 0x7

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v6, 0x8

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v6, 0x9

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v6, 0xa

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v6, 0xb

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v6, 0xc

    aput-object v0, v1, v6

    iput-object v1, p0, Lk0/im;->e:[[I

    .line 5
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x20

    invoke-direct {v0, v1, v6}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/im;->g:Lo1/g0;

    .line 6
    iput v3, p0, Lk0/im;->h:I

    .line 7
    iput v2, p0, Lk0/im;->i:I

    .line 8
    iput v4, p0, Lk0/im;->j:I

    .line 9
    iput v5, p0, Lk0/im;->k:I

    .line 10
    new-instance v0, Lk0/im$a;

    invoke-direct {v0, p0}, Lk0/im$a;-><init>(Lk0/im;)V

    iput-object v0, p0, Lk0/im;->l:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x15
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x17
        0x36
    .end array-data

    :array_b
    .array-data 4
        0x18
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x87
        0xc
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
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lk0/im;->f:I

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

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

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->h:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    iput v1, v0, Lk0/mt;->l:I

    .line 10
    iget-object v0, p0, Lk0/im;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/im;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 12
    iget-object v0, p0, Lk0/im;->g:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/im;->d3(I)V

    .line 13
    iget-object v0, p0, Lk0/im;->g:Lo1/g0;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/im;->e3(I)V

    .line 14
    iget-object v0, p0, Lk0/im;->g:Lo1/g0;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/im;->c3(I)V

    .line 15
    iget-object v0, p0, Lk0/im;->g:Lo1/g0;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/im;->f3(I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_23

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_22

    const/16 v3, 0x20

    const/4 v9, 0x3

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x24

    const/4 v10, 0x2

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x35

    const/16 v11, 0xa

    const/16 v12, 0x7f

    const v13, 0xff00

    if-eq v2, v3, :cond_19

    const/16 v3, 0x38

    if-eq v2, v3, :cond_18

    const/16 v3, 0x62

    const/16 v14, 0xd

    if-eq v2, v3, :cond_11

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    const/16 v3, 0x29

    if-eq v2, v3, :cond_2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 6
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 7
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 8
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 9
    :cond_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1e0

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_3
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 11
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 12
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v8

    aput v4, v2, v7

    const/16 v4, 0xb

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 13
    aget-byte v4, v1, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v2, v7

    const/16 v4, 0xc

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 14
    aget-byte v4, v1, v3

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v8, [I

    .line 15
    aget-byte v9, v1, v3

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v8, [I

    .line 16
    aget-byte v3, v1, v3

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 17
    aget-byte v9, v1, v4

    shr-int/2addr v9, v5

    and-int/lit8 v9, v9, 0x7

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v8, [I

    .line 18
    aget-byte v9, v1, v4

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v8, [I

    .line 19
    aget-byte v9, v1, v4

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    .line 20
    aget-byte v9, v1, v4

    shr-int/2addr v9, v5

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    .line 21
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 22
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x3

    const/4 v9, -0x2

    const/16 v10, 0x1c

    const/16 v11, 0x1b

    if-eqz v2, :cond_a

    add-int/lit8 v2, p2, 0x4

    .line 23
    aget-byte v13, v1, v2

    and-int/2addr v13, v6

    if-nez v13, :cond_4

    new-array v2, v8, [I

    aput v9, v2, v7

    .line 24
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 25
    :cond_4
    aget-byte v13, v1, v2

    and-int/2addr v13, v6

    if-ne v13, v6, :cond_5

    new-array v2, v8, [I

    aput v4, v2, v7

    .line 26
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 27
    :cond_5
    aget-byte v13, v1, v2

    and-int/2addr v13, v6

    if-ne v13, v12, :cond_6

    new-array v2, v8, [I

    aput v3, v2, v7

    .line 28
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array v13, v8, [I

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    aput v2, v13, v7

    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    :goto_0
    add-int/lit8 v2, p2, 0x5

    .line 30
    aget-byte v5, v1, v2

    and-int/2addr v5, v6

    if-nez v5, :cond_7

    new-array v1, v8, [I

    aput v9, v1, v7

    .line 31
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 32
    :cond_7
    aget-byte v5, v1, v2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_8

    new-array v1, v8, [I

    aput v4, v1, v7

    .line 33
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 34
    :cond_8
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    if-ne v4, v12, :cond_9

    new-array v1, v8, [I

    aput v3, v1, v7

    .line 35
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_9
    new-array v3, v8, [I

    .line 36
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_a
    add-int/lit8 v2, p2, 0x4

    .line 37
    aget-byte v13, v1, v2

    and-int/2addr v13, v6

    if-nez v13, :cond_b

    new-array v2, v8, [I

    aput v9, v2, v7

    .line 38
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    .line 39
    :cond_b
    aget-byte v13, v1, v2

    and-int/2addr v13, v6

    if-ne v13, v6, :cond_c

    new-array v2, v8, [I

    aput v4, v2, v7

    .line 40
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    .line 41
    :cond_c
    aget-byte v13, v1, v2

    and-int/2addr v13, v6

    if-ne v13, v12, :cond_d

    new-array v2, v8, [I

    aput v3, v2, v7

    .line 42
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_d
    new-array v13, v8, [I

    .line 43
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    aput v2, v13, v7

    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v2, p2, 0x5

    .line 44
    aget-byte v5, v1, v2

    and-int/2addr v5, v6

    if-nez v5, :cond_e

    new-array v1, v8, [I

    aput v9, v1, v7

    .line 45
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 46
    :cond_e
    aget-byte v5, v1, v2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_f

    new-array v1, v8, [I

    aput v4, v1, v7

    .line 47
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 48
    :cond_f
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    if-ne v4, v12, :cond_10

    new-array v1, v8, [I

    aput v3, v1, v7

    .line 49
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_10
    new-array v3, v8, [I

    .line 50
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_11
    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v11, p2, 0x2

    .line 51
    aget-byte v15, v1, v11

    and-int/2addr v15, v6

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 52
    iget v2, v0, Lk0/im;->b:I

    aget-byte v3, v1, v11

    and-int/2addr v3, v6

    if-eq v2, v3, :cond_14

    .line 53
    aget-byte v2, v1, v11

    and-int/2addr v2, v6

    iput v2, v0, Lk0/im;->b:I

    if-ne v2, v9, :cond_12

    .line 54
    sget v3, Lu0/b;->D:I

    if-ne v3, v14, :cond_12

    .line 55
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 56
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 57
    sget-object v2, Lu0/b;->c:Lu0/h;

    invoke-interface {v2, v7}, Lu0/h;->c(I)V

    goto :goto_2

    :cond_12
    if-ne v2, v8, :cond_13

    .line 58
    invoke-virtual/range {p0 .. p0}, Lk0/im;->b3()V

    goto :goto_2

    :cond_13
    if-ne v2, v10, :cond_14

    .line 59
    invoke-virtual/range {p0 .. p0}, Lk0/im;->a3()V

    .line 60
    :cond_14
    :goto_2
    aget-byte v2, v1, v11

    and-int/2addr v2, v6

    if-eq v2, v8, :cond_16

    if-eq v2, v10, :cond_15

    goto/16 :goto_8

    :cond_15
    const/16 v2, 0x82

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 61
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 62
    aget-byte v9, v1, v5

    shr-int/lit8 v4, v9, 0x4

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    .line 63
    aget-byte v4, v1, v5

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 64
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 65
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 66
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_16
    add-int/lit8 v2, p2, 0x3

    .line 67
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    if-nez v3, :cond_17

    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 68
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 69
    aget-byte v9, v1, v4

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    .line 70
    aget-byte v9, v1, v4

    shr-int/lit8 v5, v9, 0x5

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 71
    aget-byte v3, v1, v4

    shr-int/2addr v3, v7

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 72
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x6

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 73
    :cond_17
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-ne v2, v8, :cond_27

    const/16 v2, 0x79

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 74
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 75
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 76
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 77
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 78
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x10

    .line 79
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0xf

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_18
    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 80
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    .line 81
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x4

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    .line 82
    aget-byte v4, v1, v5

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 83
    aget-byte v4, v1, v5

    shr-int/2addr v4, v10

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    .line 84
    aget-byte v4, v1, v5

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 85
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    .line 86
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_19
    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 87
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 88
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 89
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 90
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 91
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 92
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xf

    .line 93
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xe

    .line 94
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1a

    and-int/2addr v1, v12

    mul-int/2addr v1, v11

    rsub-int v1, v1, 0x3e8

    goto :goto_3

    :cond_1a
    mul-int/2addr v1, v11

    add-int/lit16 v1, v1, 0x3e8

    .line 95
    :goto_3
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_8

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 97
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 98
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 99
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_1c
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 100
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 101
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 102
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 103
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 104
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 105
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 106
    aget-byte v1, v1, v3

    and-int/2addr v2, v6

    .line 107
    iput v2, v0, Lk0/im;->d:I

    move v2, v7

    .line 108
    :goto_5
    iget-object v3, v0, Lk0/im;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1f

    .line 109
    iget v4, v0, Lk0/im;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_1e

    if-eqz v4, :cond_1f

    .line 110
    iput v2, v0, Lk0/im;->c:I

    goto :goto_6

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1f
    :goto_6
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_20

    .line 111
    array-length v1, v3

    if-ge v2, v1, :cond_27

    .line 112
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_20
    if-nez v1, :cond_27

    .line 113
    iget v1, v0, Lk0/im;->c:I

    array-length v2, v3

    if-ge v1, v2, :cond_21

    if-eq v1, v6, :cond_21

    .line 114
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 115
    :cond_21
    iput v6, v0, Lk0/im;->c:I

    goto/16 :goto_8

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 116
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 117
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 118
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 119
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->e1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_8

    :cond_23
    add-int/lit8 v2, p2, 0x2

    .line 120
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v9, p2, 0x3

    .line 121
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    add-int/lit8 v11, p2, 0x4

    .line 122
    aget-byte v12, v1, v11

    and-int/2addr v12, v6

    add-int/lit8 v5, p2, 0x5

    .line 123
    aget-byte v13, v1, v5

    and-int/2addr v6, v13

    if-nez v3, :cond_24

    if-nez v10, :cond_24

    if-nez v12, :cond_24

    if-nez v6, :cond_24

    .line 124
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_7

    .line 125
    :cond_24
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_25

    sget v7, Ll0/c0;->h:I

    if-ne v7, v10, :cond_25

    sget v7, Ll0/c0;->i:I

    if-ne v7, v12, :cond_25

    sget v7, Ll0/c0;->j:I

    if-eq v7, v6, :cond_26

    .line 126
    :cond_25
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_26

    .line 127
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 128
    sput v4, Ll0/c0;->k:I

    .line 129
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 130
    :cond_26
    :goto_7
    sput v3, Ll0/c0;->g:I

    .line 131
    sput v10, Ll0/c0;->h:I

    .line 132
    sput v12, Ll0/c0;->i:I

    .line 133
    sput v6, Ll0/c0;->j:I

    .line 134
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 135
    aget-byte v2, v1, v9

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 136
    aget-byte v2, v1, v11

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 137
    aget-byte v1, v1, v5

    invoke-static {v1}, Ll0/c0;->e1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_27
    :goto_8
    return-void
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
    iget-object v0, p0, Lk0/im;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8d

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

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, v2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/im;->f3(I)V

    goto :goto_0

    .line 3
    :cond_2
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/im;->c3(I)V

    goto :goto_0

    .line 4
    :cond_3
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/im;->e3(I)V

    goto :goto_0

    .line 5
    :cond_4
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/im;->d3(I)V

    goto :goto_0

    :cond_5
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v3, p1, v3

    .line 6
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0xc6

    aput p3, p1, v4

    aput v3, p1, v3

    .line 7
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x84

    aput p3, p1, v4

    aput v3, p1, v3

    .line 8
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final a3()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.canbus"

    const-string v2, "com.syu.carinfo.ford.LZSubaruCarCd"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final b3()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.canbus"

    const-string v2, "com.syu.carinfo.ford.LZSubaruCarRadioAct"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final c3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/im;->o:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x8b

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/im;->g:Lo1/g0;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/im;->o:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/im;->g:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final d3(I)V
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
    sput p1, Lk0/im;->m:I

    const/16 v2, 0x89

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/im;->g:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/im;->m:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/im;->g:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final e3(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/im;->n:I

    const/16 v2, 0x8a

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/im;->g:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/im;->n:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/im;->g:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final f3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/im;->p:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x8c

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/im;->g:Lo1/g0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/im;->p:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/im;->g:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
