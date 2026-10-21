.class public Lk0/am;
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

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lk0/am;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/am;->c:I

    .line 4
    iput v0, p0, Lk0/am;->d:I

    .line 5
    iput v0, p0, Lk0/am;->e:I

    .line 6
    iput v0, p0, Lk0/am;->g:I

    const/16 v1, 0x29

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

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v4, 0x20

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v4, 0x21

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v4, 0x22

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v4, 0x23

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v4, 0x24

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v4, 0x25

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v4, 0x26

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v4, 0x27

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_28

    const/16 v3, 0x28

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/am;->h:[[I

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lk0/am;->i:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lk0/am;->j:Ljava/lang/String;

    .line 10
    new-instance v1, Lk0/am$a;

    invoke-direct {v1, p0}, Lk0/am$a;-><init>(Lk0/am;)V

    iput-object v1, p0, Lk0/am;->k:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lk0/am;->l:I

    .line 12
    new-instance v2, Lk0/am$b;

    invoke-direct {v2, p0}, Lk0/am$b;-><init>(Lk0/am;)V

    iput-object v2, p0, Lk0/am;->m:Ljava/lang/Runnable;

    .line 13
    iput v0, p0, Lk0/am;->n:I

    .line 14
    new-instance v0, Lk0/am$c;

    invoke-direct {v0, p0}, Lk0/am$c;-><init>(Lk0/am;)V

    iput-object v0, p0, Lk0/am;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/am$d;

    invoke-direct {v0, p0}, Lk0/am$d;-><init>(Lk0/am;)V

    iput-object v0, p0, Lk0/am;->p:Ljava/lang/Runnable;

    .line 16
    iput v1, p0, Lk0/am;->q:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x23
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x36
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1d
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
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
        0x7
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x8
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x32
    .end array-data

    :array_c
    .array-data 4
        0x21
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x22
        0x36
    .end array-data

    :array_e
    .array-data 4
        0x23
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x24
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x25
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x26
        0x3a
    .end array-data

    :array_12
    .array-data 4
        0x27
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x28
        0x37
    .end array-data

    :array_14
    .array-data 4
        0x2a
        0x22
    .end array-data

    :array_15
    .array-data 4
        0x2b
        0x20
    .end array-data

    :array_16
    .array-data 4
        0x2c
        0x44
    .end array-data

    :array_17
    .array-data 4
        0x2d
        0x23
    .end array-data

    :array_18
    .array-data 4
        0x2e
        0x21
    .end array-data

    :array_19
    .array-data 4
        0x2f
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0x30
        0x43
    .end array-data

    :array_1b
    .array-data 4
        0x38
        0x18
    .end array-data

    :array_1c
    .array-data 4
        0x58
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x71
        0x22
    .end array-data

    :array_1e
    .array-data 4
        0x72
        0x21
    .end array-data

    :array_1f
    .array-data 4
        0x73
        0x21
    .end array-data

    :array_20
    .array-data 4
        0x74
        0x23
    .end array-data

    :array_21
    .array-data 4
        0x75
        0x23
    .end array-data

    :array_22
    .array-data 4
        0x76
        0x20
    .end array-data

    :array_23
    .array-data 4
        0x77
        0x20
    .end array-data

    :array_24
    .array-data 4
        0x78
        0x22
    .end array-data

    :array_25
    .array-data 4
        0x81
        0x1f
    .end array-data

    :array_26
    .array-data 4
        0x82
        0x1e
    .end array-data

    :array_27
    .array-data 4
        0x91
        0x7
    .end array-data

    :array_28
    .array-data 4
        0x92
        0x8
    .end array-data
.end method

.method public static a3()V
    .locals 11

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xc1

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    const/4 v5, 0x5

    aput v5, v1, v2

    .line 1
    sget v6, Lu0/b;->D:I

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eq v6, v4, :cond_3

    if-eq v6, v0, :cond_2

    const/16 v4, 0xa

    if-eq v6, v4, :cond_2

    if-eq v6, v9, :cond_1

    if-eq v6, v5, :cond_0

    const/16 v0, 0xc

    aput v0, v1, v8

    goto :goto_1

    :cond_0
    aput v7, v1, v8

    goto :goto_1

    :cond_1
    aput v2, v1, v8

    .line 2
    sget v0, Lo0/e;->B:I

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v9

    goto :goto_1

    :cond_2
    aput v0, v1, v8

    .line 3
    sget v0, Lu0/b;->r3:I

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v9

    goto :goto_1

    :cond_3
    aput v4, v1, v8

    .line 4
    sget v0, Lw0/d;->j:I

    .line 5
    sget v6, Lw0/d;->h:I

    const/high16 v10, 0x10000

    if-ne v6, v10, :cond_4

    aput v3, v1, v9

    goto :goto_0

    :cond_4
    const v10, 0x10001

    if-ne v6, v10, :cond_5

    aput v4, v1, v9

    goto :goto_0

    :cond_5
    const v10, 0x10002

    if-ne v6, v10, :cond_6

    aput v2, v1, v9

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_7

    if-ne v6, v4, :cond_8

    :cond_7
    const/16 v2, 0x10

    aput v2, v1, v9

    .line 6
    :cond_8
    :goto_0
    sget v2, Lw0/d;->i:I

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v5

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x6

    aput v2, v1, v4

    .line 7
    rem-int/lit8 v2, v0, 0x6

    if-nez v2, :cond_9

    if-eqz v0, :cond_9

    aput v4, v1, v7

    goto :goto_1

    :cond_9
    aput v2, v1, v7

    .line 8
    :goto_1
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_a

    aput v3, v1, v8

    .line 9
    :cond_a
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
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
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/am;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/am;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/am;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x7

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v7, :cond_28

    const/16 v13, 0xf

    const/4 v15, 0x5

    const/4 v3, 0x4

    if-eq v2, v8, :cond_1d

    if-eq v2, v3, :cond_15

    if-eq v2, v15, :cond_14

    if-eq v2, v9, :cond_13

    if-eq v2, v6, :cond_11

    const v16, 0xff00

    if-eq v2, v5, :cond_d

    const/16 v14, 0x55

    const/16 v4, 0x10

    if-eq v2, v14, :cond_4

    const/16 v14, 0x57

    if-eq v2, v14, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_17

    .line 2
    :pswitch_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, v0, Lk0/am;->j:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lk0/am;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__ Air : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lk0/am;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_1
    const/16 v2, 0x63

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0x5

    .line 4
    aget-byte v5, v1, v5

    shl-int/lit8 v4, v5, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    shl-int/2addr v5, v6

    and-int v5, v5, v16

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    or-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0xa

    .line 5
    aget-byte v4, v1, v4

    shl-int/2addr v4, v6

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    or-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0xc

    .line 6
    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_2
    const/16 v2, 0x62

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 7
    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_3
    const/16 v2, 0x9a

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x2

    .line 8
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v4, v12, [I

    .line 9
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v4, v12, [I

    .line 10
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v4, v12, [I

    .line 11
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v4, v12, [I

    .line 12
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v4, v12, [I

    .line 13
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v12

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x3

    .line 14
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v4, v12, [I

    .line 15
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v4, v12, [I

    .line 16
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v9

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v4, v12, [I

    .line 17
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v9

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x4

    .line 18
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v4, v12, [I

    .line 19
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v4, v12, [I

    .line 20
    aget-byte v1, v1, v5

    shr-int/2addr v1, v3

    and-int/2addr v1, v8

    aput v1, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    .line 21
    :pswitch_4
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const/16 v4, 0x11

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x83

    .line 22
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_17

    :pswitch_5
    const/16 v2, 0x7f

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 23
    aget-byte v4, v1, v4

    shl-int/2addr v4, v6

    and-int v4, v4, v16

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v10

    or-int/2addr v4, v7

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 24
    aget-byte v4, v1, v4

    shl-int/2addr v4, v6

    and-int v4, v4, v16

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v10

    or-int/2addr v4, v7

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 25
    aget-byte v4, v1, v4

    shl-int/2addr v4, v6

    and-int v4, v4, v16

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v1, v7

    and-int/2addr v7, v10

    or-int/2addr v4, v7

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 26
    aget-byte v4, v1, v4

    shl-int/2addr v4, v6

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x9

    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    or-int/2addr v1, v4

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_6
    const/16 v2, 0x65

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x2

    .line 27
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v12, [I

    .line 28
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v9

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v12, [I

    .line 29
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v4, v12, [I

    .line 30
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v12, [I

    .line 31
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v12, [I

    .line 32
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v12

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x3

    .line 33
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v12, [I

    .line 34
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v12, [I

    .line 35
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v12, [I

    .line 36
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v12, [I

    .line 37
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v12, [I

    .line 38
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v12, [I

    .line 39
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v12, [I

    .line 40
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v12

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x4

    .line 41
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v10

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x5

    .line 42
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v13

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v12, [I

    .line 43
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v13

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x6

    .line 44
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v13

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v12, [I

    .line 45
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v13

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x7

    .line 46
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v12, [I

    .line 47
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v4, v12, [I

    .line 48
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v4, v12, [I

    .line 49
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v4, v12, [I

    .line 50
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v4, v12, [I

    .line 51
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x8

    .line 52
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v10

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x9

    .line 53
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v4, v12, [I

    .line 54
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v4, v12, [I

    .line 55
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v4, v12, [I

    .line 56
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v4, v12, [I

    .line 57
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v12, [I

    .line 58
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v12, [I

    .line 59
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v12

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0xa

    .line 60
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v4, v12, [I

    .line 61
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v4, v12, [I

    .line 62
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v12, [I

    .line 63
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    const/16 v6, 0x1f

    and-int/2addr v5, v6

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0xb

    .line 64
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v12, [I

    .line 65
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v12, [I

    .line 66
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v12

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v12, [I

    .line 67
    aget-byte v6, v1, v5

    shr-int/lit8 v3, v6, 0x4

    and-int/2addr v3, v12

    aput v3, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v12, [I

    .line 68
    aget-byte v4, v1, v5

    shr-int/2addr v4, v8

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v12, [I

    .line 69
    aget-byte v4, v1, v5

    shr-int/2addr v4, v7

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v12, [I

    .line 70
    aget-byte v4, v1, v5

    shr-int/2addr v4, v12

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v12, [I

    .line 71
    aget-byte v4, v1, v5

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0xc

    .line 72
    aget-byte v1, v1, v4

    shr-int/2addr v1, v15

    and-int/2addr v1, v9

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_0
    const-string v2, "Audi_"

    .line 73
    iput-object v2, v0, Lk0/am;->i:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x3

    .line 74
    aget-byte v3, v1, v2

    if-ne v3, v4, :cond_1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lk0/am;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "A6L_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/am;->i:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_1
    aget-byte v2, v1, v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lk0/am;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Q7_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/am;->i:Ljava/lang/String;

    :cond_2
    :goto_0
    add-int/lit8 v2, p2, 0x4

    .line 78
    aget-byte v3, v1, v2

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lk0/am;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/am;->i:Ljava/lang/String;

    goto :goto_1

    .line 80
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lk0/am;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/am;->i:Ljava/lang/String;

    .line 81
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lk0/am;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/am;->i:Ljava/lang/String;

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lk0/am;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/am;->i:Ljava/lang/String;

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lk0/am;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x7

    aget-byte v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/am;->i:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lk0/am;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__ Air : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lk0/am;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 85
    :cond_4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v12, :cond_5

    goto/16 :goto_17

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v5, v1, v2

    and-int/2addr v5, v10

    add-int/lit8 v6, p2, 0x3

    .line 87
    aget-byte v14, v1, v6

    and-int/2addr v14, v10

    const-string v9, "persist.fyt.reversetemp"

    .line 88
    invoke-static {v9, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 89
    aget-byte v5, v1, v6

    and-int/2addr v5, v10

    .line 90
    aget-byte v2, v1, v2

    and-int/lit16 v14, v2, 0xff

    :cond_6
    const/16 v2, 0x50

    if-eq v5, v4, :cond_9

    if-eq v5, v2, :cond_8

    if-le v5, v4, :cond_7

    if-ge v5, v2, :cond_7

    new-array v6, v12, [I

    aput v5, v6, v11

    const/16 v5, 0x1b

    .line 91
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    const/16 v5, 0x1b

    new-array v6, v12, [I

    const/4 v9, -0x1

    aput v9, v6, v11

    .line 92
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    const/16 v5, 0x1b

    new-array v6, v12, [I

    const/4 v9, -0x3

    aput v9, v6, v11

    .line 93
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    const/16 v5, 0x1b

    new-array v6, v12, [I

    const/4 v9, -0x2

    aput v9, v6, v11

    .line 94
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    :goto_2
    if-eq v14, v4, :cond_c

    if-eq v14, v2, :cond_b

    if-le v14, v4, :cond_a

    if-ge v14, v2, :cond_a

    new-array v2, v12, [I

    aput v14, v2, v11

    const/16 v5, 0x1c

    .line 95
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    const/16 v5, 0x1c

    new-array v2, v12, [I

    const/4 v6, -0x1

    aput v6, v2, v11

    .line 96
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    const/16 v5, 0x1c

    new-array v2, v12, [I

    const/4 v6, -0x3

    aput v6, v2, v11

    .line 97
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    const/16 v5, 0x1c

    new-array v2, v12, [I

    const/4 v6, -0x2

    aput v6, v2, v11

    .line 98
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x15

    new-array v5, v12, [I

    add-int/lit8 v6, p2, 0x4

    .line 99
    aget-byte v9, v1, v6

    shr-int/2addr v9, v11

    and-int/2addr v9, v13

    aput v9, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 100
    aget-byte v2, v1, v6

    shr-int/2addr v2, v3

    and-int/2addr v2, v13

    packed-switch v2, :pswitch_data_2

    move v2, v11

    :goto_4
    move v5, v2

    :goto_5
    move v6, v5

    goto :goto_6

    :pswitch_7
    move v2, v12

    goto :goto_4

    :pswitch_8
    move v5, v11

    move v6, v5

    move v2, v12

    goto :goto_6

    :pswitch_9
    move v6, v11

    move v2, v12

    move v5, v2

    goto :goto_6

    :pswitch_a
    move v5, v11

    move v2, v12

    move v6, v2

    goto :goto_6

    :pswitch_b
    move v2, v11

    move v5, v2

    move v6, v12

    goto :goto_6

    :pswitch_c
    move v2, v11

    move v5, v12

    goto :goto_5

    :pswitch_d
    move v2, v11

    move v6, v2

    move v5, v12

    :goto_6
    new-array v9, v12, [I

    aput v2, v9, v11

    const/16 v2, 0x12

    .line 101
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v12, [I

    aput v5, v9, v11

    .line 102
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v12, [I

    aput v6, v5, v11

    .line 103
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 104
    aget-byte v5, v1, v2

    shr-int/2addr v5, v3

    and-int/2addr v5, v13

    packed-switch v5, :pswitch_data_3

    move v5, v11

    :goto_7
    move v6, v5

    :goto_8
    move v9, v6

    goto :goto_9

    :pswitch_e
    move v5, v12

    goto :goto_7

    :pswitch_f
    move v6, v11

    move v9, v6

    move v5, v12

    goto :goto_9

    :pswitch_10
    move v9, v11

    move v5, v12

    move v6, v5

    goto :goto_9

    :pswitch_11
    move v6, v11

    move v5, v12

    move v9, v5

    goto :goto_9

    :pswitch_12
    move v5, v11

    move v6, v5

    move v9, v12

    goto :goto_9

    :pswitch_13
    move v5, v11

    move v6, v12

    goto :goto_8

    :pswitch_14
    move v5, v11

    move v9, v5

    move v6, v12

    :goto_9
    const/16 v10, 0x16

    new-array v14, v12, [I

    aput v5, v14, v11

    .line 105
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x17

    new-array v10, v12, [I

    aput v6, v10, v11

    .line 106
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x18

    new-array v6, v12, [I

    aput v9, v6, v11

    .line 107
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x1d

    new-array v6, v12, [I

    .line 108
    aget-byte v9, v1, v2

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v6, v11

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x1e

    new-array v6, v12, [I

    .line 109
    aget-byte v9, v1, v2

    shr-int/2addr v9, v3

    and-int/2addr v9, v8

    aput v9, v6, v11

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v12, [I

    .line 110
    aget-byte v6, v1, v2

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v5, v11

    const/16 v6, 0x1f

    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x20

    new-array v6, v12, [I

    .line 111
    aget-byte v2, v1, v2

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v8

    aput v2, v6, v11

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v5, v12, [I

    add-int/lit8 v6, p2, 0x6

    .line 112
    aget-byte v9, v1, v6

    shr-int/2addr v9, v11

    and-int/2addr v9, v12

    aput v9, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v5, v12, [I

    .line 113
    aget-byte v9, v1, v6

    shr-int/2addr v9, v12

    and-int/2addr v9, v12

    aput v9, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v5, v12, [I

    .line 114
    aget-byte v9, v1, v6

    shr-int/lit8 v7, v9, 0x2

    and-int/2addr v7, v12

    aput v7, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v5, v12, [I

    .line 115
    aget-byte v7, v1, v6

    shr-int/lit8 v3, v7, 0x4

    and-int/2addr v3, v12

    aput v3, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 116
    aget-byte v3, v1, v6

    shr-int/2addr v3, v15

    and-int/2addr v3, v12

    aput v3, v2, v11

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 117
    aget-byte v3, v1, v6

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v12, [I

    const/4 v4, 0x7

    add-int/lit8 v4, p2, 0x7

    .line 118
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v12, [I

    .line 119
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_d
    add-int/lit8 v2, p2, 0x4

    .line 120
    aget-byte v2, v1, v2

    shl-int/2addr v2, v6

    and-int v2, v2, v16

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    and-int/2addr v3, v10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    .line 121
    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    if-ne v1, v12, :cond_f

    const v1, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    const/high16 v1, 0x10000

    sub-int/2addr v1, v2

    mul-int/2addr v1, v5

    .line 122
    div-int/2addr v1, v15

    rsub-int v1, v1, 0x528

    goto :goto_a

    :cond_e
    mul-int/2addr v2, v5

    .line 123
    div-int/2addr v2, v15

    add-int/lit16 v1, v2, 0x528

    :goto_a
    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    const/4 v2, -0x1

    and-int/2addr v1, v2

    goto :goto_b

    :cond_f
    const v1, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    const/high16 v1, 0x10000

    sub-int/2addr v1, v2

    rsub-int v1, v1, 0x3e8

    goto :goto_b

    :cond_10
    add-int/lit16 v1, v2, 0x3e8

    .line 124
    :goto_b
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_17

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 125
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 126
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 127
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 128
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_12
    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 129
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 130
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    new-array v2, v12, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v12

    aput v4, v2, v11

    .line 131
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 132
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 133
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v12

    aput v1, v2, v11

    .line 134
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_13
    const/16 v2, 0x99

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 135
    aget-byte v1, v1, v4

    shr-int/2addr v1, v12

    and-int/lit8 v1, v1, 0x3f

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 136
    aget-byte v2, v1, v2

    const/4 v4, 0x7

    shr-int/2addr v2, v4

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_3b

    add-int/lit8 v2, p2, 0x3

    .line 137
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    const/16 v3, 0x14f0

    invoke-static {v2, v1, v12, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_17

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 138
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 139
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 140
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 141
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 142
    aget-byte v4, v1, v2

    and-int/2addr v4, v10

    add-int/lit8 v6, p2, 0x7

    .line 143
    aget-byte v7, v1, v6

    and-int/2addr v7, v10

    add-int/lit8 v8, p2, 0x8

    .line 144
    aget-byte v9, v1, v8

    and-int/2addr v9, v10

    add-int/lit8 v5, p2, 0x9

    .line 145
    aget-byte v13, v1, v5

    and-int/2addr v13, v10

    if-eqz v4, :cond_16

    if-ne v4, v10, :cond_19

    :cond_16
    if-eqz v7, :cond_17

    if-ne v7, v10, :cond_19

    :cond_17
    if-eqz v9, :cond_18

    if-ne v9, v10, :cond_19

    :cond_18
    if-eqz v13, :cond_1b

    if-ne v13, v10, :cond_19

    goto :goto_d

    .line 146
    :cond_19
    sget v11, Ll0/c0;->g:I

    if-ne v11, v4, :cond_1a

    sget v11, Ll0/c0;->h:I

    if-ne v11, v7, :cond_1a

    sget v11, Ll0/c0;->i:I

    if-ne v11, v9, :cond_1a

    sget v11, Ll0/c0;->j:I

    if-eq v11, v13, :cond_1c

    .line 147
    :cond_1a
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_1c

    .line 148
    invoke-static {v12}, Lu0/d;->C2(I)V

    .line 149
    sput v3, Ll0/c0;->k:I

    .line 150
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_e

    .line 151
    :cond_1b
    :goto_d
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 152
    :cond_1c
    :goto_e
    sput v4, Ll0/c0;->g:I

    .line 153
    sput v7, Ll0/c0;->h:I

    .line 154
    sput v9, Ll0/c0;->i:I

    .line 155
    sput v13, Ll0/c0;->j:I

    .line 156
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 157
    aget-byte v2, v1, v6

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 158
    aget-byte v2, v1, v8

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 159
    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_17

    .line 160
    :cond_1d
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v12, :cond_1e

    goto/16 :goto_17

    :cond_1e
    new-array v2, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 161
    aget-byte v4, v1, v4

    const/4 v5, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v4, v12

    aput v4, v2, v11

    const/16 v4, 0xa

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 162
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/lit8 v5, v7, 0x1

    aput v5, v2, v11

    const/16 v5, 0x12

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v12, [I

    .line 163
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v12

    aput v7, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v12, [I

    .line 164
    aget-byte v7, v1, v4

    shr-int/2addr v7, v15

    and-int/2addr v7, v12

    aput v7, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v5, v12, [I

    .line 165
    aget-byte v7, v1, v4

    shr-int/2addr v7, v15

    const/4 v8, 0x7

    and-int/2addr v7, v8

    aput v7, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v5, v12, [I

    .line 166
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v13

    aput v4, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 167
    aget-byte v4, v1, v2

    and-int/2addr v4, v10

    add-int/lit8 v5, p2, 0x5

    .line 168
    aget-byte v7, v1, v5

    and-int/2addr v7, v10

    const-string v8, "persist.fyt.reversetemp"

    .line 169
    invoke-static {v8, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 170
    aget-byte v4, v1, v5

    and-int/2addr v4, v10

    .line 171
    aget-byte v2, v1, v2

    and-int/lit16 v7, v2, 0xff

    :cond_1f
    if-eqz v4, :cond_23

    const/16 v2, 0x1f

    if-eq v4, v2, :cond_22

    const/16 v2, 0x7f

    if-eq v4, v2, :cond_21

    if-lt v4, v12, :cond_20

    const/16 v2, 0x1c

    if-gt v4, v2, :cond_20

    new-array v2, v12, [I

    aput v4, v2, v11

    const/16 v4, 0x1b

    .line 172
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_20
    const/16 v4, 0x1b

    new-array v2, v12, [I

    const/4 v5, -0x1

    aput v5, v2, v11

    .line 173
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_21
    const/16 v4, 0x1b

    const/4 v5, -0x1

    new-array v2, v12, [I

    aput v5, v2, v11

    .line 174
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_22
    const/16 v4, 0x1b

    new-array v2, v12, [I

    const/4 v5, -0x3

    aput v5, v2, v11

    .line 175
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_23
    const/16 v4, 0x1b

    new-array v2, v12, [I

    const/4 v5, -0x2

    aput v5, v2, v11

    .line 176
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_f
    if-eqz v7, :cond_27

    const/16 v2, 0x1f

    if-eq v7, v2, :cond_26

    const/16 v2, 0x7f

    if-eq v7, v2, :cond_25

    const/16 v2, 0x1c

    if-lt v7, v12, :cond_24

    if-gt v7, v2, :cond_24

    new-array v4, v12, [I

    aput v7, v4, v11

    .line 177
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_24
    new-array v4, v12, [I

    const/4 v5, -0x1

    aput v5, v4, v11

    .line 178
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_25
    const/16 v2, 0x1c

    const/4 v5, -0x1

    new-array v4, v12, [I

    aput v5, v4, v11

    .line 179
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_26
    const/16 v2, 0x1c

    new-array v4, v12, [I

    const/4 v5, -0x3

    aput v5, v4, v11

    .line 180
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_27
    const/16 v2, 0x1c

    new-array v4, v12, [I

    const/4 v5, -0x2

    aput v5, v4, v11

    .line 181
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_10
    const/16 v2, 0x25

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x6

    .line 182
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v12

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v4, v12, [I

    add-int/lit8 v5, p2, 0x7

    .line 183
    aget-byte v7, v1, v5

    shr-int/lit8 v3, v7, 0x4

    const/4 v7, 0x7

    and-int/2addr v3, v7

    aput v3, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v12, [I

    .line 184
    aget-byte v4, v1, v5

    shr-int/2addr v4, v11

    and-int/2addr v4, v7

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 185
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v12, [I

    .line 186
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v12, [I

    .line 187
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x57

    new-array v3, v12, [I

    .line 188
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    const/4 v6, 0x7

    and-int/2addr v5, v6

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v12, [I

    .line 189
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/2addr v1, v13

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_28
    add-int/lit8 v2, p2, 0x2

    .line 190
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 191
    aget-byte v1, v1, v3

    and-int/2addr v2, v10

    .line 192
    iput v2, v0, Lk0/am;->g:I

    move v2, v11

    .line 193
    :goto_11
    iget-object v3, v0, Lk0/am;->h:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2a

    .line 194
    iget v4, v0, Lk0/am;->g:I

    aget-object v7, v3, v2

    aget v7, v7, v11

    if-ne v4, v7, :cond_29

    if-eqz v4, :cond_2a

    .line 195
    iput v2, v0, Lk0/am;->f:I

    goto :goto_12

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 196
    :cond_2a
    :goto_12
    iget v4, v0, Lk0/am;->g:I

    const/16 v7, 0x24

    if-eq v4, v7, :cond_39

    const/16 v7, 0x27

    if-eq v4, v7, :cond_37

    const/16 v7, 0x28

    if-eq v4, v7, :cond_35

    const/16 v5, 0x81

    if-eq v4, v5, :cond_33

    const/16 v5, 0x82

    if-eq v4, v5, :cond_31

    const/16 v5, 0x91

    if-eq v4, v5, :cond_2f

    const/16 v5, 0x92

    if-eq v4, v5, :cond_2d

    and-int/2addr v1, v10

    if-ne v1, v12, :cond_2b

    .line 197
    array-length v1, v3

    if-ge v2, v1, :cond_3b

    .line 198
    aget-object v1, v3, v2

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_2b
    if-nez v1, :cond_3b

    .line 199
    iget v1, v0, Lk0/am;->f:I

    array-length v2, v3

    if-ge v1, v2, :cond_2c

    if-eq v1, v10, :cond_2c

    .line 200
    aget-object v1, v3, v1

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 201
    :cond_2c
    iput v10, v0, Lk0/am;->f:I

    goto/16 :goto_17

    :cond_2d
    move v2, v11

    :goto_13
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_2e

    .line 202
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 203
    :cond_2e
    invoke-static {v6, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_2f
    move v2, v11

    :goto_14
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_30

    const/4 v3, 0x7

    .line 204
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_30
    const/4 v3, 0x7

    .line 205
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_31
    move v2, v11

    :goto_15
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_32

    const/16 v3, 0x1e

    .line 206
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_32
    const/16 v1, 0x1e

    .line 207
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_33
    move v2, v11

    :goto_16
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_34

    const/16 v3, 0x1f

    .line 208
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_34
    const/16 v3, 0x1f

    .line 209
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    goto :goto_17

    :cond_35
    and-int/2addr v1, v10

    if-ne v1, v12, :cond_3b

    .line 210
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0xe5

    if-ne v1, v2, :cond_36

    const/16 v1, 0x37

    .line 211
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 212
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto :goto_17

    .line 213
    :cond_36
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    .line 214
    invoke-static {v5, v12}, Ll0/b0;->l0(II)V

    goto :goto_17

    :cond_37
    and-int/2addr v1, v10

    if-ne v1, v12, :cond_3b

    .line 215
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0xe5

    if-ne v1, v2, :cond_38

    const-string v1, "com.syu.carlink"

    .line 216
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "com.syu.carlink"

    .line 217
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    goto :goto_17

    :cond_38
    const/16 v2, 0x12

    .line 218
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 219
    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    goto :goto_17

    :cond_39
    const/16 v2, 0x12

    and-int/2addr v1, v10

    if-ne v1, v12, :cond_3b

    .line 220
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0xe5

    if-ne v1, v3, :cond_3a

    .line 221
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 222
    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    goto :goto_17

    :cond_3a
    const-string v1, "com.syu.carlink"

    .line 223
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "com.syu.carlink"

    .line 224
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    :cond_3b
    :goto_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/am;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/am;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/am;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/am;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa7

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

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0xff

    aput p3, p1, v3

    aput v3, p1, v1

    .line 1
    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 2
    :cond_1
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lk0/am;->b3(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    new-array p1, p1, [I

    aput v0, p1, v2

    const/16 v0, 0xc0

    aput v0, p1, v3

    aput v1, p1, v1

    .line 3
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
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
    iget v1, p0, Lk0/am;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/am;->c:I

    .line 5
    iput v0, p0, Lk0/am;->d:I

    .line 6
    iput v0, p0, Lk0/am;->e:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/am;->b:[B

    iget v2, p0, Lk0/am;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/am;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/am;->c:I

    .line 9
    iget p1, p0, Lk0/am;->e:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/am;->b:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/am;->e:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/am;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/am;->b:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/am;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/am;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/am;->d:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/am;->d:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/am;->e:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/am;->c:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/am;->d:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/am;->b:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/am;->e:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/am;->e:I

    .line 23
    iget v6, p0, Lk0/am;->c:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/am;->e:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/am;->e:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/am;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/am;->b:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/am;->d:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/am;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/am;->e:I

    iput v1, p0, Lk0/am;->d:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/am;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/am;->d:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/am;->e:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/am;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/am;->d:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/am;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/am;->c:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/am;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/am;->d:I

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
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget v2, v0, Lk0/am;->q:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    iput v2, v0, Lk0/am;->q:I

    .line 2
    sget v5, Lk0/nt;->c:I

    const/16 v6, -0x56

    const/16 v7, 0x2e

    const/16 v8, 0x9

    const/16 v9, 0xaa

    const/16 v10, 0xe3

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/16 v13, 0x25

    const/16 v15, 0xcc

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x33

    const/16 v14, 0x8

    const/16 v19, 0x5

    const/16 v20, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    new-array v5, v14, [I

    aput v10, v5, v20

    aput v18, v5, v3

    aput v19, v5, v4

    int-to-byte v1, v1

    aput v1, v5, v17

    if-nez v2, :cond_0

    const/16 v2, 0x22

    goto :goto_0

    :cond_0
    move v2, v15

    :goto_0
    aput v2, v5, v16

    aput v13, v5, v19

    aput v4, v5, v12

    aput v9, v5, v11

    .line 3
    invoke-static {v5}, Lz/k;->s([I)V

    new-array v2, v14, [I

    aput v10, v2, v20

    aput v18, v2, v3

    aput v19, v2, v4

    aput v1, v2, v17

    .line 4
    iget v5, v0, Lk0/am;->q:I

    if-nez v5, :cond_1

    const/16 v5, 0x22

    goto :goto_1

    :cond_1
    move v5, v15

    :goto_1
    aput v5, v2, v16

    aput v13, v2, v19

    aput v4, v2, v12

    aput v9, v2, v11

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v14, [I

    aput v10, v2, v20

    aput v18, v2, v3

    aput v19, v2, v4

    aput v1, v2, v17

    .line 5
    iget v5, v0, Lk0/am;->q:I

    if-nez v5, :cond_2

    const/16 v5, 0x22

    goto :goto_2

    :cond_2
    move v5, v15

    :goto_2
    aput v5, v2, v16

    aput v13, v2, v19

    aput v4, v2, v12

    aput v9, v2, v11

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v8, [B

    aput-byte v7, v2, v20

    aput-byte v18, v2, v3

    aput-byte v19, v2, v4

    aput-byte v1, v2, v17

    .line 6
    iget v5, v0, Lk0/am;->q:I

    if-nez v5, :cond_3

    const/16 v5, 0x22

    goto :goto_3

    :cond_3
    move v5, v15

    :goto_3
    int-to-byte v5, v5

    aput-byte v5, v2, v16

    aput-byte v13, v2, v19

    aput-byte v20, v2, v12

    aput-byte v6, v2, v11

    aput-byte v20, v2, v14

    invoke-static {v2}, Lk0/am;->c3([B)V

    new-array v2, v8, [B

    aput-byte v7, v2, v20

    aput-byte v18, v2, v3

    aput-byte v19, v2, v4

    aput-byte v1, v2, v17

    .line 7
    iget v5, v0, Lk0/am;->q:I

    if-nez v5, :cond_4

    const/16 v5, 0x22

    goto :goto_4

    :cond_4
    move v5, v15

    :goto_4
    int-to-byte v5, v5

    aput-byte v5, v2, v16

    aput-byte v13, v2, v19

    aput-byte v20, v2, v12

    aput-byte v6, v2, v11

    aput-byte v20, v2, v14

    invoke-static {v2}, Lk0/am;->c3([B)V

    new-array v2, v8, [B

    aput-byte v7, v2, v20

    aput-byte v18, v2, v3

    aput-byte v19, v2, v4

    aput-byte v1, v2, v17

    .line 8
    iget v1, v0, Lk0/am;->q:I

    if-nez v1, :cond_5

    const/16 v15, 0x22

    :cond_5
    int-to-byte v1, v15

    aput-byte v1, v2, v16

    aput-byte v13, v2, v19

    aput-byte v20, v2, v12

    aput-byte v6, v2, v11

    aput-byte v20, v2, v14

    invoke-static {v2}, Lk0/am;->c3([B)V

    goto/16 :goto_a

    :pswitch_1
    new-array v5, v14, [I

    aput v10, v5, v20

    aput v18, v5, v3

    aput v19, v5, v4

    int-to-byte v1, v1

    aput v1, v5, v17

    if-nez v2, :cond_6

    const/16 v2, 0x22

    goto :goto_5

    :cond_6
    move v2, v15

    :goto_5
    aput v2, v5, v16

    aput v13, v5, v19

    aput v3, v5, v12

    aput v9, v5, v11

    .line 9
    invoke-static {v5}, Lz/k;->s([I)V

    new-array v2, v14, [I

    aput v10, v2, v20

    aput v18, v2, v3

    aput v19, v2, v4

    aput v1, v2, v17

    .line 10
    iget v5, v0, Lk0/am;->q:I

    if-nez v5, :cond_7

    const/16 v5, 0x22

    goto :goto_6

    :cond_7
    move v5, v15

    :goto_6
    aput v5, v2, v16

    aput v13, v2, v19

    aput v3, v2, v12

    aput v9, v2, v11

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v14, [I

    aput v10, v2, v20

    aput v18, v2, v3

    aput v19, v2, v4

    aput v1, v2, v17

    .line 11
    iget v5, v0, Lk0/am;->q:I

    if-nez v5, :cond_8

    const/16 v5, 0x22

    goto :goto_7

    :cond_8
    move v5, v15

    :goto_7
    aput v5, v2, v16

    aput v13, v2, v19

    aput v3, v2, v12

    aput v9, v2, v11

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v8, [B

    aput-byte v7, v2, v20

    aput-byte v18, v2, v3

    aput-byte v19, v2, v4

    aput-byte v1, v2, v17

    .line 12
    iget v5, v0, Lk0/am;->q:I

    if-nez v5, :cond_9

    const/16 v5, 0x22

    goto :goto_8

    :cond_9
    move v5, v15

    :goto_8
    int-to-byte v5, v5

    aput-byte v5, v2, v16

    aput-byte v13, v2, v19

    aput-byte v20, v2, v12

    aput-byte v6, v2, v11

    aput-byte v20, v2, v14

    invoke-static {v2}, Lk0/am;->c3([B)V

    new-array v2, v8, [B

    aput-byte v7, v2, v20

    aput-byte v18, v2, v3

    aput-byte v19, v2, v4

    aput-byte v1, v2, v17

    .line 13
    iget v5, v0, Lk0/am;->q:I

    if-nez v5, :cond_a

    const/16 v5, 0x22

    goto :goto_9

    :cond_a
    move v5, v15

    :goto_9
    int-to-byte v5, v5

    aput-byte v5, v2, v16

    aput-byte v13, v2, v19

    aput-byte v20, v2, v12

    aput-byte v6, v2, v11

    aput-byte v20, v2, v14

    invoke-static {v2}, Lk0/am;->c3([B)V

    new-array v2, v8, [B

    aput-byte v7, v2, v20

    aput-byte v18, v2, v3

    aput-byte v19, v2, v4

    aput-byte v1, v2, v17

    .line 14
    iget v1, v0, Lk0/am;->q:I

    if-nez v1, :cond_b

    const/16 v15, 0x22

    :cond_b
    int-to-byte v1, v15

    aput-byte v1, v2, v16

    aput-byte v13, v2, v19

    aput-byte v20, v2, v12

    aput-byte v6, v2, v11

    aput-byte v20, v2, v14

    invoke-static {v2}, Lk0/am;->c3([B)V

    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0xe2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
