.class public Lk0/f7;
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

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:[[I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:[I

.field public r:I

.field public s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 2
    iput-object v1, v0, Lk0/f7;->b:[B

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/f7;->c:I

    .line 4
    iput v1, v0, Lk0/f7;->d:I

    .line 5
    iput v1, v0, Lk0/f7;->e:I

    .line 6
    iput v1, v0, Lk0/f7;->g:I

    const/16 v2, 0x13

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 7
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v13, 0xa

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v14, 0xb

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v15, 0xc

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v16, 0xd

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v17, 0xe

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v18, 0xf

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v15, 0x10

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v19, 0x11

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v19, 0x12

    aput-object v4, v2, v19

    iput-object v2, v0, Lk0/f7;->h:[[I

    .line 8
    iput v1, v0, Lk0/f7;->i:I

    .line 9
    iput v1, v0, Lk0/f7;->j:I

    .line 10
    iput v1, v0, Lk0/f7;->l:I

    .line 11
    iput v1, v0, Lk0/f7;->m:I

    new-array v2, v15, [[I

    new-array v4, v3, [I

    .line 12
    fill-array-data v4, :array_13

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_1c

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_1d

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    const/16 v5, 0xc

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_20

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_21

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_22

    aput-object v4, v2, v18

    iput-object v2, v0, Lk0/f7;->n:[[I

    .line 13
    new-instance v2, Lk0/f7$a;

    invoke-direct {v2, v0}, Lk0/f7$a;-><init>(Lk0/f7;)V

    iput-object v2, v0, Lk0/f7;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v2, Lk0/f7$b;

    invoke-direct {v2, v0}, Lk0/f7$b;-><init>(Lk0/f7;)V

    iput-object v2, v0, Lk0/f7;->p:Ljava/lang/Runnable;

    new-array v2, v3, [I

    .line 15
    fill-array-data v2, :array_23

    iput-object v2, v0, Lk0/f7;->q:[I

    .line 16
    iput v1, v0, Lk0/f7;->r:I

    .line 17
    new-instance v1, Lk0/f7$c;

    invoke-direct {v1, v0}, Lk0/f7$c;-><init>(Lk0/f7;)V

    iput-object v1, v0, Lk0/f7;->s:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x10
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x20
        0x3e
    .end array-data

    :array_13
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_15
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_16
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_17
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_1b
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_1c
    .array-data 4
        0x34
        0x12
    .end array-data

    :array_1d
    .array-data 4
        0x35
        0x1a
    .end array-data

    :array_1e
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_1f
    .array-data 4
        0x3b
        0x2
    .end array-data

    :array_20
    .array-data 4
        0x42
        0x26
    .end array-data

    :array_21
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_22
    .array-data 4
        0x5f
        0xd
    .end array-data

    :array_23
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    .line 1
    div-int/lit8 p0, p0, 0x19

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public static e3([B)V
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

    .line 3
    aget-byte v2, p0, v2

    :goto_0
    if-gt v1, v0, :cond_0

    .line 4
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 5
    aput-byte v1, p0, v0

    .line 6
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

.method public O2([I)V
    .locals 6

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x14

    const/4 v3, 0x6

    const/16 v4, 0x68

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v5

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    .line 4
    invoke-virtual {p0, p1}, Lk0/f7;->c3(I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0xc

    .line 5
    invoke-virtual {p0, p1}, Lk0/f7;->c3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v5

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 7
    invoke-virtual {p0, p1}, Lk0/f7;->c3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 8
    invoke-virtual {p0, p1}, Lk0/f7;->c3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 10
    invoke-virtual {p0, v2}, Lk0/f7;->c3(I)V

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x15

    .line 11
    invoke-virtual {p0, p1}, Lk0/f7;->c3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v5

    const/16 v1, 0x69

    if-nez v0, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    shr-int/2addr p1, v5

    and-int/2addr p1, v5

    if-nez p1, :cond_a

    .line 14
    invoke-virtual {p0, v3}, Lk0/f7;->c3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v5

    if-ne p1, v5, :cond_a

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    shr-int/2addr p1, v5

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_a

    .line 17
    invoke-virtual {p0, v3}, Lk0/f7;->c3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v5

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    shr-int/2addr p1, v3

    and-int/2addr p1, v5

    if-nez p1, :cond_a

    .line 20
    invoke-virtual {p0, v0}, Lk0/f7;->c3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    shr-int/2addr p1, v3

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_a

    .line 22
    invoke-virtual {p0, v0}, Lk0/f7;->c3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v5

    const/4 v0, 0x3

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v5

    if-nez p1, :cond_a

    .line 25
    invoke-virtual {p0, v0}, Lk0/f7;->c3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_a

    .line 27
    invoke-virtual {p0, v0}, Lk0/f7;->c3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v5

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    and-int/2addr p1, v5

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0, v1}, Lk0/f7;->c3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_a

    .line 32
    invoke-virtual {p0, v1}, Lk0/f7;->c3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v5

    const/16 v0, 0x10

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    shr-int/2addr p1, v5

    and-int/2addr p1, v5

    if-nez p1, :cond_a

    .line 35
    invoke-virtual {p0, v0}, Lk0/f7;->c3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    shr-int/2addr p1, v5

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_a

    .line 37
    invoke-virtual {p0, v0}, Lk0/f7;->c3(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    aget p1, p1, v5

    const/16 v0, 0x66

    if-eqz p1, :cond_9

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    and-int/lit8 p1, p1, 0xf

    if-nez p1, :cond_a

    .line 40
    invoke-virtual {p0, v2}, Lk0/f7;->c3(I)V

    goto :goto_0

    .line 41
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    and-int/lit8 p1, p1, 0xf

    if-lez p1, :cond_a

    .line 42
    invoke-virtual {p0, v5}, Lk0/f7;->c3(I)V

    :cond_a
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->e:I

    .line 2
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->o:I

    .line 4
    iput v2, v0, Lk0/mt;->q:I

    .line 5
    sget v3, Lk0/nt;->c:I

    const-string v4, "com.syu.canbus"

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 6
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->f:I

    .line 9
    iput v2, v0, Lk0/mt;->e:I

    goto :goto_0

    :cond_0
    if-ne v3, v2, :cond_1

    .line 10
    iput v2, v0, Lk0/mt;->g:I

    .line 11
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    iput v1, v0, Lk0/mt;->f:I

    const/16 v3, 0x9

    new-array v3, v3, [I

    .line 13
    fill-array-data v3, :array_0

    iput-object v3, v0, Lk0/mt;->m:[I

    goto :goto_0

    .line 14
    :cond_1
    iput v1, v0, Lk0/mt;->g:I

    .line 15
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 16
    iput v2, v0, Lk0/mt;->f:I

    .line 17
    iput v2, v0, Lk0/mt;->i:I

    .line 18
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/f7;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 21
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v3, Ll0/g0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v3, Ll0/g0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
    .end array-data
.end method

.method public U2([BII)V
    .locals 11

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x12

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p3, v0, :cond_26

    const/16 v7, 0x32

    const/16 v8, 0x8

    const/16 v9, 0xff

    if-eq p3, v7, :cond_25

    const/16 v2, 0x21

    if-eq p3, v2, :cond_1f

    const/16 v2, 0x22

    const/4 v7, 0x7

    if-eq p3, v2, :cond_14

    const/16 v1, 0x72

    if-eq p3, v1, :cond_10

    const/16 v1, 0x73

    if-eq p3, v1, :cond_0

    goto/16 :goto_11

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    const/16 v1, 0x3f6

    new-array v2, v6, [I

    shr-int/lit8 v8, p3, 0x7

    and-int/2addr v8, v6

    aput v8, v2, v5

    .line 3
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    const/16 v2, 0xa

    .line 4
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v6, [I

    shr-int/lit8 v8, p3, 0x5

    and-int/2addr v8, v6

    aput v8, v2, v5

    .line 5
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v6

    aput v2, v1, v5

    const/16 v2, 0xc

    .line 6
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, p3, 0x3

    and-int/2addr v2, v6

    aput v2, v1, v5

    const/16 v2, 0xd

    .line 7
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v6

    aput p3, v1, v5

    const/16 p3, 0xe

    .line 8
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 9
    aget-byte p3, p1, p3

    const/16 v1, 0x35

    new-array v2, v6, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 10
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    const/16 v2, 0xb

    .line 11
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v6, [I

    shr-int/2addr p3, v4

    and-int/2addr p3, v6

    aput p3, v2, v5

    .line 12
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 13
    invoke-static {p3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v1, -0x2

    const/4 v2, -0x3

    const/16 v3, 0x1c

    const/16 v4, 0x1b

    const/4 v8, -0x1

    if-nez p3, :cond_7

    add-int/lit8 p3, p2, 0x4

    .line 14
    aget-byte p3, p1, p3

    if-eq p3, v8, :cond_3

    if-eqz p3, :cond_2

    if-eq p3, v6, :cond_1

    new-array v10, v6, [I

    and-int/2addr p3, v9

    aput p3, v10, v5

    .line 15
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p3, v6, [I

    aput v1, p3, v5

    .line 16
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array p3, v6, [I

    aput v8, p3, v5

    .line 17
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array p3, v6, [I

    aput v2, p3, v5

    .line 18
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    :goto_0
    add-int/lit8 p3, p2, 0x5

    .line 19
    aget-byte p3, p1, p3

    if-eq p3, v8, :cond_6

    if-eqz p3, :cond_5

    if-eq p3, v6, :cond_4

    new-array v1, v6, [I

    and-int/2addr p3, v9

    aput p3, v1, v5

    .line 20
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_4
    new-array p3, v6, [I

    aput v1, p3, v5

    .line 21
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array p3, v6, [I

    aput v8, p3, v5

    .line 22
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array p3, v6, [I

    aput v2, p3, v5

    .line 23
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    add-int/lit8 p3, p2, 0x5

    .line 24
    aget-byte p3, p1, p3

    if-eq p3, v8, :cond_a

    if-eqz p3, :cond_9

    if-eq p3, v6, :cond_8

    new-array v10, v6, [I

    and-int/2addr p3, v9

    aput p3, v10, v5

    .line 25
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array p3, v6, [I

    aput v1, p3, v5

    .line 26
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array p3, v6, [I

    aput v8, p3, v5

    .line 27
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array p3, v6, [I

    aput v2, p3, v5

    .line 28
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 p3, p2, 0x4

    .line 29
    aget-byte p3, p1, p3

    if-eq p3, v8, :cond_d

    if-eqz p3, :cond_c

    if-eq p3, v6, :cond_b

    new-array v1, v6, [I

    and-int/2addr p3, v9

    aput p3, v1, v5

    .line 30
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array p3, v6, [I

    aput v1, p3, v5

    .line 31
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array p3, v6, [I

    aput v8, p3, v5

    .line 32
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    new-array p3, v6, [I

    aput v2, p3, v5

    .line 33
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 p2, p2, 0x6

    .line 34
    aget-byte p1, p1, p2

    const/16 p2, 0x14

    new-array p3, v6, [I

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v6

    aput v1, p3, v5

    .line 35
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v6, [I

    shr-int/lit8 v1, p1, 0x5

    and-int/2addr v1, v6

    aput v1, p3, v5

    .line 36
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 37
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    and-int/lit8 p1, p1, 0xf

    if-gez p1, :cond_e

    move v7, v5

    goto :goto_3

    :cond_e
    if-le p1, v7, :cond_f

    goto :goto_3

    :cond_f
    move v7, p1

    :goto_3
    const/16 p1, 0x15

    new-array p2, v6, [I

    aput v7, p2, v5

    .line 38
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    .line 39
    :cond_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_2b

    add-int/lit8 p3, p2, 0x4

    .line 40
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    iput p3, p0, Lk0/f7;->g:I

    move p3, v5

    .line 41
    :goto_4
    iget-object v0, p0, Lk0/f7;->h:[[I

    array-length v1, v0

    if-ge p3, v1, :cond_12

    .line 42
    iget v1, p0, Lk0/f7;->g:I

    aget-object v2, v0, p3

    aget v2, v2, v5

    if-ne v1, v2, :cond_11

    if-eqz v1, :cond_12

    .line 43
    iput p3, p0, Lk0/f7;->f:I

    goto :goto_5

    :cond_11
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 44
    :cond_12
    :goto_5
    iget p3, p0, Lk0/f7;->g:I

    if-eqz p3, :cond_13

    .line 45
    iget p3, p0, Lk0/f7;->f:I

    array-length v1, v0

    if-ge p3, v1, :cond_13

    .line 46
    aget-object p3, v0, p3

    aget p3, p3, v6

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 47
    iget-object p3, p0, Lk0/f7;->h:[[I

    iget v0, p0, Lk0/f7;->f:I

    aget-object p3, p3, v0

    aget p3, p3, v6

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    :cond_13
    add-int/lit8 p3, p2, 0x6

    .line 48
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p1, v0

    and-int/2addr v0, v9

    const/16 v1, 0x8c

    invoke-static {p3, v0, v1}, Lk0/qt;->p(III)V

    add-int/lit8 p3, p2, 0x8

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Lk0/f7;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x9

    .line 50
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Lk0/f7;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0xa

    .line 51
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Lk0/f7;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0xb

    .line 52
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Lk0/f7;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0xc

    .line 53
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Lk0/f7;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0xd

    .line 54
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Lk0/f7;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0xe

    .line 55
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Lk0/f7;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0xf

    .line 56
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    invoke-static {p1}, Lk0/f7;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_11

    :cond_14
    add-int/lit8 p3, p2, 0x2

    .line 57
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 58
    aget-byte p1, p1, p2

    if-eq p3, v6, :cond_1a

    if-eq p3, v3, :cond_15

    goto/16 :goto_11

    .line 59
    :cond_15
    iget p2, p0, Lk0/f7;->j:I

    if-eq p1, p2, :cond_2b

    if-le p1, p2, :cond_17

    move p2, v5

    .line 60
    :goto_6
    iget p3, p0, Lk0/f7;->j:I

    sub-int p3, p1, p3

    if-ge p2, p3, :cond_16

    const/16 p3, 0x1f

    .line 61
    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_16
    const/16 p2, 0x1f

    .line 62
    invoke-static {p2, v6}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_17
    if-ge p1, p2, :cond_19

    move p2, v5

    .line 63
    :goto_7
    iget p3, p0, Lk0/f7;->j:I

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_18

    const/16 p3, 0x1e

    .line 64
    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_18
    const/16 p2, 0x1e

    .line 65
    invoke-static {p2, v6}, Ll0/b0;->l0(II)V

    .line 66
    :cond_19
    :goto_8
    iput p1, p0, Lk0/f7;->j:I

    goto/16 :goto_11

    .line 67
    :cond_1a
    iget p2, p0, Lk0/f7;->i:I

    if-eq p1, p2, :cond_2b

    if-le p1, p2, :cond_1c

    move p2, v5

    .line 68
    :goto_9
    iget p3, p0, Lk0/f7;->i:I

    sub-int p3, p1, p3

    if-ge p2, p3, :cond_1b

    .line 69
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 70
    :cond_1b
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_1c
    if-ge p1, p2, :cond_1e

    move p2, v5

    .line 71
    :goto_a
    iget p3, p0, Lk0/f7;->i:I

    sub-int/2addr p3, p1

    if-ge p2, p3, :cond_1d

    .line 72
    invoke-static {v8, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 73
    :cond_1d
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 74
    :cond_1e
    :goto_b
    iput p1, p0, Lk0/f7;->i:I

    goto/16 :goto_11

    :cond_1f
    add-int/lit8 p3, p2, 0x2

    .line 75
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 76
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 77
    iput p2, p0, Lk0/f7;->l:I

    move p2, v5

    .line 78
    :goto_c
    iget-object p3, p0, Lk0/f7;->n:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_21

    .line 79
    iget v0, p0, Lk0/f7;->l:I

    aget-object v1, p3, p2

    aget v1, v1, v5

    if-ne v0, v1, :cond_20

    if-eqz v0, :cond_21

    .line 80
    iput p2, p0, Lk0/f7;->k:I

    goto :goto_d

    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 81
    :cond_21
    :goto_d
    iget p2, p0, Lk0/f7;->m:I

    if-eq p2, p1, :cond_2b

    if-eq p2, v6, :cond_22

    if-ne p2, v3, :cond_24

    :cond_22
    if-nez p1, :cond_24

    .line 82
    iget p2, p0, Lk0/f7;->k:I

    array-length v0, p3

    if-ge p2, v0, :cond_23

    if-eq p2, v9, :cond_23

    .line 83
    aget-object p2, p3, p2

    aget p2, p2, v6

    invoke-static {p2, v5}, Ll0/b0;->l0(II)V

    .line 84
    iget-object p2, p0, Lk0/f7;->n:[[I

    iget p3, p0, Lk0/f7;->k:I

    aget-object p2, p2, p3

    aget p2, p2, v6

    invoke-static {p2, v6}, Ll0/b0;->l0(II)V

    .line 85
    :cond_23
    iput v9, p0, Lk0/f7;->k:I

    .line 86
    :cond_24
    iput p1, p0, Lk0/f7;->m:I

    goto/16 :goto_11

    :cond_25
    const/16 p3, 0x408

    new-array v0, v6, [I

    add-int/lit8 v1, p2, 0x4

    .line 87
    aget-byte v1, p1, v1

    shl-int/2addr v1, v8

    const v3, 0xff00

    and-int/2addr v1, v3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    or-int/2addr p1, v1

    aput p1, v0, v5

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    .line 88
    :cond_26
    sget p3, Lk0/nt;->c:I

    const-string v0, "persist.syu.reversefrontdoor"

    if-eq p3, v6, :cond_29

    if-eq p3, v4, :cond_29

    if-eq p3, v2, :cond_29

    .line 89
    invoke-static {}, Lo1/q0;->v()Z

    move-result p3

    if-eqz p3, :cond_27

    goto :goto_f

    :cond_27
    add-int/2addr p2, v2

    .line 90
    aget-byte p1, p1, p2

    .line 91
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_28

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 92
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 93
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_28
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 94
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 95
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_e
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 96
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v1

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 97
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_29
    :goto_f
    add-int/2addr p2, v4

    .line 98
    aget-byte p1, p1, p2

    .line 99
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2a

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 100
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 101
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_2a
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 102
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 103
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_10
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 104
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 105
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 106
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 107
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :cond_2b
    :goto_11
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lz/c;->c:Lo1/y;

    iget-object v1, p0, Lk0/f7;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    sget-object v1, Ll0/g0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    sget-object v1, Ll0/g0;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/f7;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6a

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
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x31

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eq v1, v3, :cond_b

    const/16 v3, 0x32

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/16 v12, 0xd

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/4 v9, 0x6

    if-eq v1, v3, :cond_4

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 v1, 0xf

    .line 1
    invoke-virtual {v0, v1}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    :pswitch_1
    const/16 v1, 0xe

    .line 2
    invoke-virtual {v0, v1}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-virtual {v0, v12}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 4
    :pswitch_3
    sget v1, Lk0/nt;->W:I

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0, v10}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v6}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_4
    sget v1, Lk0/nt;->W:I

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0, v11}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, v8}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    :pswitch_5
    const/16 v1, 0xa

    .line 10
    invoke-virtual {v0, v1}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_6
    invoke-virtual {v0, v13}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_7
    invoke-virtual {v0, v14}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_8
    invoke-virtual {v0, v15}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_9
    invoke-virtual {v0, v9}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_a
    invoke-virtual {v0, v7}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_b
    invoke-virtual {v0, v4}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_c
    sget v1, Lk0/nt;->W:I

    if-nez v1, :cond_2

    .line 18
    invoke-virtual {v0, v6}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 19
    :cond_2
    invoke-virtual {v0, v10}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 20
    :pswitch_d
    sget v1, Lk0/nt;->W:I

    if-nez v1, :cond_3

    .line 21
    invoke-virtual {v0, v8}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 22
    :cond_3
    invoke-virtual {v0, v11}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_e
    invoke-virtual {v0, v5}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    :pswitch_f
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lk0/f7;->b3(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    if-eqz v2, :cond_5

    .line 25
    array-length v3, v2

    if-lez v3, :cond_5

    new-array v3, v13, [B

    const/16 v16, 0x2e

    aput-byte v16, v3, v1

    const/16 v17, 0x33

    aput-byte v17, v3, v5

    aput-byte v7, v3, v8

    .line 26
    aget v10, v2, v1

    int-to-byte v1, v10

    aput-byte v1, v3, v6

    iget-object v1, v0, Lk0/f7;->q:[I

    iget v10, v0, Lk0/f7;->r:I

    rem-int/2addr v10, v8

    aget v1, v1, v10

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    const/16 v1, 0x25

    aput-byte v1, v3, v7

    aput-byte v12, v3, v9

    const/16 v10, -0x56

    aput-byte v10, v3, v15

    const/16 v18, 0x0

    aput-byte v18, v3, v14

    invoke-static {v3}, Lk0/f7;->e3([B)V

    new-array v3, v13, [B

    aput-byte v16, v3, v18

    aput-byte v17, v3, v5

    aput-byte v7, v3, v8

    .line 27
    aget v11, v2, v18

    int-to-byte v11, v11

    aput-byte v11, v3, v6

    iget-object v11, v0, Lk0/f7;->q:[I

    iget v6, v0, Lk0/f7;->r:I

    rem-int/2addr v6, v8

    aget v6, v11, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    aput-byte v1, v3, v7

    aput-byte v12, v3, v9

    aput-byte v10, v3, v15

    const/4 v6, 0x0

    aput-byte v6, v3, v14

    invoke-static {v3}, Lk0/f7;->e3([B)V

    new-array v3, v13, [B

    aput-byte v16, v3, v6

    aput-byte v17, v3, v5

    aput-byte v7, v3, v8

    .line 28
    aget v11, v2, v6

    int-to-byte v6, v11

    const/4 v11, 0x3

    aput-byte v6, v3, v11

    iget-object v6, v0, Lk0/f7;->q:[I

    iget v11, v0, Lk0/f7;->r:I

    rem-int/2addr v11, v8

    aget v6, v6, v11

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    aput-byte v1, v3, v7

    aput-byte v12, v3, v9

    aput-byte v10, v3, v15

    const/4 v1, 0x0

    aput-byte v1, v3, v14

    invoke-static {v3}, Lk0/f7;->e3([B)V

    .line 29
    iget v1, v0, Lk0/f7;->r:I

    add-int/2addr v1, v5

    iput v1, v0, Lk0/f7;->r:I

    .line 30
    rem-int/2addr v1, v8

    iput v1, v0, Lk0/f7;->r:I

    .line 31
    :cond_5
    sget v1, Lk0/nt;->W:I

    if-ne v1, v5, :cond_a

    const/4 v1, 0x0

    .line 32
    aget v3, v2, v1

    if-eq v3, v8, :cond_9

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    const/16 v5, 0xb

    if-eq v3, v5, :cond_7

    const/16 v5, 0xc

    if-eq v3, v5, :cond_6

    .line 33
    aget v1, v2, v1

    invoke-virtual {v0, v1}, Lk0/f7;->b3(I)V

    goto :goto_0

    .line 34
    :cond_6
    invoke-virtual {v0, v4}, Lk0/f7;->b3(I)V

    goto :goto_0

    .line 35
    :cond_7
    invoke-virtual {v0, v8}, Lk0/f7;->b3(I)V

    goto :goto_0

    :cond_8
    const/16 v5, 0xc

    .line 36
    invoke-virtual {v0, v5}, Lk0/f7;->b3(I)V

    goto :goto_0

    :cond_9
    const/16 v5, 0xb

    .line 37
    invoke-virtual {v0, v5}, Lk0/f7;->b3(I)V

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    .line 38
    aget v1, v2, v1

    invoke-virtual {v0, v1}, Lk0/f7;->b3(I)V

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    new-array v3, v7, [I

    const/16 v6, 0xe3

    aput v6, v3, v1

    aput v8, v3, v5

    const/16 v5, -0x2d

    aput v5, v3, v8

    .line 39
    aget v2, v2, v1

    int-to-byte v2, v2

    const/4 v5, 0x3

    aput v2, v3, v5

    aput v1, v3, v4

    invoke-static {v3}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    goto/16 :goto_7

    .line 3
    :cond_1
    iget v1, p0, Lk0/f7;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/f7;->c:I

    .line 5
    iput v0, p0, Lk0/f7;->d:I

    .line 6
    iput v0, p0, Lk0/f7;->e:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/f7;->b:[B

    iget v2, p0, Lk0/f7;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/f7;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/f7;->c:I

    .line 9
    iget p1, p0, Lk0/f7;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/f7;->b:[B

    aget-byte p1, p1, v2

    move v1, v3

    .line 11
    :goto_0
    iget v4, p0, Lk0/f7;->e:I

    if-ge v1, v4, :cond_4

    .line 12
    iget-object v4, p0, Lk0/f7;->b:[B

    aget-byte v4, v4, v1

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/f7;->b:[B

    aget-byte v4, v1, v4

    if-ne p1, v4, :cond_5

    .line 14
    aget-byte p1, v1, v3

    add-int/2addr p1, v3

    invoke-virtual {p0, v1, v2, p1}, Lk0/f7;->d3([BII)V

    .line 15
    iget p1, p0, Lk0/f7;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lk0/f7;->d:I

    goto :goto_1

    .line 16
    :cond_5
    iput v3, p0, Lk0/f7;->d:I

    .line 17
    :goto_1
    iput v0, p0, Lk0/f7;->e:I

    .line 18
    :cond_6
    iget p1, p0, Lk0/f7;->c:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/f7;->d:I

    if-ge v1, p1, :cond_c

    .line 19
    iget-object v4, p0, Lk0/f7;->b:[B

    aget-byte v5, v4, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_b

    .line 20
    iget v5, p0, Lk0/f7;->e:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_7

    .line 21
    iput v0, p0, Lk0/f7;->e:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x2

    .line 22
    aget-byte v5, v4, v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lk0/f7;->e:I

    .line 23
    iget v6, p0, Lk0/f7;->c:I

    if-lt v5, v6, :cond_8

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/f7;->e:I

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v4, v4, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/f7;->e:I

    if-ge v1, v5, :cond_9

    .line 27
    iget-object v5, p0, Lk0/f7;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    xor-int/lit16 v1, v4, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v4, p0, Lk0/f7;->b:[B

    aget-byte v5, v4, v5

    if-ne v1, v5, :cond_a

    .line 29
    iget v1, p0, Lk0/f7;->d:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v1, v3

    aget-byte v1, v4, v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v4, v5, v1}, Lk0/f7;->d3([BII)V

    .line 30
    iget v1, p0, Lk0/f7;->e:I

    iput v1, p0, Lk0/f7;->d:I

    goto :goto_4

    .line 31
    :cond_a
    iget v1, p0, Lk0/f7;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lk0/f7;->d:I

    .line 32
    :goto_4
    iput v0, p0, Lk0/f7;->e:I

    .line 33
    :cond_b
    :goto_5
    iget v1, p0, Lk0/f7;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lk0/f7;->d:I

    goto :goto_2

    :cond_c
    :goto_6
    if-eqz v1, :cond_e

    .line 34
    iget p1, p0, Lk0/f7;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/f7;->c:I

    if-eqz p1, :cond_d

    .line 35
    iget-object v2, p0, Lk0/f7;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_d
    iput v0, p0, Lk0/f7;->d:I

    :cond_e
    :goto_7
    return-void
.end method

.method public final b3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v1, -0x2d

    aput v1, v0, v3

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object v0, p0, Lk0/f7;->s:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final c3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x32

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v1}, Lk0/f7;->Z0(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public d3([BII)V
    .locals 12

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x55

    if-eq p3, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v2, p1, v1

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x6

    .line 6
    aget-byte v5, p1, v5

    add-int/lit8 v6, p2, 0x7

    .line 7
    aget-byte v6, p1, v6

    add-int/lit8 p2, p2, 0x9

    .line 8
    aget-byte p2, p1, p2

    const/16 v7, 0x64

    const/4 v8, 0x1

    new-array v9, v8, [I

    and-int/lit16 v10, v0, 0xff

    const/4 v11, 0x0

    aput v10, v9, v11

    .line 9
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x65

    new-array v9, v8, [I

    and-int/lit16 v10, v2, 0xff

    aput v10, v9, v11

    .line 10
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x66

    new-array v9, v8, [I

    and-int/lit16 v10, v3, 0xff

    aput v10, v9, v11

    .line 11
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x67

    new-array v9, v8, [I

    and-int/lit16 v4, v4, 0xff

    aput v4, v9, v11

    .line 12
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x68

    new-array v7, v8, [I

    and-int/lit16 v9, v5, 0xff

    aput v9, v7, v11

    .line 13
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x69

    new-array v7, v8, [I

    and-int/lit16 v9, v6, 0xff

    aput v9, v7, v11

    .line 14
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const-string v4, "persist.fyt.reversetemp"

    .line 15
    invoke-static {v4, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    aget-byte v0, p1, v1

    .line 17
    aget-byte v2, p1, p3

    :cond_1
    and-int/lit16 p1, v0, 0xff

    const/4 p3, -0x1

    const/4 v1, -0x3

    const/4 v4, -0x2

    const/16 v7, 0x50

    const/16 v9, 0x1b

    const/16 v10, 0x10

    if-eq p1, v10, :cond_4

    if-eq p1, v7, :cond_3

    if-ge p1, v10, :cond_2

    new-array p1, v8, [I

    aput p3, p1, v11

    .line 18
    invoke-static {v9, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array p1, v8, [I

    aput v0, p1, v11

    .line 19
    invoke-static {v9, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array p1, v8, [I

    aput v1, p1, v11

    .line 20
    invoke-static {v9, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array p1, v8, [I

    aput v4, p1, v11

    .line 21
    invoke-static {v9, p1}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 p1, v2, 0xff

    const/16 v0, 0x1c

    if-eq p1, v10, :cond_7

    if-eq p1, v7, :cond_6

    if-ge p1, v10, :cond_5

    new-array p1, v8, [I

    aput p3, p1, v11

    .line 22
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array p1, v8, [I

    aput v2, p1, v11

    .line 23
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array p1, v8, [I

    aput v1, p1, v11

    .line 24
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array p1, v8, [I

    aput v4, p1, v11

    .line 25
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 p1, 0x15

    new-array p3, v8, [I

    and-int/lit8 v0, v3, 0xf

    aput v0, p3, v11

    .line 26
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 p1, v3, 0x4

    and-int/lit8 p1, p1, 0xf

    packed-switch p1, :pswitch_data_0

    move p1, v11

    :goto_2
    move p3, p1

    :goto_3
    move v0, p3

    goto :goto_4

    :pswitch_0
    move p1, v8

    goto :goto_2

    :pswitch_1
    move p1, v8

    move p3, v11

    goto :goto_3

    :pswitch_2
    move p1, v8

    move p3, p1

    move v0, v11

    goto :goto_4

    :pswitch_3
    move p1, v8

    move v0, p1

    move p3, v11

    goto :goto_4

    :pswitch_4
    move v0, v8

    move p1, v11

    move p3, p1

    goto :goto_4

    :pswitch_5
    move p3, v8

    move v0, p3

    move p1, v11

    goto :goto_4

    :pswitch_6
    move p3, v8

    move p1, v11

    move v0, p1

    :goto_4
    const/16 v1, 0x12

    new-array v2, v8, [I

    aput p1, v2, v11

    .line 27
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x13

    new-array v1, v8, [I

    aput p3, v1, v11

    .line 28
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x14

    new-array p3, v8, [I

    aput v0, p3, v11

    .line 29
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xd

    new-array p3, v8, [I

    and-int/lit8 v0, v5, 0x1

    aput v0, p3, v11

    .line 30
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xb

    new-array p3, v8, [I

    shr-int/lit8 v0, v5, 0x1

    and-int/2addr v0, v8

    aput v0, p3, v11

    .line 31
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xe

    new-array p3, v8, [I

    shr-int/lit8 v0, v5, 0x2

    and-int/2addr v0, v8

    aput v0, p3, v11

    .line 32
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x41

    new-array p3, v8, [I

    shr-int/lit8 v0, v5, 0x5

    and-int/2addr v0, v8

    aput v0, p3, v11

    .line 33
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xc

    new-array p3, v8, [I

    shr-int/lit8 v0, v6, 0x0

    and-int/lit8 v0, v0, 0x3

    aput v0, p3, v11

    .line 34
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    mul-int/lit8 p2, p2, 0xa

    const/16 p1, 0x190

    if-ge p2, p1, :cond_8

    sub-int/2addr p1, p2

    rsub-int v11, p1, 0x3e8

    goto :goto_5

    :cond_8
    if-lt p2, p1, :cond_9

    const/16 p3, 0x4e2

    if-gt p2, p3, :cond_9

    add-int/lit16 p2, p2, 0x3e8

    add-int/lit16 v11, p2, -0x190

    :cond_9
    :goto_5
    const/16 p1, 0x258

    if-le v11, p1, :cond_a

    .line 35
    invoke-static {v11}, Lu0/d;->A3(I)V

    :cond_a
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
