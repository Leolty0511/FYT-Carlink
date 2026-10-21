.class public Lk0/nq;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/nq;->c:I

    const/16 v1, 0xf

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

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v7, 0x6

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v7, 0x7

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v7, 0x8

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v7, 0x9

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v7, 0xa

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v7, 0xb

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v7, 0xc

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v7, 0xd

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v7, 0xe

    aput-object v3, v1, v7

    iput-object v1, p0, Lk0/nq;->d:[[I

    .line 4
    iput v0, p0, Lk0/nq;->f:I

    new-array v1, v6, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_f

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    new-array v2, v2, [I

    fill-array-data v2, :array_12

    aput-object v2, v1, v5

    iput-object v1, p0, Lk0/nq;->g:[[I

    .line 6
    new-instance v1, Lk0/nq$a;

    invoke-direct {v1, p0}, Lk0/nq$a;-><init>(Lk0/nq;)V

    iput-object v1, p0, Lk0/nq;->h:Ljava/lang/Runnable;

    .line 7
    iput v0, p0, Lk0/nq;->i:I

    .line 8
    new-instance v0, Lk0/nq$b;

    invoke-direct {v0, p0}, Lk0/nq$b;-><init>(Lk0/nq;)V

    iput-object v0, p0, Lk0/nq;->j:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/nq$c;

    invoke-direct {v0, p0}, Lk0/nq$c;-><init>(Lk0/nq;)V

    iput-object v0, p0, Lk0/nq;->k:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x22
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x23
    .end array-data

    :array_8
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x10
        0x44
    .end array-data

    :array_a
    .array-data 4
        0x11
        0x43
    .end array-data

    :array_b
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_c
    .array-data 4
        0x13
        0x12
    .end array-data

    :array_d
    .array-data 4
        0x15
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x16
        0x1a
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_11
    .array-data 4
        0x3
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x4
        0x1
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

    iget-object v1, p0, Lk0/nq;->j:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    .line 9
    iput v1, v0, Lk0/mt;->l:I

    .line 10
    iget-object v0, p0, Lk0/nq;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v4, 0x10

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_25

    const/16 v10, 0xc

    const/4 v11, 0x2

    if-eq v2, v11, :cond_1c

    const/16 v12, 0x1e

    const/16 v13, 0xa

    const/16 v14, 0x25

    const/4 v15, 0x6

    const/4 v3, 0x5

    if-eq v2, v5, :cond_e

    if-eq v2, v6, :cond_b

    if-eq v2, v12, :cond_a

    const/16 v5, 0x71

    if-eq v2, v5, :cond_7

    const/16 v4, 0x22

    if-eq v2, v4, :cond_6

    const/16 v4, 0x23

    if-eq v2, v4, :cond_2

    const/16 v3, 0x26

    if-eq v2, v3, :cond_1

    const/16 v3, 0x27

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v2, 0x64

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 6
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 7
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 8
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 9
    aget-byte v1, v1, v2

    const/16 v2, 0x80

    const/16 v3, 0x80

    invoke-static {v1, v8, v2, v9, v3}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_9

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    add-int/lit8 v5, p2, 0x3

    .line 11
    aget-byte v10, v1, v5

    and-int/2addr v10, v7

    add-int/lit8 v11, p2, 0x4

    .line 12
    aget-byte v12, v1, v11

    and-int/2addr v12, v7

    add-int/lit8 v3, p2, 0x5

    .line 13
    aget-byte v13, v1, v3

    and-int/2addr v13, v7

    if-nez v4, :cond_3

    if-nez v10, :cond_3

    if-nez v12, :cond_3

    if-nez v13, :cond_3

    .line 14
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 15
    :cond_3
    sget v8, Ll0/c0;->g:I

    if-ne v8, v4, :cond_4

    sget v8, Ll0/c0;->h:I

    if-ne v8, v10, :cond_4

    sget v8, Ll0/c0;->i:I

    if-ne v8, v12, :cond_4

    sget v8, Ll0/c0;->j:I

    if-eq v8, v13, :cond_5

    .line 16
    :cond_4
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_5

    .line 17
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 18
    sput v6, Ll0/c0;->k:I

    .line 19
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 20
    :cond_5
    :goto_0
    sput v4, Ll0/c0;->g:I

    .line 21
    sput v10, Ll0/c0;->h:I

    .line 22
    sput v12, Ll0/c0;->i:I

    .line 23
    sput v13, Ll0/c0;->j:I

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 25
    aget-byte v2, v1, v5

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 26
    aget-byte v2, v1, v11

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 27
    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 28
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 31
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 32
    aget-byte v2, v1, v2

    const-string v3, ""

    if-ne v2, v6, :cond_8

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Ford-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    move-object v2, v3

    :goto_1
    add-int/lit8 v5, p2, 0x3

    .line 34
    aget-byte v5, v1, v5

    if-ne v5, v15, :cond_9

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EDGE-"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "20"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x4

    aget-byte v6, v1, v2

    div-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v2

    rem-int/2addr v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x5

    aget-byte v6, v1, v2

    div-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v2

    rem-int/2addr v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x6

    aget-byte v6, v1, v2

    div-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v2

    rem-int/2addr v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-V"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x8

    invoke-direct {v2, v1, v3, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x9

    invoke-direct {v2, v1, v3, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0xa

    invoke-direct {v2, v1, v3, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_a
    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 38
    aget-byte v3, v1, v3

    and-int/2addr v3, v7

    aput v3, v2, v8

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 39
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 40
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v2, v1, v2

    const-string v4, "persist.syu.reversefrontdoor"

    .line 42
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 43
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 44
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 45
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 46
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v4, v9, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v9

    aput v7, v4, v8

    .line 47
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v9

    aput v6, v4, v8

    .line 48
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v9, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v9

    aput v6, v4, v8

    .line 49
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v9

    aput v2, v3, v8

    .line 50
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 51
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_d

    add-int/lit8 v2, p2, 0x3

    .line 52
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    invoke-static {v3, v1, v8}, Ll0/c0;->b(III)V

    goto/16 :goto_9

    :cond_d
    add-int/lit8 v2, p2, 0x3

    .line 53
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    invoke-static {v3, v1, v8}, Ll0/c0;->a(III)V

    goto/16 :goto_9

    :cond_e
    new-array v2, v9, [I

    add-int/lit8 v16, p2, 0x2

    .line 54
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v2, v8

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v12, v9, [I

    .line 55
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v8

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v12, v9, [I

    .line 56
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v8

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v12, v9, [I

    .line 57
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v8

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 58
    aget-byte v12, v1, v16

    shr-int/lit8 v11, v12, 0x2

    and-int/2addr v5, v11

    aput v5, v2, v8

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 59
    aget-byte v5, v1, v16

    shr-int/2addr v5, v9

    and-int/2addr v5, v9

    aput v5, v2, v8

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v4, v9, [I

    .line 60
    aget-byte v5, v1, v16

    shr-int/2addr v5, v8

    and-int/2addr v5, v9

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 61
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v9

    aput v5, v2, v8

    const/16 v5, 0xf

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v11, v9, [I

    .line 62
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/2addr v12, v9

    aput v12, v11, v8

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 63
    aget-byte v11, v1, v4

    shr-int/2addr v11, v3

    and-int/2addr v11, v9

    aput v11, v2, v8

    const/16 v11, 0x11

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v11, v9, [I

    .line 64
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x1f

    aput v4, v11, v8

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v4, v9, [I

    add-int/lit8 v11, p2, 0x4

    .line 65
    aget-byte v12, v1, v11

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v9, [I

    .line 66
    aget-byte v12, v1, v11

    shr-int/2addr v12, v15

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v9, [I

    .line 67
    aget-byte v12, v1, v11

    shr-int/2addr v12, v6

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v9, [I

    .line 68
    aget-byte v11, v1, v11

    shr-int/2addr v11, v3

    and-int/2addr v11, v9

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 69
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    add-int/lit8 v11, p2, 0x6

    .line 70
    aget-byte v12, v1, v11

    and-int/2addr v12, v7

    const-string v15, "persist.fyt.reversetemp"

    .line 71
    invoke-static {v15, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 72
    aget-byte v4, v1, v11

    and-int/2addr v4, v7

    .line 73
    aget-byte v2, v1, v2

    and-int/lit16 v12, v2, 0xff

    :cond_f
    const/4 v2, -0x1

    const/16 v11, 0x1b

    if-eqz v4, :cond_14

    const/16 v15, 0x3f

    if-eq v4, v15, :cond_13

    .line 74
    sget-object v15, Lk0/nt;->g:[I

    aget v15, v15, v14

    if-ne v15, v9, :cond_11

    if-lt v4, v10, :cond_10

    if-gt v4, v14, :cond_10

    new-array v15, v9, [I

    mul-int/2addr v4, v13

    add-int/lit16 v4, v4, 0x1e0

    aput v4, v15, v8

    .line 75
    invoke-static {v11, v15}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_10
    new-array v4, v9, [I

    aput v2, v4, v8

    .line 76
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_11
    if-lt v4, v10, :cond_12

    const/16 v15, 0x28

    if-gt v4, v15, :cond_12

    new-array v15, v9, [I

    sub-int/2addr v4, v10

    mul-int/2addr v4, v3

    add-int/lit16 v4, v4, 0x9b

    aput v4, v15, v8

    .line 77
    invoke-static {v11, v15}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_12
    new-array v4, v9, [I

    aput v2, v4, v8

    .line 78
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_13
    new-array v4, v9, [I

    const/4 v15, -0x3

    aput v15, v4, v8

    .line 79
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_14
    new-array v4, v9, [I

    const/4 v15, -0x2

    aput v15, v4, v8

    .line 80
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v4, 0x1c

    if-eqz v12, :cond_19

    const/16 v11, 0x3f

    if-eq v12, v11, :cond_18

    .line 81
    sget-object v11, Lk0/nt;->g:[I

    aget v11, v11, v14

    if-ne v11, v9, :cond_16

    if-lt v12, v10, :cond_15

    if-gt v12, v14, :cond_15

    new-array v3, v9, [I

    mul-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x1e0

    aput v12, v3, v8

    .line 82
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_15
    new-array v3, v9, [I

    aput v2, v3, v8

    .line 83
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_16
    if-lt v12, v10, :cond_17

    const/16 v11, 0x28

    if-gt v12, v11, :cond_17

    new-array v11, v9, [I

    sub-int/2addr v12, v10

    mul-int/2addr v12, v3

    add-int/lit16 v12, v12, 0x9b

    aput v12, v11, v8

    .line 84
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_17
    new-array v3, v9, [I

    aput v2, v3, v8

    .line 85
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_18
    new-array v3, v9, [I

    const/4 v10, -0x3

    aput v10, v3, v8

    .line 86
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_19
    new-array v3, v9, [I

    const/4 v10, -0x2

    aput v10, v3, v8

    .line 87
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v3, 0x1d

    new-array v4, v9, [I

    add-int/lit8 v10, p2, 0x7

    .line 88
    aget-byte v11, v1, v10

    shr-int/2addr v11, v6

    and-int/2addr v11, v5

    aput v11, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    .line 89
    aget-byte v4, v1, v10

    shr-int/2addr v4, v8

    and-int/2addr v4, v5

    aput v4, v3, v8

    const/16 v4, 0x1e

    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1f

    new-array v4, v9, [I

    add-int/lit8 v10, p2, 0x9

    .line 90
    aget-byte v11, v1, v10

    shr-int/lit8 v6, v11, 0x4

    and-int/2addr v6, v5

    aput v6, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x20

    new-array v4, v9, [I

    .line 91
    aget-byte v6, v1, v10

    shr-int/2addr v6, v8

    and-int/2addr v5, v6

    aput v5, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x8

    .line 92
    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    if-nez v1, :cond_1a

    .line 93
    invoke-static {v8}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    :cond_1a
    mul-int/lit8 v3, v1, 0x5

    add-int/lit16 v3, v3, 0x258

    .line 94
    sget-object v4, Lk0/nt;->g:[I

    aget v4, v4, v14

    if-ne v4, v9, :cond_1b

    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x258

    const/high16 v3, 0x10000000

    or-int/2addr v1, v3

    and-int/lit8 v3, v1, -0x1

    .line 95
    :cond_1b
    invoke-static {v3}, Lu0/d;->B3(I)V

    goto/16 :goto_9

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 97
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 98
    iput v2, v0, Lk0/nq;->f:I

    move v2, v8

    .line 99
    :goto_5
    iget-object v3, v0, Lk0/nq;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1e

    .line 100
    iget v4, v0, Lk0/nq;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_1d

    if-eqz v4, :cond_1e

    .line 101
    iput v2, v0, Lk0/nq;->e:I

    goto :goto_6

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 102
    :cond_1e
    :goto_6
    sget v4, Lk0/nt;->c:I

    const/16 v5, 0xf6

    if-ne v4, v5, :cond_21

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_1f

    .line 103
    array-length v1, v3

    if-ge v2, v1, :cond_2e

    .line 104
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_1f
    if-nez v1, :cond_2e

    .line 105
    iget v1, v0, Lk0/nq;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_20

    if-eq v1, v7, :cond_20

    .line 106
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 107
    :cond_20
    iput v7, v0, Lk0/nq;->e:I

    goto/16 :goto_9

    .line 108
    :cond_21
    iget v4, v0, Lk0/nq;->f:I

    if-eq v4, v9, :cond_24

    if-eq v4, v11, :cond_24

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_22

    .line 109
    array-length v1, v3

    if-ge v2, v1, :cond_2e

    .line 110
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_22
    if-nez v1, :cond_2e

    .line 111
    iget v1, v0, Lk0/nq;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_23

    if-eq v1, v7, :cond_23

    .line 112
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 113
    :cond_23
    iput v7, v0, Lk0/nq;->e:I

    goto/16 :goto_9

    .line 114
    :cond_24
    sget v1, Ly0/f;->i:I

    if-ne v1, v9, :cond_2e

    .line 115
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    .line 116
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_25
    add-int/lit8 v2, p2, 0x2

    .line 117
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 118
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 119
    iput v2, v0, Lk0/nq;->c:I

    move v2, v8

    .line 120
    :goto_7
    iget-object v3, v0, Lk0/nq;->d:[[I

    array-length v10, v3

    if-ge v2, v10, :cond_27

    .line 121
    iget v10, v0, Lk0/nq;->c:I

    aget-object v11, v3, v2

    aget v11, v11, v8

    if-ne v10, v11, :cond_26

    if-eqz v10, :cond_27

    .line 122
    iput v2, v0, Lk0/nq;->b:I

    goto :goto_8

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 123
    :cond_27
    :goto_8
    iget v10, v0, Lk0/nq;->c:I

    if-eq v10, v4, :cond_2c

    const/16 v4, 0x11

    if-eq v10, v4, :cond_2a

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_28

    .line 124
    array-length v1, v3

    if-ge v2, v1, :cond_2e

    .line 125
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_28
    if-nez v1, :cond_2e

    .line 126
    iget v1, v0, Lk0/nq;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_29

    if-eq v1, v7, :cond_29

    .line 127
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 128
    :cond_29
    iput v7, v0, Lk0/nq;->b:I

    goto :goto_9

    :cond_2a
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_2e

    .line 129
    sget v1, Lu0/b;->D:I

    if-eq v1, v9, :cond_2b

    .line 130
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    .line 131
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_2b
    const/16 v1, 0x43

    .line 132
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 133
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_2c
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_2e

    .line 134
    sget v1, Lu0/b;->D:I

    if-eq v1, v9, :cond_2d

    .line 135
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 136
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_2d
    const/16 v1, 0x44

    .line 137
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 138
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    :cond_2e
    :goto_9
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nq;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/nq;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/nq;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

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
    .locals 5

    const/4 p3, 0x4

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x85

    aput p4, p1, v4

    aput v3, p1, v3

    .line 1
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0xa0

    aput p4, p1, v4

    aput v3, p1, v3

    .line 2
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x86

    aput p4, p1, v4

    aput v3, p1, v3

    .line 3
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x90

    aput p4, p1, v4

    aput v3, p1, v3

    .line 4
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
