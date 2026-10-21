.class public Lk0/c4;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:B

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:[I

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/c4;->c:I

    const/16 v1, 0x1b

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

    iput-object v1, p0, Lk0/c4;->d:[[I

    .line 4
    iput v0, p0, Lk0/c4;->e:I

    .line 5
    iput-byte v0, p0, Lk0/c4;->f:B

    .line 6
    new-instance v1, Lk0/c4$a;

    invoke-direct {v1, p0}, Lk0/c4$a;-><init>(Lk0/c4;)V

    iput-object v1, p0, Lk0/c4;->g:Ljava/lang/Runnable;

    .line 7
    iput v0, p0, Lk0/c4;->h:I

    .line 8
    iput-byte v0, p0, Lk0/c4;->i:B

    .line 9
    new-instance v1, Lk0/c4$b;

    invoke-direct {v1, p0}, Lk0/c4$b;-><init>(Lk0/c4;)V

    iput-object v1, p0, Lk0/c4;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/c4$c;

    invoke-direct {v1, p0}, Lk0/c4$c;-><init>(Lk0/c4;)V

    iput-object v1, p0, Lk0/c4;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lk0/c4$d;

    invoke-direct {v1, p0}, Lk0/c4$d;-><init>(Lk0/c4;)V

    iput-object v1, p0, Lk0/c4;->l:Ljava/lang/Runnable;

    new-array v1, v2, [I

    .line 12
    fill-array-data v1, :array_1b

    iput-object v1, p0, Lk0/c4;->m:[I

    .line 13
    iput v0, p0, Lk0/c4;->n:I

    .line 14
    new-instance v0, Lk0/c4$e;

    invoke-direct {v0, p0}, Lk0/c4$e;-><init>(Lk0/c4;)V

    iput-object v0, p0, Lk0/c4;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/c4$f;

    invoke-direct {v0, p0}, Lk0/c4$f;-><init>(Lk0/c4;)V

    iput-object v0, p0, Lk0/c4;->p:Ljava/lang/Runnable;

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
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x31
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x34
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x36
        0x12
    .end array-data

    :array_d
    .array-data 4
        0x39
        0x18
    .end array-data

    :array_e
    .array-data 4
        0x3a
        0x36
    .end array-data

    :array_f
    .array-data 4
        0x3b
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x3c
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x3d
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x41
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x42
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x43
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x44
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x45
        0x6
    .end array-data

    :array_17
    .array-data 4
        0x46
        0x5
    .end array-data

    :array_18
    .array-data 4
        0x47
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x48
        0x10
    .end array-data

    :array_1a
    .array-data 4
        0xfe
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic f3(Lk0/c4;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/c4;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic g3(Lk0/c4;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/c4;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic h3(Lk0/c4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/c4;->a3()V

    return-void
.end method

.method public static synthetic i3(Lk0/c4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/c4;->c3()V

    return-void
.end method

.method public static synthetic j3(Lk0/c4;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/c4;->e3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 5

    if-eqz p1, :cond_9

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v4

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Lk0/c4;->e3(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v2}, Lk0/c4;->e3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v4

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 7
    invoke-virtual {p0, p1}, Lk0/c4;->e3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 8
    invoke-virtual {p0, p1}, Lk0/c4;->e3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const/16 p1, 0x14

    .line 10
    invoke-virtual {p0, p1}, Lk0/c4;->e3(I)V

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x15

    .line 11
    invoke-virtual {p0, p1}, Lk0/c4;->e3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v4

    if-ne v0, v4, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    const/4 p1, 0x6

    .line 14
    invoke-virtual {p0, p1}, Lk0/c4;->e3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v4

    if-nez p1, :cond_9

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v4, :cond_9

    const/4 p1, 0x5

    .line 17
    invoke-virtual {p0, p1}, Lk0/c4;->e3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v4

    const/4 v0, 0x4

    const/16 v1, 0x26

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    .line 20
    invoke-virtual {p0, v0}, Lk0/c4;->e3(I)V

    goto :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v4, :cond_9

    .line 22
    invoke-virtual {p0, v0}, Lk0/c4;->e3(I)V

    goto :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v4

    const/4 v0, 0x3

    const/16 v1, 0xf

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    .line 25
    invoke-virtual {p0, v0}, Lk0/c4;->e3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v4, :cond_9

    .line 27
    invoke-virtual {p0, v0}, Lk0/c4;->e3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v4

    const/16 v0, 0xd

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_9

    .line 30
    invoke-virtual {p0, v1}, Lk0/c4;->e3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v4, :cond_9

    .line 32
    invoke-virtual {p0, v1}, Lk0/c4;->e3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v4

    const/16 v0, 0x10

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_9

    .line 35
    invoke-virtual {p0, v0}, Lk0/c4;->e3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v4, :cond_9

    .line 37
    invoke-virtual {p0, v0}, Lk0/c4;->e3(I)V

    :cond_9
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x22
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
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    iput v2, v1, Lk0/mt;->e:I

    .line 3
    iput v2, v1, Lk0/mt;->f:I

    .line 4
    iput v2, v1, Lk0/mt;->g:I

    .line 5
    iput v2, v1, Lk0/mt;->o:I

    const/16 v3, 0x8

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_0

    iput-object v4, v1, Lk0/mt;->m:[I

    .line 7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, v0, Lk0/c4;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v5, v0, Lk0/c4;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v5, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v5, v0, Lk0/c4;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v5, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v5, v0, Lk0/c4;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v5, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    :cond_0
    iget-object v1, v0, Lk0/c4;->o:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    sget-object v1, Lz/c;->d:Lo1/y;

    iget-object v5, v0, Lk0/c4;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v5, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget v1, Lk0/nt;->c:I

    if-eq v1, v4, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    const/16 v6, 0xaa

    const/4 v7, 0x6

    const/16 v8, 0x25

    const/16 v9, 0x33

    const/16 v10, 0xe3

    const/4 v11, 0x7

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x5

    if-eq v1, v12, :cond_8

    if-eq v1, v13, :cond_8

    if-eq v1, v14, :cond_7

    if-eq v1, v11, :cond_6

    if-eq v1, v3, :cond_5

    const/16 v3, 0x9

    if-eq v1, v3, :cond_4

    const/16 v3, 0xb

    if-eq v1, v3, :cond_3

    const/16 v3, 0xc

    if-eq v1, v3, :cond_2

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1

    .line 15
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iput v2, v1, Lk0/mt;->h:I

    goto/16 :goto_1

    .line 16
    :cond_1
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iput v5, v1, Lk0/mt;->h:I

    goto/16 :goto_1

    :cond_2
    new-array v1, v13, [I

    .line 17
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_3
    new-array v1, v13, [I

    .line 18
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_4
    move v2, v4

    goto/16 :goto_0

    :cond_5
    new-array v1, v3, [I

    aput v10, v1, v2

    aput v9, v1, v4

    aput v14, v1, v5

    aput v2, v1, v12

    .line 19
    iget-object v15, v0, Lk0/c4;->m:[I

    iget v12, v0, Lk0/c4;->n:I

    rem-int/2addr v12, v5

    aget v12, v15, v12

    aput v12, v1, v13

    aput v8, v1, v14

    aput v5, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    aput v10, v1, v2

    aput v9, v1, v4

    aput v14, v1, v5

    const/4 v12, 0x3

    aput v2, v1, v12

    .line 20
    iget-object v12, v0, Lk0/c4;->m:[I

    iget v15, v0, Lk0/c4;->n:I

    rem-int/2addr v15, v5

    aget v12, v12, v15

    aput v12, v1, v13

    aput v8, v1, v14

    aput v5, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    aput v10, v1, v2

    aput v9, v1, v4

    aput v14, v1, v5

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 21
    iget-object v3, v0, Lk0/c4;->m:[I

    iget v9, v0, Lk0/c4;->n:I

    rem-int/2addr v9, v5

    aget v3, v3, v9

    aput v3, v1, v13

    aput v8, v1, v14

    aput v5, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    .line 22
    iget v1, v0, Lk0/c4;->n:I

    add-int/2addr v1, v4

    iput v1, v0, Lk0/c4;->n:I

    .line 23
    rem-int/2addr v1, v5

    iput v1, v0, Lk0/c4;->n:I

    .line 24
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iput v2, v1, Lk0/mt;->h:I

    goto/16 :goto_1

    :cond_6
    new-array v1, v3, [I

    aput v10, v1, v2

    aput v9, v1, v4

    aput v14, v1, v5

    const/4 v12, 0x3

    aput v2, v1, v12

    .line 25
    iget-object v12, v0, Lk0/c4;->m:[I

    iget v15, v0, Lk0/c4;->n:I

    rem-int/2addr v15, v5

    aget v12, v12, v15

    aput v12, v1, v13

    aput v8, v1, v14

    aput v4, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    aput v10, v1, v2

    aput v9, v1, v4

    aput v14, v1, v5

    const/4 v12, 0x3

    aput v2, v1, v12

    .line 26
    iget-object v12, v0, Lk0/c4;->m:[I

    iget v15, v0, Lk0/c4;->n:I

    rem-int/2addr v15, v5

    aget v12, v12, v15

    aput v12, v1, v13

    aput v8, v1, v14

    aput v4, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    aput v10, v1, v2

    aput v9, v1, v4

    aput v14, v1, v5

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 27
    iget-object v3, v0, Lk0/c4;->m:[I

    iget v9, v0, Lk0/c4;->n:I

    rem-int/2addr v9, v5

    aget v3, v3, v9

    aput v3, v1, v13

    aput v8, v1, v14

    aput v4, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    .line 28
    iget v1, v0, Lk0/c4;->n:I

    add-int/2addr v1, v4

    iput v1, v0, Lk0/c4;->n:I

    .line 29
    rem-int/2addr v1, v5

    iput v1, v0, Lk0/c4;->n:I

    .line 30
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iput v2, v1, Lk0/mt;->h:I

    goto/16 :goto_1

    :cond_7
    new-array v1, v3, [I

    aput v10, v1, v2

    aput v9, v1, v4

    aput v14, v1, v5

    const/4 v12, 0x3

    aput v2, v1, v12

    .line 31
    iget-object v12, v0, Lk0/c4;->m:[I

    iget v15, v0, Lk0/c4;->n:I

    rem-int/2addr v15, v5

    aget v12, v12, v15

    aput v12, v1, v13

    aput v8, v1, v14

    const/16 v12, 0x1a

    aput v12, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    aput v10, v1, v2

    aput v9, v1, v4

    aput v14, v1, v5

    const/4 v15, 0x3

    aput v2, v1, v15

    .line 32
    iget-object v15, v0, Lk0/c4;->m:[I

    iget v4, v0, Lk0/c4;->n:I

    rem-int/2addr v4, v5

    aget v4, v15, v4

    aput v4, v1, v13

    aput v8, v1, v14

    aput v12, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    aput v10, v1, v2

    const/4 v3, 0x1

    aput v9, v1, v3

    aput v14, v1, v5

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 33
    iget-object v3, v0, Lk0/c4;->m:[I

    iget v4, v0, Lk0/c4;->n:I

    rem-int/2addr v4, v5

    aget v3, v3, v4

    aput v3, v1, v13

    aput v8, v1, v14

    aput v12, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    .line 34
    iget v1, v0, Lk0/c4;->n:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v0, Lk0/c4;->n:I

    .line 35
    rem-int/2addr v1, v5

    iput v1, v0, Lk0/c4;->n:I

    .line 36
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iput v2, v1, Lk0/mt;->h:I

    goto :goto_1

    .line 37
    :cond_8
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iput v4, v1, Lk0/mt;->h:I

    new-array v1, v3, [I

    aput v10, v1, v2

    aput v9, v1, v4

    aput v14, v1, v5

    const/4 v4, 0x3

    aput v2, v1, v4

    .line 38
    iget-object v4, v0, Lk0/c4;->m:[I

    iget v12, v0, Lk0/c4;->n:I

    rem-int/2addr v12, v5

    aget v4, v4, v12

    aput v4, v1, v13

    aput v8, v1, v14

    const/16 v4, 0x1b

    aput v4, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    aput v10, v1, v2

    const/4 v12, 0x1

    aput v9, v1, v12

    aput v14, v1, v5

    const/4 v12, 0x3

    aput v2, v1, v12

    .line 39
    iget-object v12, v0, Lk0/c4;->m:[I

    iget v15, v0, Lk0/c4;->n:I

    rem-int/2addr v15, v5

    aget v12, v12, v15

    aput v12, v1, v13

    aput v8, v1, v14

    aput v4, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    aput v10, v1, v2

    const/4 v3, 0x1

    aput v9, v1, v3

    aput v14, v1, v5

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 40
    iget-object v2, v0, Lk0/c4;->m:[I

    iget v3, v0, Lk0/c4;->n:I

    rem-int/2addr v3, v5

    aget v2, v2, v3

    aput v2, v1, v13

    aput v8, v1, v14

    aput v4, v1, v7

    aput v6, v1, v11

    invoke-static {v1}, Lz/k;->s([I)V

    .line 41
    iget v1, v0, Lk0/c4;->n:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/c4;->n:I

    .line 42
    rem-int/2addr v1, v5

    iput v1, v0, Lk0/c4;->n:I

    goto :goto_1

    .line 43
    :goto_0
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iput v2, v1, Lk0/mt;->h:I

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xca
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xca
        0x1
        0x0
    .end array-data
.end method

.method public U2([BII)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, -0x6c

    const/4 v3, 0x5

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_31

    const/16 v2, -0x6b

    const/16 v7, 0xc

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2d

    const/16 v2, 0x55

    const/16 v10, 0xb

    const/16 v12, 0x15

    const/16 v13, 0x12

    const/16 v14, 0xa

    const/16 v16, -0x3

    const/16 v17, -0x2

    const/16 v15, 0xf

    const/16 v8, 0x1c

    const/16 v9, 0x1b

    if-eq v1, v2, :cond_21

    const/16 v2, 0x66

    if-eq v1, v2, :cond_20

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_17

    .line 2
    :pswitch_0
    sget v1, Lk0/nt;->c:I

    const v2, 0x6008f

    if-eq v1, v2, :cond_0

    const v2, 0x9008f

    if-eq v1, v2, :cond_0

    goto/16 :goto_17

    :cond_0
    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 4
    aget-byte v2, p1, v2

    add-int/lit8 v18, p2, 0x6

    .line 5
    aget-byte v18, p1, v18

    new-array v11, v6, [I

    shr-int/lit8 v19, v1, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v11, v5

    .line 6
    invoke-static {v14, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v6, [I

    shr-int/lit8 v14, v1, 0x6

    and-int/2addr v14, v6

    aput v14, v11, v5

    .line 7
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    new-array v10, v6, [I

    shr-int/lit8 v11, v1, 0x5

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 8
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xd

    new-array v10, v6, [I

    shr-int/lit8 v11, v1, 0x4

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 9
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe

    new-array v10, v6, [I

    shr-int/lit8 v11, v1, 0x2

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 10
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    new-array v7, v6, [I

    shr-int/lit8 v10, v1, 0x1

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 11
    invoke-static {v15, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x26

    new-array v10, v6, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v10, v5

    .line 12
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v6

    aput v7, v1, v5

    .line 13
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v7, v6, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 14
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v7, v6, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 15
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    and-int/2addr v2, v15

    aput v2, v1, v5

    .line 16
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x4

    .line 17
    aget-byte v2, p1, v1

    add-int/lit8 v3, p2, 0x5

    .line 18
    aget-byte v7, p1, v3

    const-string v10, "persist.fyt.reversetemp"

    .line 19
    invoke-static {v10, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 20
    aget-byte v2, p1, v3

    .line 21
    aget-byte v7, p1, v1

    :cond_1
    and-int/lit16 v1, v2, 0xff

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_3

    if-eq v1, v4, :cond_2

    new-array v2, v6, [I

    aput v1, v2, v5

    .line 22
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v1, v6, [I

    aput v16, v1, v5

    .line 23
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v1, v6, [I

    aput v17, v1, v5

    .line 24
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v1, v7, 0xff

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_5

    if-eq v1, v4, :cond_4

    new-array v2, v6, [I

    aput v1, v2, v5

    .line 25
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v1, v6, [I

    aput v16, v1, v5

    .line 26
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v1, v6, [I

    aput v17, v1, v5

    .line 27
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0x1d

    new-array v2, v6, [I

    shr-int/lit8 v3, v18, 0x4

    const/4 v4, 0x3

    and-int/2addr v3, v4

    aput v3, v2, v5

    .line 28
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    and-int/lit8 v2, v18, 0x3

    aput v2, v1, v5

    const/16 v2, 0x1e

    .line 29
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_1
    add-int/lit8 v1, p2, 0x3

    .line 30
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    const/16 v3, 0x1518

    invoke-static {v1, v2, v5, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_17

    :pswitch_2
    const/4 v2, 0x2

    add-int/lit8 v1, p2, 0x2

    .line 31
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 32
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 33
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    const/4 v4, 0x2

    .line 34
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 35
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    const/4 v4, 0x2

    .line 36
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    const/4 v4, 0x4

    .line 37
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v5

    const/4 v4, 0x3

    .line 38
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 39
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 40
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :pswitch_3
    add-int/lit8 v1, p2, 0x2

    .line 41
    aget-byte v2, p1, v1

    and-int/2addr v2, v4

    add-int/lit8 v7, p2, 0x3

    .line 42
    aget-byte v8, p1, v7

    and-int/2addr v8, v4

    add-int/lit8 v9, p2, 0x4

    .line 43
    aget-byte v10, p1, v9

    and-int/2addr v10, v4

    add-int/lit8 v3, p2, 0x5

    .line 44
    aget-byte v11, p1, v3

    and-int/2addr v11, v4

    if-nez v2, :cond_7

    if-nez v8, :cond_7

    if-nez v10, :cond_7

    if-nez v11, :cond_7

    .line 45
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 46
    :cond_7
    sget v5, Ll0/c0;->g:I

    if-ne v5, v2, :cond_8

    sget v5, Ll0/c0;->h:I

    if-ne v5, v8, :cond_8

    sget v5, Ll0/c0;->i:I

    if-ne v5, v10, :cond_8

    sget v5, Ll0/c0;->j:I

    if-eq v5, v11, :cond_9

    .line 47
    :cond_8
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_9

    .line 48
    invoke-static {v6}, Lu0/d;->C2(I)V

    const/4 v5, 0x4

    .line 49
    sput v5, Ll0/c0;->k:I

    .line 50
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 51
    :cond_9
    :goto_3
    sput v2, Ll0/c0;->g:I

    .line 52
    sput v8, Ll0/c0;->h:I

    .line 53
    sput v10, Ll0/c0;->i:I

    .line 54
    sput v11, Ll0/c0;->j:I

    .line 55
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    .line 56
    aget-byte v1, p1, v7

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    .line 57
    aget-byte v1, p1, v9

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    .line 58
    aget-byte v1, p1, v3

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_17

    :pswitch_4
    add-int/lit8 v1, p2, 0x2

    .line 59
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 60
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 61
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 62
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_17

    .line 63
    :pswitch_5
    sget v1, Lk0/nt;->a:I

    const v2, 0xb008f

    if-eq v1, v2, :cond_d

    const v2, 0xc008f

    if-ne v1, v2, :cond_a

    goto :goto_4

    .line 64
    :cond_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 65
    sget v1, Lk0/nt;->a:I

    const v2, 0x3008f

    if-eq v1, v2, :cond_b

    const v2, 0x4008f

    if-eq v1, v2, :cond_b

    const v2, 0x5008f

    if-ne v1, v2, :cond_32

    :cond_b
    const/4 v1, 0x2

    add-int/lit8 v1, p2, 0x2

    .line 66
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_c

    .line 67
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_17

    .line 68
    :cond_c
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_17

    :cond_d
    :goto_4
    add-int/lit8 v1, p2, 0x2

    .line 69
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    add-int/lit8 v2, p2, 0x3

    .line 70
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    add-int/lit8 v11, p2, 0x6

    .line 71
    aget-byte v11, p1, v11

    and-int/2addr v11, v4

    new-array v8, v6, [I

    shr-int/lit8 v20, v1, 0x7

    and-int/lit8 v20, v20, 0x1

    aput v20, v8, v5

    .line 72
    invoke-static {v14, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v6, [I

    shr-int/lit8 v14, v1, 0x6

    and-int/2addr v14, v6

    aput v14, v8, v5

    .line 73
    invoke-static {v10, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v6, [I

    shr-int/lit8 v10, v1, 0x5

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 74
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xd

    new-array v8, v6, [I

    shr-int/lit8 v10, v1, 0x3

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 75
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe

    new-array v8, v6, [I

    const/4 v10, 0x2

    shr-int/2addr v1, v10

    and-int/2addr v1, v6

    aput v1, v8, v5

    .line 76
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v6

    aput v7, v1, v5

    .line 77
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x6

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 78
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 79
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    and-int/2addr v2, v15

    aput v2, v1, v5

    .line 80
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x4

    .line 81
    aget-byte v2, p1, v1

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x5

    .line 82
    aget-byte v7, p1, v3

    and-int/2addr v7, v4

    const-string v8, "persist.fyt.reversetemp"

    .line 83
    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 84
    aget-byte v2, p1, v3

    and-int/2addr v2, v4

    .line 85
    aget-byte v1, p1, v1

    and-int/lit16 v7, v1, 0xff

    :cond_e
    and-int/lit16 v1, v2, 0xff

    if-eqz v1, :cond_10

    if-eq v1, v4, :cond_f

    new-array v2, v6, [I

    aput v1, v2, v5

    .line 86
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    new-array v1, v6, [I

    aput v16, v1, v5

    .line 87
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array v1, v6, [I

    aput v17, v1, v5

    .line 88
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    :goto_5
    and-int/lit16 v1, v7, 0xff

    if-eqz v1, :cond_12

    if-eq v1, v4, :cond_11

    new-array v2, v6, [I

    aput v1, v2, v5

    const/16 v1, 0x1c

    .line 89
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    const/16 v1, 0x1c

    new-array v2, v6, [I

    aput v16, v2, v5

    .line 90
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    const/16 v1, 0x1c

    new-array v2, v6, [I

    aput v17, v2, v5

    .line 91
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v1, v6, [I

    shr-int/lit8 v2, v11, 0x7

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 92
    invoke-static {v15, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    const/4 v2, 0x6

    shr-int/lit8 v2, v11, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    const/16 v2, 0x10

    .line 93
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    .line 94
    :pswitch_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_32

    add-int/lit8 v1, p2, 0x2

    .line 95
    aget-byte v1, p1, v1

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 96
    aget-byte v2, p1, v2

    and-int/2addr v1, v4

    .line 97
    iput v1, v0, Lk0/c4;->c:I

    move v1, v5

    .line 98
    :goto_7
    iget-object v3, v0, Lk0/c4;->d:[[I

    array-length v7, v3

    if-ge v1, v7, :cond_14

    .line 99
    iget v7, v0, Lk0/c4;->c:I

    aget-object v3, v3, v1

    aget v3, v3, v5

    if-ne v7, v3, :cond_13

    if-eqz v7, :cond_14

    .line 100
    iput v1, v0, Lk0/c4;->b:I

    goto :goto_8

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 101
    :cond_14
    :goto_8
    iget v3, v0, Lk0/c4;->e:I

    and-int/2addr v2, v4

    if-eq v3, v2, :cond_17

    .line 102
    iput v2, v0, Lk0/c4;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 103
    iget v3, v0, Lk0/c4;->c:I

    const/4 v7, 0x7

    if-eq v3, v7, :cond_15

    const/16 v7, 0x9

    if-eq v3, v7, :cond_15

    if-eq v3, v14, :cond_15

    if-eq v3, v12, :cond_15

    const/16 v7, 0x16

    if-eq v3, v7, :cond_15

    goto :goto_9

    .line 104
    :cond_15
    iput-byte v5, v0, Lk0/c4;->f:B

    .line 105
    iget-object v3, v0, Lk0/c4;->g:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_16
    if-nez v2, :cond_17

    .line 106
    iget-object v3, v0, Lk0/c4;->g:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 107
    iput-byte v5, v0, Lk0/c4;->f:B

    .line 108
    :cond_17
    :goto_9
    iget v3, v0, Lk0/c4;->c:I

    const/16 v7, 0xfe

    if-eq v3, v7, :cond_1e

    packed-switch v3, :pswitch_data_2

    if-ne v2, v6, :cond_18

    .line 109
    iget-object v2, v0, Lk0/c4;->d:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 110
    iget-byte v3, v0, Lk0/c4;->i:B

    if-nez v3, :cond_32

    add-int/2addr v3, v6

    int-to-byte v3, v3

    .line 111
    iput-byte v3, v0, Lk0/c4;->i:B

    .line 112
    aget-object v1, v2, v1

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 113
    iget-object v1, v0, Lk0/c4;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_17

    :cond_18
    if-nez v2, :cond_32

    .line 114
    iget v1, v0, Lk0/c4;->b:I

    iget-object v2, v0, Lk0/c4;->d:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_19

    if-eq v1, v4, :cond_19

    .line 115
    aget-object v1, v2, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 116
    iget-object v1, v0, Lk0/c4;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 117
    iput-byte v5, v0, Lk0/c4;->i:B

    .line 118
    :cond_19
    iput v4, v0, Lk0/c4;->b:I

    goto/16 :goto_17

    :pswitch_7
    move v1, v5

    :goto_a
    if-ge v1, v2, :cond_1a

    const/16 v3, 0x1f

    .line 119
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    const/16 v1, 0x1f

    .line 120
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :pswitch_8
    move v1, v5

    :goto_b
    if-ge v1, v2, :cond_1b

    const/16 v3, 0x1e

    .line 121
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    const/16 v3, 0x1e

    .line 122
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :pswitch_9
    move v1, v5

    :goto_c
    if-ge v1, v2, :cond_1c

    const/4 v3, 0x7

    .line 123
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    const/4 v3, 0x7

    .line 124
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :pswitch_a
    move v1, v5

    :goto_d
    if-ge v1, v2, :cond_1d

    const/16 v3, 0x8

    .line 125
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    const/16 v1, 0x8

    .line 126
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_1e
    if-ne v2, v6, :cond_32

    .line 127
    sget v1, Lu0/b;->w:I

    if-nez v1, :cond_1f

    .line 128
    invoke-static {v6}, Lu0/d;->d1(I)V

    goto/16 :goto_17

    .line 129
    :cond_1f
    invoke-static {v5}, Lu0/d;->d1(I)V

    goto/16 :goto_17

    .line 130
    :cond_20
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 131
    sget v1, Lk0/nt;->a:I

    const/16 v2, 0x14d

    if-ne v1, v2, :cond_32

    const/4 v1, 0x2

    add-int/lit8 v1, p2, 0x2

    .line 132
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/c4;->d3(I)V

    goto/16 :goto_17

    .line 133
    :cond_21
    sget v1, Lk0/nt;->c:I

    const v2, 0x3008f

    if-lt v1, v2, :cond_32

    const v2, 0x8008f

    if-le v1, v2, :cond_22

    goto/16 :goto_17

    :cond_22
    add-int/lit8 v1, p2, 0x2

    .line 134
    aget-byte v2, p1, v1

    add-int/lit8 v3, p2, 0x3

    .line 135
    aget-byte v8, p1, v3

    add-int/lit8 v11, p2, 0x4

    .line 136
    aget-byte v11, p1, v11

    add-int/lit8 v19, p2, 0x5

    .line 137
    aget-byte v19, p1, v19

    add-int/lit8 v21, p2, 0x6

    .line 138
    aget-byte v21, p1, v21

    add-int/lit8 v22, p2, 0x7

    .line 139
    aget-byte v22, p1, v22

    const-string v14, "persist.fyt.reversetemp"

    .line 140
    invoke-static {v14, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 141
    aget-byte v2, p1, v3

    .line 142
    aget-byte v8, p1, v1

    :cond_23
    and-int/lit16 v1, v2, 0xff

    const/16 v2, 0x50

    const/16 v3, 0x10

    if-eq v1, v3, :cond_25

    if-eq v1, v2, :cond_24

    if-le v1, v3, :cond_26

    if-ge v1, v2, :cond_26

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 143
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_24
    new-array v1, v6, [I

    aput v16, v1, v5

    .line 144
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_25
    new-array v1, v6, [I

    aput v17, v1, v5

    .line 145
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    :cond_26
    :goto_e
    and-int/lit16 v1, v8, 0xff

    const/16 v3, 0x10

    if-eq v1, v3, :cond_28

    if-eq v1, v2, :cond_27

    if-le v1, v3, :cond_29

    if-ge v1, v2, :cond_29

    new-array v2, v6, [I

    aput v1, v2, v5

    const/16 v1, 0x1c

    .line 146
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_27
    const/16 v1, 0x1c

    new-array v2, v6, [I

    aput v16, v2, v5

    .line 147
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_28
    const/16 v1, 0x1c

    new-array v2, v6, [I

    aput v17, v2, v5

    .line 148
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :cond_29
    :goto_f
    and-int/lit8 v1, v11, 0xf

    new-array v2, v6, [I

    and-int/2addr v1, v4

    aput v1, v2, v5

    .line 149
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x4

    shr-int/lit8 v1, v11, 0x4

    and-int/2addr v1, v15

    packed-switch v1, :pswitch_data_3

    goto :goto_10

    :pswitch_b
    move v1, v6

    goto :goto_11

    :pswitch_c
    move v1, v5

    move v2, v1

    move v3, v6

    goto :goto_13

    :pswitch_d
    move v2, v5

    move v1, v6

    move v3, v1

    goto :goto_13

    :pswitch_e
    move v1, v5

    move v2, v6

    goto :goto_12

    :pswitch_f
    move v1, v5

    move v3, v1

    move v2, v6

    goto :goto_13

    :pswitch_10
    move v3, v5

    move v1, v6

    move v2, v1

    goto :goto_13

    :pswitch_11
    move v2, v5

    move v3, v2

    move v1, v6

    goto :goto_13

    :goto_10
    move v1, v5

    :goto_11
    move v2, v1

    :goto_12
    move v3, v2

    :goto_13
    const/16 v8, 0x13

    new-array v9, v6, [I

    aput v1, v9, v5

    .line 150
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v8, v6, [I

    aput v2, v8, v5

    .line 151
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    aput v3, v1, v5

    .line 152
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v6, [I

    and-int/lit8 v3, v19, 0x3

    aput v3, v2, v5

    .line 153
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1f

    new-array v2, v6, [I

    shr-int/lit8 v3, v19, 0x2

    const/4 v8, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v5

    .line 154
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v19, 0x4

    and-int/2addr v2, v8

    aput v2, v1, v5

    const/16 v2, 0x1e

    .line 155
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x20

    new-array v2, v6, [I

    const/4 v3, 0x6

    shr-int/lit8 v3, v19, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v5

    .line 156
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v6, [I

    and-int/lit8 v3, v21, 0x1

    aput v3, v2, v5

    .line 157
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v21, 0x1

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 158
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v6, [I

    shr-int/lit8 v3, v21, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 159
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v6, [I

    shr-int/lit8 v3, v21, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 160
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v6, [I

    shr-int/lit8 v3, v21, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 161
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x26

    new-array v2, v6, [I

    shr-int/lit8 v3, v21, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 162
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    const/4 v2, 0x7

    shr-int/lit8 v2, v21, 0x7

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 163
    invoke-static {v15, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v22, 0x0

    const/4 v3, 0x3

    and-int/2addr v2, v3

    aput v2, v1, v5

    .line 164
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v2, v6, [I

    shr-int/lit8 v3, v22, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 165
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 166
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_32

    add-int/lit8 v1, p2, 0x9

    .line 167
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_2c

    if-nez v1, :cond_2a

    goto :goto_15

    :cond_2a
    const-string v2, "persist.fyt.temperature"

    .line 168
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_2b

    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_2b
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 169
    :goto_14
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_17

    .line 170
    :cond_2c
    :goto_15
    invoke-static {v5}, Lu0/d;->B3(I)V

    goto/16 :goto_17

    .line 171
    :cond_2d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x2

    add-int/lit8 v1, p2, 0x2

    .line 172
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/c4;->d3(I)V

    goto/16 :goto_17

    :cond_2e
    const/4 v1, 0x2

    add-int/lit8 v1, p2, 0x2

    .line 173
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    .line 174
    iget v2, v0, Lk0/c4;->h:I

    if-eq v2, v1, :cond_32

    if-ne v1, v6, :cond_2f

    .line 175
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 176
    invoke-virtual/range {p0 .. p0}, Lk0/c4;->k3()V

    .line 177
    sget v2, Ly0/f;->i:I

    if-eq v2, v6, :cond_30

    .line 178
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    .line 179
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    goto :goto_16

    :cond_2f
    if-nez v1, :cond_30

    .line 180
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x6

    .line 181
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 182
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 183
    sget v2, Ly0/f;->i:I

    if-ne v2, v6, :cond_30

    .line 184
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    .line 185
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    .line 186
    :cond_30
    :goto_16
    iput v1, v0, Lk0/c4;->h:I

    goto :goto_17

    :cond_31
    add-int/lit8 v1, p2, 0x2

    .line 187
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 188
    aget-byte v2, p1, v2

    add-int/lit8 v7, p2, 0x4

    .line 189
    aget-byte v7, p1, v7

    add-int/lit8 v3, p2, 0x5

    .line 190
    aget-byte v3, p1, v3

    const/16 v8, 0x63

    new-array v9, v6, [I

    and-int/2addr v1, v4

    aput v1, v9, v5

    .line 191
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x64

    new-array v8, v6, [I

    and-int/2addr v2, v4

    aput v2, v8, v5

    .line 192
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x62

    new-array v2, v6, [I

    and-int/2addr v7, v4

    aput v7, v2, v5

    .line 193
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v2, v6, [I

    and-int/2addr v3, v4

    aput v3, v2, v5

    .line 194
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :cond_32
    :goto_17
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/c4;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/c4;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/c4;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/c4;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/c4;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lz/c;->d:Lo1/y;

    iget-object v1, p0, Lk0/c4;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

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
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x33

    const/4 v4, 0x6

    const/16 v5, 0xe3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v1, :cond_6

    const/16 v12, 0x10

    if-eq v1, v12, :cond_5

    const/16 v3, 0x3eb

    if-eq v1, v3, :cond_2

    if-eq v1, v11, :cond_1

    if-eq v1, v7, :cond_0

    goto/16 :goto_1

    :cond_0
    new-array v1, v9, [I

    aput v5, v1, v10

    const/16 v3, 0x83

    aput v3, v1, v8

    aput v11, v1, v11

    .line 1
    aget v3, v2, v10

    aput v3, v1, v7

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_1
    new-array v1, v9, [I

    aput v5, v1, v10

    const/16 v3, 0x82

    aput v3, v1, v8

    aput v11, v1, v11

    .line 2
    aget v3, v2, v10

    aput v3, v1, v7

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_2
    if-eqz v2, :cond_c

    .line 3
    array-length v1, v2

    if-lez v1, :cond_c

    .line 4
    sget v1, Lk0/nt;->c:I

    if-ne v1, v8, :cond_4

    .line 5
    aget v1, v2, v10

    if-nez v1, :cond_3

    new-array v1, v9, [I

    .line 6
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 7
    :cond_3
    aget v1, v2, v10

    if-ne v1, v8, :cond_c

    new-array v1, v9, [I

    .line 8
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_4
    new-array v1, v6, [I

    .line 9
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 10
    :cond_5
    sget v1, Ln0/j4;->b:I

    const/16 v12, 0x3e

    if-ne v1, v12, :cond_c

    new-array v1, v4, [I

    aput v5, v1, v10

    aput v3, v1, v8

    aput v7, v1, v11

    .line 11
    aget v3, v2, v10

    aput v3, v1, v7

    aget v3, v2, v8

    aput v3, v1, v6

    aget v2, v2, v11

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 12
    :cond_6
    sget v1, Lk0/nt;->c:I

    const/16 v12, 0xaa

    const/16 v13, 0x25

    const/16 v14, 0x8

    const/4 v15, 0x7

    if-ne v1, v15, :cond_7

    invoke-virtual {v0, v2, v8}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_7

    new-array v1, v14, [I

    aput v5, v1, v10

    aput v3, v1, v8

    aput v9, v1, v11

    .line 13
    aget v16, v2, v10

    aput v16, v1, v7

    iget-object v7, v0, Lk0/c4;->m:[I

    iget v3, v0, Lk0/c4;->n:I

    rem-int/2addr v3, v11

    aget v3, v7, v3

    aput v3, v1, v6

    aput v13, v1, v9

    aput v8, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v3, 0x33

    aput v3, v1, v8

    aput v9, v1, v11

    .line 14
    aget v3, v2, v10

    const/4 v7, 0x3

    aput v3, v1, v7

    iget-object v3, v0, Lk0/c4;->m:[I

    iget v7, v0, Lk0/c4;->n:I

    rem-int/2addr v7, v11

    aget v3, v3, v7

    aput v3, v1, v6

    aput v13, v1, v9

    aput v8, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v3, 0x33

    aput v3, v1, v8

    aput v9, v1, v11

    .line 15
    aget v2, v2, v10

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v2, v0, Lk0/c4;->m:[I

    iget v3, v0, Lk0/c4;->n:I

    rem-int/2addr v3, v11

    aget v2, v2, v3

    aput v2, v1, v6

    aput v13, v1, v9

    aput v8, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 16
    :cond_7
    sget v1, Lk0/nt;->c:I

    if-ne v1, v14, :cond_8

    invoke-virtual {v0, v2, v8}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_8

    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v3, 0x33

    aput v3, v1, v8

    aput v9, v1, v11

    .line 17
    aget v3, v2, v10

    const/4 v7, 0x3

    aput v3, v1, v7

    iget-object v3, v0, Lk0/c4;->m:[I

    iget v7, v0, Lk0/c4;->n:I

    rem-int/2addr v7, v11

    aget v3, v3, v7

    aput v3, v1, v6

    aput v13, v1, v9

    aput v11, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v3, 0x33

    aput v3, v1, v8

    aput v9, v1, v11

    .line 18
    aget v3, v2, v10

    const/4 v7, 0x3

    aput v3, v1, v7

    iget-object v3, v0, Lk0/c4;->m:[I

    iget v7, v0, Lk0/c4;->n:I

    rem-int/2addr v7, v11

    aget v3, v3, v7

    aput v3, v1, v6

    aput v13, v1, v9

    aput v11, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v3, 0x33

    aput v3, v1, v8

    aput v9, v1, v11

    .line 19
    aget v2, v2, v10

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v2, v0, Lk0/c4;->m:[I

    iget v3, v0, Lk0/c4;->n:I

    rem-int/2addr v3, v11

    aget v2, v2, v3

    aput v2, v1, v6

    aput v13, v1, v9

    aput v11, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 20
    :cond_8
    sget v1, Lk0/nt;->c:I

    if-eq v1, v4, :cond_9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_a

    :cond_9
    invoke-virtual {v0, v2, v11}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_a

    new-array v1, v9, [I

    aput v5, v1, v10

    const/16 v3, 0xda

    aput v3, v1, v8

    aput v11, v1, v11

    .line 21
    aget v3, v2, v10

    const/4 v4, 0x3

    aput v3, v1, v4

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 22
    :cond_a
    sget v1, Lk0/nt;->c:I

    if-ne v1, v6, :cond_b

    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v3, 0x33

    aput v3, v1, v8

    aput v9, v1, v11

    .line 23
    aget v3, v2, v10

    const/4 v7, 0x3

    aput v3, v1, v7

    iget-object v3, v0, Lk0/c4;->m:[I

    iget v7, v0, Lk0/c4;->n:I

    rem-int/2addr v7, v11

    aget v3, v3, v7

    aput v3, v1, v6

    aput v13, v1, v9

    const/16 v3, 0x1a

    aput v3, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v7, 0x33

    aput v7, v1, v8

    aput v9, v1, v11

    .line 24
    aget v7, v2, v10

    const/16 v16, 0x3

    aput v7, v1, v16

    iget-object v7, v0, Lk0/c4;->m:[I

    iget v8, v0, Lk0/c4;->n:I

    rem-int/2addr v8, v11

    aget v7, v7, v8

    aput v7, v1, v6

    aput v13, v1, v9

    aput v3, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v5, 0x33

    const/4 v7, 0x1

    aput v5, v1, v7

    aput v9, v1, v11

    .line 25
    aget v2, v2, v10

    const/4 v5, 0x3

    aput v2, v1, v5

    iget-object v2, v0, Lk0/c4;->m:[I

    iget v5, v0, Lk0/c4;->n:I

    rem-int/2addr v5, v11

    aget v2, v2, v5

    aput v2, v1, v6

    aput v13, v1, v9

    aput v3, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_b
    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v3, 0x33

    const/4 v7, 0x1

    aput v3, v1, v7

    aput v9, v1, v11

    .line 26
    aget v3, v2, v10

    const/4 v7, 0x3

    aput v3, v1, v7

    iget-object v3, v0, Lk0/c4;->m:[I

    iget v7, v0, Lk0/c4;->n:I

    rem-int/2addr v7, v11

    aget v3, v3, v7

    aput v3, v1, v6

    aput v13, v1, v9

    const/16 v3, 0x1b

    aput v3, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v7, 0x33

    const/4 v8, 0x1

    aput v7, v1, v8

    aput v9, v1, v11

    .line 27
    aget v7, v2, v10

    const/4 v8, 0x3

    aput v7, v1, v8

    iget-object v7, v0, Lk0/c4;->m:[I

    iget v8, v0, Lk0/c4;->n:I

    rem-int/2addr v8, v11

    aget v7, v7, v8

    aput v7, v1, v6

    aput v13, v1, v9

    aput v3, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    aput v5, v1, v10

    const/16 v5, 0x33

    const/4 v7, 0x1

    aput v5, v1, v7

    aput v9, v1, v11

    .line 28
    aget v2, v2, v10

    const/4 v5, 0x3

    aput v2, v1, v5

    iget-object v2, v0, Lk0/c4;->m:[I

    iget v5, v0, Lk0/c4;->n:I

    rem-int/2addr v5, v11

    aget v2, v2, v5

    aput v2, v1, v6

    aput v13, v1, v9

    aput v3, v1, v4

    aput v12, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    .line 29
    :goto_0
    iget v1, v0, Lk0/c4;->n:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/c4;->n:I

    .line 30
    rem-int/2addr v1, v11

    iput v1, v0, Lk0/c4;->n:I

    :cond_c
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data
.end method

.method public final a3()V
    .locals 14

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-virtual {p0, v1}, Lk0/c4;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/16 v8, 0x9

    const/4 v9, 0x6

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    if-eq v5, v10, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v8, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 4
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 5
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto/16 :goto_2

    .line 7
    :cond_1
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_2

    aput v3, v1, v10

    .line 8
    sget v2, Lo0/e;->B:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 9
    sget v2, Lo0/e;->C:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 10
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v7

    .line 11
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 12
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 13
    :cond_2
    sget v2, Lo0/e;->C:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 14
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 15
    sget v2, Lo0/e;->r:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 16
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 17
    :cond_3
    sget v5, Lw0/d;->i:I

    .line 18
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 19
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_4

    aput v2, v1, v10

    goto :goto_0

    :cond_4
    const v13, 0x10001

    if-ne v12, v13, :cond_5

    const/4 v2, 0x2

    aput v2, v1, v10

    goto :goto_0

    :cond_5
    const v13, 0x10002

    if-ne v12, v13, :cond_6

    aput v3, v1, v10

    goto :goto_0

    :cond_6
    const/16 v13, 0x10

    if-nez v12, :cond_7

    aput v13, v1, v10

    goto :goto_0

    :cond_7
    if-ne v12, v2, :cond_8

    aput v13, v1, v10

    :cond_8
    :goto_0
    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v6

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 20
    rem-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_9

    if-eqz v11, :cond_9

    aput v9, v1, v7

    goto :goto_1

    :cond_9
    aput v2, v1, v7

    :goto_1
    aput v3, v1, v4

    aput v3, v1, v8

    :goto_2
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 21
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 22
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3([I)V
    .locals 8

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x10

    const/16 v3, 0xb

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    aput v6, p1, v7

    .line 4
    aput v6, p1, v1

    goto :goto_0

    .line 5
    :pswitch_0
    aput v4, p1, v7

    .line 6
    aput v2, p1, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    .line 7
    aput v0, p1, v7

    const/16 v0, 0x12

    .line 8
    aput v0, p1, v1

    goto :goto_0

    .line 9
    :pswitch_2
    aput v1, p1, v7

    .line 10
    aput v6, p1, v1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    .line 11
    aput v0, p1, v7

    const/16 v0, 0x30

    .line 12
    aput v0, p1, v1

    goto :goto_0

    .line 13
    :pswitch_4
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    .line 14
    aput v7, p1, v7

    .line 15
    aput v2, p1, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    if-ne v0, v7, :cond_2

    .line 16
    aput v4, p1, v7

    .line 17
    aput v2, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 18
    aput v4, p1, v7

    .line 19
    aput v2, p1, v1

    goto :goto_0

    .line 20
    :pswitch_5
    aput v3, p1, v7

    .line 21
    aput v6, p1, v1

    goto :goto_0

    .line 22
    :pswitch_6
    aput v3, p1, v7

    .line 23
    aput v6, p1, v1

    goto :goto_0

    .line 24
    :pswitch_7
    aput v5, p1, v7

    .line 25
    aput v5, p1, v1

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x80

    aput v2, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x24

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1c

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1
    :pswitch_1
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 2
    :pswitch_2
    sget p1, Lh0/c;->E:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 3
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/16 v0, 0x214

    invoke-virtual {p1, v0}, Lc/e;->c(I)Z

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-static {}, Lo1/u;->Z0()I

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 8
    :pswitch_6
    sget p1, Lu0/b;->D:I

    if-eq p1, v2, :cond_1

    .line 9
    invoke-static {}, Lo1/u;->x0()V

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    const/16 v2, 0x1b

    aput v2, p1, v0

    .line 10
    invoke-static {v1, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    .line 11
    :pswitch_7
    invoke-static {}, Lo1/u;->j()I

    goto :goto_0

    .line 12
    :pswitch_8
    invoke-static {}, Lo1/u;->q()V

    goto :goto_0

    .line 13
    :pswitch_9
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 14
    :pswitch_a
    invoke-static {}, Lo1/u;->E()I

    goto :goto_0

    .line 15
    :pswitch_b
    sget p1, Lu0/b;->D:I

    if-eq p1, v2, :cond_2

    .line 16
    invoke-static {}, Lo1/u;->x0()V

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    const/16 v2, 0x1d

    aput v2, p1, v0

    .line 17
    invoke-static {v1, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    .line 18
    :pswitch_c
    sget p1, Lu0/b;->D:I

    if-eq p1, v2, :cond_3

    .line 19
    invoke-static {}, Lo1/u;->x0()V

    goto :goto_0

    :cond_3
    new-array p1, v2, [I

    aput v1, p1, v0

    .line 20
    invoke-static {v1, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    .line 21
    :pswitch_d
    sget p1, Lu0/b;->D:I

    if-eq p1, v2, :cond_4

    .line 22
    invoke-static {}, Lo1/u;->x0()V

    goto :goto_0

    :cond_4
    new-array p1, v2, [I

    const/16 v2, 0x1e

    aput v2, p1, v0

    .line 23
    invoke-static {v1, p1}, Lw0/f;->J(I[I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final e3(I)V
    .locals 6

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x6008f

    if-eq v0, v4, :cond_1

    const v4, 0x9008f

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    aput p1, v0, v3

    .line 2
    invoke-virtual {p0, v3, v0, v2, v2}, Lk0/c4;->Z0(I[I[F[Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    :goto_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    const/16 p1, 0x8

    :cond_2
    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    move p1, v1

    :cond_3
    const/4 v4, 0x4

    const/4 v5, 0x5

    if-ne p1, v4, :cond_4

    move p1, v5

    :cond_4
    if-ne p1, v5, :cond_5

    const/16 p1, 0x26

    :cond_5
    const/4 v4, 0x6

    if-ne p1, v4, :cond_6

    const/16 p1, 0x27

    :cond_6
    const/16 v5, 0x14

    if-ne p1, v5, :cond_7

    goto :goto_1

    :cond_7
    move v4, p1

    :goto_1
    const/16 p1, 0x15

    if-ne v4, p1, :cond_8

    const/4 v4, 0x7

    :cond_8
    const/16 p1, 0x9

    const/16 v5, 0xc

    if-ne v4, p1, :cond_9

    move v4, v5

    :cond_9
    const/16 p1, 0xa

    if-ne v4, p1, :cond_a

    goto :goto_2

    :cond_a
    move v0, v4

    :goto_2
    const/16 p1, 0xb

    if-ne v0, p1, :cond_b

    const/16 v0, 0xe

    :cond_b
    if-ne v0, v5, :cond_c

    const/16 v0, 0xf

    :cond_c
    const/4 p1, 0x2

    new-array v4, p1, [I

    aput v0, v4, v3

    aput v1, v4, v1

    .line 3
    invoke-virtual {p0, v3, v4, v2, v2}, Lk0/c4;->Z0(I[I[F[Ljava/lang/String;)V

    new-array p1, p1, [I

    aput v0, p1, v3

    aput v3, p1, v1

    .line 4
    invoke-virtual {p0, v3, p1, v2, v2}, Lk0/c4;->Z0(I[I[F[Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final k3()V
    .locals 3

    const-string v0, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
