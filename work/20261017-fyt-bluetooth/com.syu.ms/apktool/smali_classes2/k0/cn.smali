.class public Lk0/cn;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:[I

.field public j:I

.field public k:[I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lk0/cn;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/cn;->c:I

    .line 4
    iput v0, p0, Lk0/cn;->d:I

    .line 5
    iput v0, p0, Lk0/cn;->e:I

    .line 6
    iput v0, p0, Lk0/cn;->g:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 7
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

    iput-object v1, p0, Lk0/cn;->h:[[I

    new-array v1, v2, [I

    .line 8
    fill-array-data v1, :array_8

    iput-object v1, p0, Lk0/cn;->i:[I

    .line 9
    iput v0, p0, Lk0/cn;->j:I

    new-array v1, v2, [I

    .line 10
    fill-array-data v1, :array_9

    iput-object v1, p0, Lk0/cn;->k:[I

    .line 11
    iput v0, p0, Lk0/cn;->l:I

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
        0x22
        0xcc
    .end array-data

    :array_9
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static c3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 3
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    .line 5
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
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
    iput v2, v0, Lk0/mt;->l:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x20

    const/16 v3, 0x12

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v2, :cond_14

    const/16 v2, 0x26

    const/4 v9, 0x2

    if-eq v1, v2, :cond_13

    const/16 v2, 0x55

    const/16 v10, 0xb

    const/4 v11, 0x6

    const/4 v12, 0x4

    if-eq v1, v2, :cond_8

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_6

    const/16 v2, 0x57

    if-eq v1, v2, :cond_5

    const/16 v2, 0x58

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 4
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 5
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 6
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 7
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v1, p2, 0x2

    .line 8
    aget-byte v2, p1, v1

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x3

    .line 9
    aget-byte v5, p1, v3

    and-int/2addr v5, v6

    add-int/lit8 v9, p2, 0x4

    .line 10
    aget-byte v10, p1, v9

    and-int/2addr v10, v6

    add-int/lit8 v4, p2, 0x5

    .line 11
    aget-byte v11, p1, v4

    and-int/2addr v11, v6

    if-nez v2, :cond_1

    if-nez v5, :cond_1

    if-nez v10, :cond_1

    if-nez v11, :cond_1

    .line 12
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 13
    :cond_1
    sget v7, Ll0/c0;->g:I

    if-ne v7, v2, :cond_2

    sget v7, Ll0/c0;->h:I

    if-ne v7, v5, :cond_2

    sget v7, Ll0/c0;->i:I

    if-ne v7, v10, :cond_2

    sget v7, Ll0/c0;->j:I

    if-eq v7, v11, :cond_3

    .line 14
    :cond_2
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_3

    .line 15
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 16
    sput v12, Ll0/c0;->k:I

    .line 17
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 18
    :cond_3
    :goto_0
    sput v2, Ll0/c0;->g:I

    .line 19
    sput v5, Ll0/c0;->h:I

    .line 20
    sput v10, Ll0/c0;->i:I

    .line 21
    sput v11, Ll0/c0;->j:I

    .line 22
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    .line 23
    aget-byte v1, p1, v3

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    .line 24
    aget-byte v1, p1, v9

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    .line 25
    aget-byte v1, p1, v4

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :pswitch_2
    add-int/lit8 v1, p2, 0x2

    .line 26
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 27
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 28
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 29
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :cond_4
    const/16 v1, 0x63

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 30
    aget-byte v5, p1, v3

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x64

    new-array v2, v8, [I

    .line 31
    aget-byte v5, p1, v3

    shr-int/lit8 v4, v5, 0x5

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v2, v8, [I

    .line 32
    aget-byte v3, p1, v3

    shr-int/2addr v3, v11

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 33
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OD-23-05-20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    add-int/lit8 v1, p2, 0x2

    .line 35
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    if-eq v1, v8, :cond_7

    goto/16 :goto_8

    :cond_7
    add-int/lit8 v1, p2, 0x3

    .line 36
    aget-byte v2, p1, v1

    shr-int/2addr v2, v5

    and-int/2addr v2, v8

    aget-byte v3, p1, v1

    shr-int/2addr v3, v12

    and-int/2addr v3, v8

    invoke-static {v2, v3, v7}, Ll0/c0;->a(III)V

    .line 37
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v9, [I

    aput v10, v4, v7

    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    aput v1, v4, v8

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    const-string v1, "persist.fyt.reversetemp"

    .line 38
    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x1c

    const/4 v13, -0x1

    const/16 v14, 0x1b

    const/16 v15, 0xa

    if-eqz v1, :cond_b

    add-int/lit8 v1, p2, 0x2

    .line 39
    aget-byte v4, p1, v1

    and-int/2addr v4, v6

    if-ge v4, v15, :cond_9

    new-array v1, v8, [I

    aput v13, v1, v7

    .line 40
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v4, v8, [I

    .line 41
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v1, p2, 0x3

    .line 42
    aget-byte v2, p1, v1

    and-int/2addr v2, v6

    if-ge v2, v15, :cond_a

    new-array v1, v8, [I

    aput v13, v1, v7

    .line 43
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v2, v8, [I

    .line 44
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    aput v1, v2, v7

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    add-int/lit8 v1, p2, 0x2

    .line 45
    aget-byte v4, p1, v1

    and-int/2addr v4, v6

    if-ge v4, v15, :cond_c

    new-array v1, v8, [I

    aput v13, v1, v7

    .line 46
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array v4, v8, [I

    .line 47
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    aput v1, v4, v7

    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v1, p2, 0x3

    .line 48
    aget-byte v4, p1, v1

    and-int/2addr v4, v6

    if-ge v4, v15, :cond_d

    new-array v1, v8, [I

    aput v13, v1, v7

    .line 49
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v4, v8, [I

    .line 50
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v1, p2, 0x4

    .line 51
    aget-byte v2, p1, v1

    shr-int/2addr v2, v12

    const/16 v4, 0xf

    and-int/2addr v2, v4

    if-eq v2, v8, :cond_12

    if-eq v2, v9, :cond_11

    if-eq v2, v5, :cond_10

    if-eq v2, v12, :cond_f

    if-eq v2, v11, :cond_e

    move v2, v7

    move v13, v2

    :goto_4
    move v14, v13

    goto :goto_5

    :cond_e
    move v13, v7

    move v14, v13

    move v2, v8

    goto :goto_5

    :cond_f
    move v13, v7

    move v2, v8

    move v14, v2

    goto :goto_5

    :cond_10
    move v2, v7

    move v13, v2

    move v14, v8

    goto :goto_5

    :cond_11
    move v2, v7

    move v13, v8

    goto :goto_4

    :cond_12
    move v2, v7

    move v14, v2

    move v13, v8

    :goto_5
    new-array v15, v8, [I

    aput v2, v15, v7

    .line 52
    invoke-static {v3, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v8, [I

    aput v13, v3, v7

    .line 53
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    aput v14, v3, v7

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    .line 55
    aget-byte v1, p1, v1

    shr-int/2addr v1, v7

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x5

    .line 56
    aget-byte v13, p1, v3

    shr-int/2addr v13, v7

    and-int/2addr v13, v5

    aput v13, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v8, [I

    .line 57
    aget-byte v3, p1, v3

    shr-int/2addr v3, v12

    and-int/2addr v3, v5

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x6

    .line 58
    aget-byte v12, p1, v3

    shr-int/2addr v12, v7

    and-int/2addr v12, v8

    aput v12, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v8, [I

    .line 59
    aget-byte v2, p1, v3

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    aput v2, v1, v7

    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v8, [I

    .line 60
    aget-byte v10, p1, v3

    shr-int/lit8 v9, v10, 0x2

    and-int/2addr v9, v8

    aput v9, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v8, [I

    .line 61
    aget-byte v2, p1, v3

    const/4 v9, 0x5

    shr-int/2addr v2, v9

    and-int/2addr v2, v8

    aput v2, v1, v7

    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v8, [I

    .line 62
    aget-byte v3, p1, v3

    shr-int/2addr v3, v11

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x7

    .line 63
    aget-byte v3, p1, v3

    shr-int/2addr v3, v7

    and-int/2addr v3, v5

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x9

    .line 64
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 65
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_8

    :cond_13
    add-int/lit8 v1, p2, 0x3

    .line 66
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    const/16 v3, 0x15b8

    invoke-static {v1, v2, v7, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_8

    :cond_14
    add-int/lit8 v1, p2, 0x2

    .line 67
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 68
    aget-byte v2, p1, v2

    and-int/2addr v1, v6

    .line 69
    iput v1, v0, Lk0/cn;->g:I

    move v1, v7

    .line 70
    :goto_6
    iget-object v4, v0, Lk0/cn;->h:[[I

    array-length v9, v4

    if-ge v1, v9, :cond_16

    .line 71
    iget v9, v0, Lk0/cn;->g:I

    aget-object v10, v4, v1

    aget v10, v10, v7

    if-ne v9, v10, :cond_15

    if-eqz v9, :cond_16

    .line 72
    iput v1, v0, Lk0/cn;->f:I

    goto :goto_7

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 73
    :cond_16
    :goto_7
    iget v9, v0, Lk0/cn;->g:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_19

    and-int/2addr v2, v6

    if-ne v2, v8, :cond_17

    .line 74
    array-length v2, v4

    if-ge v1, v2, :cond_1b

    .line 75
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_17
    if-nez v2, :cond_1b

    .line 76
    iget v1, v0, Lk0/cn;->f:I

    array-length v2, v4

    if-ge v1, v2, :cond_18

    if-eq v1, v6, :cond_18

    .line 77
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 78
    :cond_18
    iput v6, v0, Lk0/cn;->f:I

    goto :goto_8

    :cond_19
    and-int/lit16 v1, v2, 0xff

    if-ne v1, v8, :cond_1b

    .line 79
    sget v1, Lh0/c;->E:I

    if-eq v1, v5, :cond_1a

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1a

    .line 80
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 81
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_1a
    const/16 v1, 0x1a

    .line 82
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 83
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    :cond_1b
    :goto_8
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

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x66

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

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/cn;->b3(I)V

    goto :goto_0

    .line 2
    :cond_1
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/cn;->a3(I)V

    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x8

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v6, 0x1

    const/16 v7, 0x33

    aput v7, v3, v6

    const/4 v8, 0x2

    const/4 v9, 0x5

    aput v9, v3, v8

    const/4 v10, 0x3

    aput v1, v3, v10

    .line 1
    iget-object v11, v0, Lk0/cn;->i:[I

    iget v12, v0, Lk0/cn;->j:I

    rem-int/2addr v12, v8

    aget v11, v11, v12

    const/4 v12, 0x4

    aput v11, v3, v12

    const/16 v11, 0x25

    aput v11, v3, v9

    const/4 v13, 0x6

    aput v4, v3, v13

    const/4 v14, 0x7

    const/16 v15, 0xaa

    aput v15, v3, v14

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v3, v2, [I

    aput v5, v3, v4

    aput v7, v3, v6

    aput v9, v3, v8

    aput v1, v3, v10

    .line 2
    iget-object v10, v0, Lk0/cn;->i:[I

    iget v6, v0, Lk0/cn;->j:I

    rem-int/2addr v6, v8

    aget v6, v10, v6

    aput v6, v3, v12

    aput v11, v3, v9

    aput v4, v3, v13

    aput v15, v3, v14

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v3, v2, [I

    aput v5, v3, v4

    const/4 v5, 0x1

    aput v7, v3, v5

    aput v9, v3, v8

    const/4 v5, 0x3

    aput v1, v3, v5

    .line 3
    iget-object v5, v0, Lk0/cn;->i:[I

    iget v6, v0, Lk0/cn;->j:I

    rem-int/2addr v6, v8

    aget v5, v5, v6

    aput v5, v3, v12

    aput v11, v3, v9

    aput v4, v3, v13

    aput v15, v3, v14

    invoke-static {v3}, Lz/k;->s([I)V

    const/16 v3, 0x9

    new-array v5, v3, [B

    const/16 v6, 0x2e

    aput-byte v6, v5, v4

    const/4 v10, 0x1

    aput-byte v7, v5, v10

    aput-byte v9, v5, v8

    int-to-byte v1, v1

    const/4 v10, 0x3

    aput-byte v1, v5, v10

    .line 4
    iget-object v10, v0, Lk0/cn;->i:[I

    iget v15, v0, Lk0/cn;->j:I

    rem-int/2addr v15, v8

    aget v10, v10, v15

    int-to-byte v10, v10

    aput-byte v10, v5, v12

    aput-byte v11, v5, v9

    aput-byte v4, v5, v13

    const/16 v10, -0x56

    aput-byte v10, v5, v14

    aput-byte v4, v5, v2

    invoke-static {v5}, Lk0/cn;->c3([B)V

    new-array v5, v3, [B

    aput-byte v6, v5, v4

    const/4 v15, 0x1

    aput-byte v7, v5, v15

    aput-byte v9, v5, v8

    const/4 v15, 0x3

    aput-byte v1, v5, v15

    .line 5
    iget-object v15, v0, Lk0/cn;->i:[I

    iget v7, v0, Lk0/cn;->j:I

    rem-int/2addr v7, v8

    aget v7, v15, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v12

    aput-byte v11, v5, v9

    aput-byte v4, v5, v13

    aput-byte v10, v5, v14

    aput-byte v4, v5, v2

    invoke-static {v5}, Lk0/cn;->c3([B)V

    new-array v3, v3, [B

    aput-byte v6, v3, v4

    const/16 v5, 0x33

    const/4 v6, 0x1

    aput-byte v5, v3, v6

    aput-byte v9, v3, v8

    const/4 v5, 0x3

    aput-byte v1, v3, v5

    .line 6
    iget-object v1, v0, Lk0/cn;->i:[I

    iget v5, v0, Lk0/cn;->j:I

    rem-int/2addr v5, v8

    aget v1, v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v12

    aput-byte v11, v3, v9

    aput-byte v4, v3, v13

    aput-byte v10, v3, v14

    aput-byte v4, v3, v2

    invoke-static {v3}, Lk0/cn;->c3([B)V

    .line 7
    iget v1, v0, Lk0/cn;->j:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/cn;->j:I

    .line 8
    rem-int/2addr v1, v8

    iput v1, v0, Lk0/cn;->j:I

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
    iget v1, p0, Lk0/cn;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/cn;->c:I

    .line 5
    iput v0, p0, Lk0/cn;->d:I

    .line 6
    iput v0, p0, Lk0/cn;->e:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/cn;->b:[B

    iget v2, p0, Lk0/cn;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/cn;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/cn;->c:I

    .line 9
    iget p1, p0, Lk0/cn;->e:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/cn;->b:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/cn;->e:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/cn;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/cn;->b:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/cn;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/cn;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/cn;->d:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/cn;->d:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/cn;->e:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/cn;->c:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/cn;->d:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/cn;->b:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/cn;->e:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/cn;->e:I

    .line 23
    iget v6, p0, Lk0/cn;->c:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/cn;->e:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/cn;->e:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/cn;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/cn;->b:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/cn;->d:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/cn;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/cn;->e:I

    iput v1, p0, Lk0/cn;->d:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/cn;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/cn;->d:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/cn;->e:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/cn;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/cn;->d:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/cn;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/cn;->c:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/cn;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/cn;->d:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public final b3(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x8

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v6, 0x1

    const/16 v7, 0x34

    aput v7, v3, v6

    const/4 v8, 0x2

    const/4 v9, 0x5

    aput v9, v3, v8

    const/4 v10, 0x3

    aput v1, v3, v10

    .line 1
    iget-object v11, v0, Lk0/cn;->k:[I

    iget v12, v0, Lk0/cn;->l:I

    rem-int/2addr v12, v8

    aget v11, v11, v12

    const/4 v12, 0x4

    aput v11, v3, v12

    const/16 v11, 0x25

    aput v11, v3, v9

    const/4 v13, 0x6

    aput v4, v3, v13

    const/4 v14, 0x7

    const/16 v15, 0xaa

    aput v15, v3, v14

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v3, v2, [I

    aput v5, v3, v4

    aput v7, v3, v6

    aput v9, v3, v8

    aput v1, v3, v10

    .line 2
    iget-object v10, v0, Lk0/cn;->k:[I

    iget v6, v0, Lk0/cn;->l:I

    rem-int/2addr v6, v8

    aget v6, v10, v6

    aput v6, v3, v12

    aput v11, v3, v9

    aput v4, v3, v13

    aput v15, v3, v14

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v3, v2, [I

    aput v5, v3, v4

    const/4 v5, 0x1

    aput v7, v3, v5

    aput v9, v3, v8

    const/4 v5, 0x3

    aput v1, v3, v5

    .line 3
    iget-object v5, v0, Lk0/cn;->k:[I

    iget v6, v0, Lk0/cn;->l:I

    rem-int/2addr v6, v8

    aget v5, v5, v6

    aput v5, v3, v12

    aput v11, v3, v9

    aput v4, v3, v13

    aput v15, v3, v14

    invoke-static {v3}, Lz/k;->s([I)V

    const/16 v3, 0x9

    new-array v5, v3, [B

    const/16 v6, 0x2e

    aput-byte v6, v5, v4

    const/4 v10, 0x1

    aput-byte v7, v5, v10

    aput-byte v9, v5, v8

    int-to-byte v1, v1

    const/4 v10, 0x3

    aput-byte v1, v5, v10

    .line 4
    iget-object v10, v0, Lk0/cn;->i:[I

    iget v15, v0, Lk0/cn;->l:I

    rem-int/2addr v15, v8

    aget v10, v10, v15

    int-to-byte v10, v10

    aput-byte v10, v5, v12

    aput-byte v11, v5, v9

    aput-byte v4, v5, v13

    const/16 v10, -0x56

    aput-byte v10, v5, v14

    aput-byte v4, v5, v2

    invoke-static {v5}, Lk0/cn;->c3([B)V

    new-array v5, v3, [B

    aput-byte v6, v5, v4

    const/4 v15, 0x1

    aput-byte v7, v5, v15

    aput-byte v9, v5, v8

    const/4 v15, 0x3

    aput-byte v1, v5, v15

    .line 5
    iget-object v15, v0, Lk0/cn;->i:[I

    iget v7, v0, Lk0/cn;->l:I

    rem-int/2addr v7, v8

    aget v7, v15, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v12

    aput-byte v11, v5, v9

    aput-byte v4, v5, v13

    aput-byte v10, v5, v14

    aput-byte v4, v5, v2

    invoke-static {v5}, Lk0/cn;->c3([B)V

    new-array v3, v3, [B

    aput-byte v6, v3, v4

    const/16 v5, 0x34

    const/4 v6, 0x1

    aput-byte v5, v3, v6

    aput-byte v9, v3, v8

    const/4 v5, 0x3

    aput-byte v1, v3, v5

    .line 6
    iget-object v1, v0, Lk0/cn;->i:[I

    iget v5, v0, Lk0/cn;->l:I

    rem-int/2addr v5, v8

    aget v1, v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v12

    aput-byte v11, v3, v9

    aput-byte v4, v3, v13

    aput-byte v10, v3, v14

    aput-byte v4, v3, v2

    invoke-static {v3}, Lk0/cn;->c3([B)V

    .line 7
    iget v1, v0, Lk0/cn;->l:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/cn;->l:I

    .line 8
    rem-int/2addr v1, v8

    iput v1, v0, Lk0/cn;->l:I

    return-void
.end method
