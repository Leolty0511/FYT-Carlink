.class public Lk0/ge;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Z

.field public q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0xff

    .line 2
    iput v1, v0, Lk0/ge;->e:I

    const/16 v1, 0xf

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v8, 0x4

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v9, 0x5

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v10, 0x6

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v11, 0x7

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v12, 0x8

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v13, 0x9

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v14, 0xa

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v15, 0xb

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v16, 0xc

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v17, 0xd

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v18, 0xe

    aput-object v4, v2, v18

    iput-object v2, v0, Lk0/ge;->f:[[I

    new-array v1, v1, [[I

    new-array v2, v3, [I

    .line 4
    fill-array-data v2, :array_f

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v1, v8

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v1, v9

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v1, v10

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v1, v11

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v1, v12

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v1, v13

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v1, v14

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v1, v15

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v1, v16

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v1, v17

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v1, v18

    iput-object v1, v0, Lk0/ge;->g:[[I

    .line 5
    iput v5, v0, Lk0/ge;->h:I

    .line 6
    iput v5, v0, Lk0/ge;->i:I

    .line 7
    new-instance v1, Lk0/ge$a;

    invoke-direct {v1, v0}, Lk0/ge$a;-><init>(Lk0/ge;)V

    iput-object v1, v0, Lk0/ge;->j:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lk0/ge$b;

    invoke-direct {v1, v0}, Lk0/ge$b;-><init>(Lk0/ge;)V

    iput-object v1, v0, Lk0/ge;->k:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lk0/ge$c;

    invoke-direct {v1, v0}, Lk0/ge$c;-><init>(Lk0/ge;)V

    iput-object v1, v0, Lk0/ge;->l:Ljava/lang/Runnable;

    .line 10
    iput v5, v0, Lk0/ge;->m:I

    .line 11
    new-instance v1, Lk0/ge$d;

    invoke-direct {v1, v0}, Lk0/ge$d;-><init>(Lk0/ge;)V

    iput-object v1, v0, Lk0/ge;->n:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/ge$e;

    invoke-direct {v1, v0}, Lk0/ge$e;-><init>(Lk0/ge;)V

    iput-object v1, v0, Lk0/ge;->o:Ljava/lang/Runnable;

    .line 13
    iput-boolean v6, v0, Lk0/ge;->p:Z

    .line 14
    new-instance v1, Lk0/ge$g;

    invoke-direct {v1, v0}, Lk0/ge$g;-><init>(Lk0/ge;)V

    iput-object v1, v0, Lk0/ge;->q:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
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
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x18
        0x37
    .end array-data

    :array_e
    .array-data 4
        0x40
        0xd
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_14
    .array-data 4
        0x1f
        0x35
    .end array-data

    :array_15
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_18
    .array-data 4
        0x2d
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x2f
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_1b
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_1c
    .array-data 4
        0x46
        0x8
    .end array-data

    :array_1d
    .array-data 4
        0x61
        0x3e
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x2

    .line 1
    div-int/lit8 p0, p0, 0x3

    :goto_0
    return p0
.end method

.method public static synthetic c3(Lk0/ge;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ge;->b3(I)V

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

    if-eqz p1, :cond_8

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

    const/16 p1, 0xd

    .line 4
    invoke-virtual {p0, p1}, Lk0/ge;->b3(I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0xe

    .line 5
    invoke-virtual {p0, p1}, Lk0/ge;->b3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 7
    invoke-virtual {p0, v3}, Lk0/ge;->b3(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v2}, Lk0/ge;->b3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget v0, p1, v4

    const/4 v1, 0x7

    if-ne v0, v4, :cond_3

    .line 10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_8

    .line 11
    invoke-virtual {p0, v1}, Lk0/ge;->b3(I)V

    goto/16 :goto_0

    .line 12
    :cond_3
    aget p1, p1, v4

    if-nez p1, :cond_8

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v4, :cond_8

    .line 14
    invoke-virtual {p0, v1}, Lk0/ge;->b3(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_4
    aget p1, p1, v4

    const/4 v0, 0x6

    const/16 v1, 0x10

    if-eqz p1, :cond_4

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_8

    .line 17
    invoke-virtual {p0, v0}, Lk0/ge;->b3(I)V

    goto :goto_0

    .line 18
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v4, :cond_8

    .line 19
    invoke-virtual {p0, v0}, Lk0/ge;->b3(I)V

    goto :goto_0

    .line 20
    :pswitch_5
    aget p1, p1, v4

    const/4 v0, 0x5

    const/16 v1, 0x41

    if-eqz p1, :cond_5

    .line 21
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_8

    .line 22
    invoke-virtual {p0, v0}, Lk0/ge;->b3(I)V

    goto :goto_0

    .line 23
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v4, :cond_8

    .line 24
    invoke-virtual {p0, v0}, Lk0/ge;->b3(I)V

    goto :goto_0

    .line 25
    :pswitch_6
    aget p1, p1, v4

    if-eqz p1, :cond_6

    .line 26
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_8

    .line 27
    invoke-virtual {p0, v1}, Lk0/ge;->b3(I)V

    goto :goto_0

    .line 28
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v4, :cond_8

    .line 29
    invoke-virtual {p0, v1}, Lk0/ge;->b3(I)V

    goto :goto_0

    .line 30
    :pswitch_7
    aget p1, p1, v4

    const/16 v0, 0xa

    if-eqz p1, :cond_7

    .line 31
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_8

    .line 32
    invoke-virtual {p0, v4}, Lk0/ge;->b3(I)V

    goto :goto_0

    .line 33
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v4, :cond_8

    .line 34
    invoke-virtual {p0, v4}, Lk0/ge;->b3(I)V

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 9
    :goto_0
    sget v0, Lk0/nt;->c:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x2

    iput v3, v0, Lk0/mt;->h:I

    .line 11
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v3, p0, Lk0/ge;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 13
    :goto_1
    iget-object v0, p0, Lk0/ge;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/ge;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/ge;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lz/c;->d:Lo1/y;

    iget-object v1, p0, Lk0/ge;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x21
        0x22
        0x24
        0x25
        0x26
        0x27
        0x29
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

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

    if-eq v2, v3, :cond_3b

    const/16 v3, -0x10

    const/4 v8, 0x2

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x1a

    const/16 v9, 0xa

    const v11, 0xff00

    const/16 v12, 0x8

    if-eq v2, v3, :cond_39

    const/16 v3, 0x3f

    const/16 v14, 0xb

    if-eq v2, v3, :cond_38

    const/16 v3, 0x41

    if-eq v2, v3, :cond_34

    const/16 v3, 0x48

    if-eq v2, v3, :cond_33

    const/16 v3, 0x66

    const/16 v13, 0x11

    const/4 v10, 0x6

    if-eq v2, v3, :cond_32

    if-eq v2, v13, :cond_2b

    const/16 v3, 0x12

    if-eq v2, v3, :cond_29

    const/16 v13, 0x14

    const/16 v3, 0x32

    if-eq v2, v13, :cond_28

    const/16 v13, 0x15

    if-eq v2, v13, :cond_27

    const/16 v13, 0x21

    if-eq v2, v13, :cond_14

    const/16 v13, 0x22

    if-eq v2, v13, :cond_1c

    const/16 v13, 0x31

    if-eq v2, v13, :cond_3

    if-eq v2, v3, :cond_2

    const/16 v3, 0x34

    if-eq v2, v3, :cond_1

    const/16 v3, 0x35

    if-eq v2, v3, :cond_0

    goto/16 :goto_1b

    :cond_0
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 2
    aget-byte v9, v1, v5

    shr-int/2addr v9, v10

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    .line 3
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 4
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 5
    aget-byte v9, v1, v5

    shr-int/lit8 v4, v9, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v7, [I

    .line 6
    aget-byte v1, v1, v5

    shr-int/2addr v1, v8

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :cond_1
    const/16 v2, 0xa2

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 7
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, v1, v8

    shl-int/2addr v8, v12

    and-int/2addr v8, v11

    or-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x8

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 8
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v11

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 9
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v11

    add-int/lit8 v8, p2, 0xd

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 10
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v11

    add-int/lit8 v8, p2, 0xf

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x11

    .line 11
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v11

    add-int/lit8 v8, p2, 0x12

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x16

    .line 12
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v11

    add-int/lit8 v7, p2, 0x17

    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :cond_2
    const/16 v2, 0x408

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 13
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v11

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 14
    aget-byte v1, v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    .line 16
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    add-int/lit8 v11, p2, 0x4

    .line 17
    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    add-int/lit8 v12, p2, 0x6

    .line 18
    aget-byte v12, v1, v12

    and-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x7

    .line 19
    aget-byte v13, v1, v13

    and-int/2addr v13, v5

    add-int/lit8 v16, p2, 0x8

    .line 20
    aget-byte v10, v1, v16

    and-int/2addr v10, v5

    add-int/lit8 v17, p2, 0x9

    .line 21
    aget-byte v15, v1, v17

    and-int/2addr v15, v5

    new-array v5, v7, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v5, v6

    .line 22
    invoke-static {v9, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v7

    aput v9, v5, v6

    const/16 v9, 0xd

    .line 23
    invoke-static {v9, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    aput v2, v5, v6

    const/16 v2, 0xe

    .line 24
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v5, v7, [I

    shr-int/lit8 v18, v3, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v5, v6

    .line 25
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v7

    aput v5, v2, v6

    .line 26
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v4

    aput v5, v2, v6

    const/16 v5, 0xc

    .line 27
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v5, v7, [I

    shr-int/lit8 v14, v3, 0x1

    and-int/2addr v14, v7

    aput v14, v5, v6

    .line 28
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v5, v7, [I

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v5, v6

    .line 29
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v7, [I

    shr-int/lit8 v5, v11, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v7, [I

    shr-int/lit8 v5, v11, 0x6

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 31
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v5, v11, 0x5

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 32
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    shr-int/lit8 v5, v11, 0x4

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 33
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    shr-int/lit8 v5, v11, 0x2

    and-int/2addr v5, v4

    aput v5, v3, v6

    .line 34
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    shr-int/lit8 v5, v11, 0x0

    and-int/2addr v5, v4

    aput v5, v3, v6

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x59

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 36
    aget-byte v11, v1, v5

    shr-int/2addr v11, v8

    and-int/2addr v11, v4

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x58

    new-array v3, v7, [I

    .line 37
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v12, 0xf

    if-eq v2, v7, :cond_8

    if-eq v2, v8, :cond_7

    if-eq v2, v4, :cond_6

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    move v2, v6

    move v3, v2

    :goto_0
    move v5, v3

    :goto_1
    move v11, v5

    goto :goto_2

    :pswitch_0
    move v2, v6

    move v3, v7

    goto :goto_0

    :pswitch_1
    move v2, v6

    move v11, v2

    move v3, v7

    move v5, v3

    goto :goto_2

    :pswitch_2
    move v2, v6

    move v5, v2

    move v3, v7

    move v11, v3

    goto :goto_2

    :cond_4
    move v2, v6

    move v3, v2

    move v11, v3

    move v5, v7

    goto :goto_2

    :cond_5
    move v2, v6

    move v3, v2

    move v5, v7

    goto :goto_1

    :cond_6
    move v2, v6

    move v3, v2

    move v5, v3

    move v11, v7

    goto :goto_2

    :cond_7
    move v2, v6

    move v5, v2

    move v11, v5

    move v3, v7

    goto :goto_2

    :cond_8
    move v3, v6

    move v5, v3

    move v11, v5

    move v2, v7

    :goto_2
    const/16 v12, 0x31

    new-array v14, v7, [I

    aput v2, v14, v6

    .line 38
    invoke-static {v12, v14}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v3, v2, v6

    const/16 v3, 0x12

    .line 39
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    aput v5, v3, v6

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v11, v3, v6

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    const/16 v5, 0xff

    and-int/lit16 v11, v13, 0xff

    aput v11, v3, v6

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 43
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 44
    aget-byte v2, v1, v17

    and-int/lit16 v10, v2, 0xff

    .line 45
    aget-byte v2, v1, v16

    and-int/lit16 v15, v2, 0xff

    :cond_9
    const/16 v2, 0xfe

    if-ne v10, v2, :cond_a

    const/16 v2, 0x1b

    new-array v3, v7, [I

    const/4 v10, -0x2

    aput v10, v3, v6

    .line 46
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    if-ne v10, v5, :cond_b

    const/16 v2, 0x1b

    new-array v3, v7, [I

    const/4 v5, -0x3

    aput v5, v3, v6

    .line 47
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    const/16 v2, 0x1b

    new-array v3, v7, [I

    aput v10, v3, v6

    .line 48
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0xfe

    if-ne v15, v2, :cond_c

    const/16 v2, 0x1c

    new-array v3, v7, [I

    const/4 v5, -0x2

    aput v5, v3, v6

    .line 49
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    const/16 v2, 0xff

    if-ne v15, v2, :cond_d

    const/16 v2, 0x1c

    new-array v3, v7, [I

    const/4 v5, -0x3

    aput v5, v3, v6

    .line 50
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    const/16 v2, 0x1c

    new-array v3, v7, [I

    aput v15, v3, v6

    .line 51
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0xa

    .line 52
    aget-byte v2, v1, v2

    if-eq v2, v7, :cond_10

    if-eq v2, v8, :cond_f

    if-eq v2, v4, :cond_e

    move v2, v6

    :goto_5
    move v3, v2

    goto :goto_6

    :cond_e
    move v2, v7

    goto :goto_5

    :cond_f
    move v3, v6

    move v2, v7

    goto :goto_6

    :cond_10
    move v2, v6

    move v3, v7

    :goto_6
    const/16 v4, 0x30

    new-array v5, v7, [I

    aput v2, v5, v6

    .line 53
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2e

    new-array v5, v7, [I

    aput v2, v5, v6

    .line 54
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v4, v7, [I

    aput v3, v4, v6

    .line 55
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 56
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 57
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    const/16 v4, 0xfe

    if-ne v3, v4, :cond_11

    const/16 v2, 0x28

    new-array v3, v7, [I

    const/4 v4, -0x2

    aput v4, v3, v6

    .line 58
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 59
    :cond_11
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_12

    const/16 v2, 0x28

    new-array v3, v7, [I

    const/4 v4, -0x3

    aput v4, v3, v6

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_12
    const/16 v3, 0x28

    new-array v4, v7, [I

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    aput v2, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 v2, p2, 0xd

    .line 62
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    if-nez v1, :cond_13

    .line 63
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_1b

    :cond_13
    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 64
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_1b

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lk0/ge;->d:I

    add-int/lit8 v2, p2, 0x3

    .line 66
    aget-byte v2, v1, v2

    move v3, v6

    .line 67
    :goto_8
    iget-object v5, v0, Lk0/ge;->g:[[I

    array-length v9, v5

    if-ge v3, v9, :cond_16

    .line 68
    iget v9, v0, Lk0/ge;->d:I

    aget-object v10, v5, v3

    aget v10, v10, v6

    if-ne v9, v10, :cond_15

    if-eqz v9, :cond_16

    .line 69
    iput v3, v0, Lk0/ge;->e:I

    goto :goto_9

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 70
    :cond_16
    :goto_9
    iget v9, v0, Lk0/ge;->d:I

    const/16 v10, 0x61

    if-eq v9, v10, :cond_1a

    const/16 v9, 0xff

    and-int/2addr v2, v9

    if-eqz v2, :cond_17

    .line 71
    array-length v2, v5

    if-ge v3, v2, :cond_1c

    .line 72
    aget-object v2, v5, v3

    aget v2, v2, v7

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 73
    :cond_17
    iget v2, v0, Lk0/ge;->e:I

    array-length v3, v5

    if-ge v2, v3, :cond_18

    const/16 v3, 0xff

    if-eq v2, v3, :cond_19

    .line 74
    aget-object v2, v5, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_18
    const/16 v3, 0xff

    .line 75
    :cond_19
    :goto_a
    iput v3, v0, Lk0/ge;->e:I

    goto :goto_b

    :cond_1a
    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v7, :cond_1c

    .line 76
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_1b

    .line 77
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.air.ActivityNewAir"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 78
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.syu.canbus"

    const-string v5, "com.syu.carinfo.air.ActivityNewAir"

    .line 79
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    .line 80
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 81
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    :cond_1b
    const/16 v2, 0x3e

    .line 83
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 84
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    :cond_1c
    :goto_b
    add-int/lit8 v2, p2, 0x2

    .line 85
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 86
    aget-byte v1, v1, v3

    if-eq v2, v7, :cond_22

    if-eq v2, v8, :cond_1d

    goto/16 :goto_1b

    .line 87
    :cond_1d
    iget v2, v0, Lk0/ge;->i:I

    if-eq v1, v2, :cond_3d

    if-le v1, v2, :cond_1f

    move v2, v6

    .line 88
    :goto_c
    iget v3, v0, Lk0/ge;->i:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_1e

    const/16 v3, 0x1f

    .line 89
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1e
    const/16 v2, 0x1f

    .line 90
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_1f
    if-ge v1, v2, :cond_21

    move v2, v6

    .line 91
    :goto_d
    iget v3, v0, Lk0/ge;->i:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_20

    const/16 v3, 0x1e

    .line 92
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_20
    const/16 v2, 0x1e

    .line 93
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 94
    :cond_21
    :goto_e
    iput v1, v0, Lk0/ge;->i:I

    goto/16 :goto_1b

    .line 95
    :cond_22
    iget v2, v0, Lk0/ge;->h:I

    if-eq v1, v2, :cond_3d

    if-le v1, v2, :cond_24

    move v2, v6

    .line 96
    :goto_f
    iget v3, v0, Lk0/ge;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_23

    const/4 v3, 0x7

    .line 97
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_23
    const/4 v3, 0x7

    .line 98
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto :goto_11

    :cond_24
    if-ge v1, v2, :cond_26

    move v2, v6

    .line 99
    :goto_10
    iget v3, v0, Lk0/ge;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_25

    .line 100
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 101
    :cond_25
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    .line 102
    :cond_26
    :goto_11
    iput v1, v0, Lk0/ge;->h:I

    goto/16 :goto_1b

    :cond_27
    move v2, v6

    :goto_12
    if-ge v2, v3, :cond_3d

    .line 103
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    const/16 v9, 0xa9

    new-array v10, v8, [I

    aput v2, v10, v6

    add-int v11, p2, v2

    add-int/2addr v11, v4

    aget-byte v11, v1, v11

    const/16 v12, 0xff

    and-int/2addr v11, v12

    aput v11, v10, v7

    const/4 v11, 0x0

    invoke-static {v5, v9, v10, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_28
    move v2, v6

    :goto_13
    if-ge v2, v3, :cond_3d

    .line 104
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    const/16 v9, 0xa8

    new-array v10, v8, [I

    aput v2, v10, v6

    add-int v11, p2, v2

    add-int/2addr v11, v4

    aget-byte v11, v1, v11

    const/16 v12, 0xff

    and-int/2addr v11, v12

    aput v11, v10, v7

    const/4 v11, 0x0

    invoke-static {v5, v9, v10, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_29
    move v12, v5

    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 105
    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    const-string v2, "persist.syu.reversefrontdoor"

    .line 106
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 107
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 108
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_2a
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 109
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 110
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_14
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 111
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x4

    .line 112
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x5

    .line 113
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 114
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :cond_2b
    add-int/lit8 v2, p2, 0x4

    .line 115
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 116
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 117
    iput v2, v0, Lk0/ge;->c:I

    move v2, v6

    .line 118
    :goto_15
    iget-object v4, v0, Lk0/ge;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_2d

    .line 119
    iget v5, v0, Lk0/ge;->c:I

    aget-object v8, v4, v2

    aget v8, v8, v6

    if-ne v5, v8, :cond_2c

    if-eqz v5, :cond_2d

    .line 120
    iput v2, v0, Lk0/ge;->b:I

    goto :goto_16

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2d
    :goto_16
    const/16 v5, 0xff

    and-int/2addr v3, v5

    if-eqz v3, :cond_2f

    .line 121
    array-length v3, v4

    if-ge v2, v3, :cond_2e

    .line 122
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    :cond_2e
    const/16 v3, 0xff

    goto :goto_18

    .line 123
    :cond_2f
    iget v2, v0, Lk0/ge;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_30

    const/16 v3, 0xff

    if-eq v2, v3, :cond_31

    .line 124
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_17

    :cond_30
    const/16 v3, 0xff

    .line 125
    :cond_31
    :goto_17
    iput v3, v0, Lk0/ge;->b:I

    :goto_18
    add-int/lit8 v2, p2, 0x9

    .line 126
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_1b

    :cond_32
    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 127
    aget-byte v9, v1, v5

    const/4 v10, 0x7

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v7, [I

    .line 128
    aget-byte v9, v1, v5

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    .line 129
    aget-byte v9, v1, v5

    const/4 v10, 0x5

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 130
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    .line 131
    aget-byte v9, v1, v5

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    .line 132
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    .line 133
    aget-byte v9, v1, v5

    shr-int/2addr v9, v7

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    .line 134
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 135
    aget-byte v9, v1, v5

    const/4 v10, 0x5

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v7, [I

    .line 136
    aget-byte v5, v1, v5

    const/4 v9, 0x7

    shr-int/2addr v5, v9

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 137
    aget-byte v10, v1, v5

    shr-int/2addr v10, v9

    and-int/lit8 v9, v10, 0x1

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 138
    aget-byte v9, v1, v5

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    .line 139
    aget-byte v9, v1, v5

    const/4 v10, 0x5

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    .line 140
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    .line 141
    aget-byte v9, v1, v5

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    .line 142
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    .line 143
    aget-byte v9, v1, v5

    shr-int/2addr v9, v7

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v7, [I

    .line 144
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 145
    aget-byte v9, v1, v5

    const/4 v10, 0x7

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v7, [I

    .line 146
    aget-byte v9, v1, v5

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 147
    aget-byte v9, v1, v5

    const/4 v10, 0x5

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    .line 148
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    .line 149
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    .line 150
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 151
    aget-byte v9, v1, v5

    const/4 v10, 0x7

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 152
    aget-byte v9, v1, v5

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    .line 153
    aget-byte v9, v1, v5

    const/4 v10, 0x5

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 154
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 155
    aget-byte v9, v1, v5

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    .line 156
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    .line 157
    aget-byte v9, v1, v5

    shr-int/2addr v9, v7

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    .line 158
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x7

    .line 159
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/lit8 v9, v9, 0xf

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    .line 160
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x8

    .line 161
    aget-byte v9, v1, v5

    const/4 v10, 0x5

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    .line 162
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    .line 163
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    .line 164
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x9

    .line 165
    aget-byte v9, v1, v5

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v7, [I

    .line 166
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v7, [I

    .line 167
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v7, [I

    .line 168
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xa

    .line 169
    aget-byte v9, v1, v5

    const/4 v10, 0x7

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v7, [I

    .line 170
    aget-byte v9, v1, v5

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v7, [I

    .line 171
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v7, [I

    .line 172
    aget-byte v9, v1, v5

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    .line 173
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v7, [I

    .line 174
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xb

    .line 175
    aget-byte v9, v1, v5

    const/4 v10, 0x7

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v7, [I

    .line 176
    aget-byte v9, v1, v5

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v7, [I

    .line 177
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v7, [I

    .line 178
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v7, [I

    .line 179
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xc

    .line 180
    aget-byte v9, v1, v5

    const/4 v10, 0x7

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v7, [I

    .line 181
    aget-byte v9, v1, v5

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v7, [I

    .line 182
    aget-byte v9, v1, v5

    const/4 v10, 0x5

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v7, [I

    .line 183
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    .line 184
    aget-byte v9, v1, v5

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v7, [I

    .line 185
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v7, [I

    .line 186
    aget-byte v9, v1, v5

    shr-int/2addr v9, v7

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v7, [I

    .line 187
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xd

    .line 188
    aget-byte v5, v1, v5

    const/16 v9, 0xff

    and-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xe

    .line 189
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xf

    .line 190
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x10

    .line 191
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x11

    .line 192
    aget-byte v9, v1, v5

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v7, [I

    .line 193
    aget-byte v9, v1, v5

    shr-int/lit8 v8, v9, 0x2

    and-int/2addr v8, v4

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v7, [I

    .line 194
    aget-byte v1, v1, v5

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :cond_33
    const/16 v2, 0xaf

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 195
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 196
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 197
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 198
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 199
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 200
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 201
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v7, [I

    const/16 v4, 0xc

    add-int/lit8 v4, p2, 0xc

    .line 202
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1b

    :cond_34
    add-int/lit8 v2, p2, 0x2

    .line 203
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/ge;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 204
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/ge;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 205
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/ge;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 206
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/ge;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 207
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x7

    .line 208
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x8

    .line 209
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x9

    .line 210
    aget-byte v12, v1, v11

    and-int/2addr v12, v5

    if-ne v3, v5, :cond_35

    if-ne v8, v5, :cond_35

    if-ne v10, v5, :cond_35

    if-ne v12, v5, :cond_35

    .line 211
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_19

    .line 212
    :cond_35
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_36

    sget v5, Ll0/c0;->h:I

    if-ne v5, v8, :cond_36

    sget v5, Ll0/c0;->i:I

    if-ne v5, v10, :cond_36

    sget v5, Ll0/c0;->j:I

    if-eq v5, v12, :cond_37

    .line 213
    :cond_36
    sput v3, Ll0/c0;->g:I

    .line 214
    sput v8, Ll0/c0;->h:I

    .line 215
    sput v10, Ll0/c0;->i:I

    .line 216
    sput v12, Ll0/c0;->j:I

    .line 217
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_37

    .line 218
    invoke-static {v7}, Lu0/d;->C2(I)V

    const/4 v3, 0x4

    .line 219
    sput v3, Ll0/c0;->k:I

    .line 220
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 221
    :cond_37
    :goto_19
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ge;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 222
    aget-byte v2, v1, v4

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ge;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 223
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ge;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 224
    aget-byte v1, v1, v11

    and-int/2addr v1, v3

    invoke-static {v1}, Lk0/ge;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1b

    :cond_38
    const/16 v2, 0xaa

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 225
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    const/16 v8, 0xff

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 226
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 227
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v11

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    const/16 v8, 0xff

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 228
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v11

    add-int/lit8 v5, p2, 0xb

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1b

    :cond_39
    add-int/lit8 v2, p2, 0x5

    .line 229
    aget-byte v2, v1, v2

    shl-int/2addr v2, v12

    and-int/2addr v2, v11

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    div-int/2addr v2, v9

    .line 230
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x407

    new-array v5, v7, [I

    aput v2, v5, v6

    const/4 v9, 0x0

    invoke-static {v3, v4, v5, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v4, 0x419

    new-array v5, v8, [I

    aput v7, v5, v6

    aput v2, v5, v7

    .line 231
    invoke-static {v3, v4, v5, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 232
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aget-byte v4, v1, v2

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v7

    invoke-static {v3, v4, v1}, Ll0/c0;->N1(III)V

    goto :goto_1b

    .line 233
    :cond_3a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_1b

    :cond_3b
    add-int/lit8 v2, p2, 0x5

    .line 234
    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_3c

    .line 235
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_1a

    .line 236
    :cond_3c
    invoke-static {v6}, Lk0/qt;->a(I)V

    :goto_1a
    const/16 v2, 0xc1

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 237
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_3d
    :goto_1b
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ge;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ge;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ge;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/ge;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lz/c;->d:Lo1/y;

    iget-object v1, p0, Lk0/ge;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/ge;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xc2

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

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eqz p1, :cond_9

    const/4 v5, 0x6

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, p4, :cond_5

    if-eq p1, v4, :cond_3

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_a

    .line 1
    array-length p1, p2

    if-lez p1, :cond_a

    .line 2
    aget p1, p2, v1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, v4, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, v4, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v4, [I

    .line 5
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, v4, [I

    .line 6
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v4, [I

    .line 7
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array p1, v4, [I

    .line 9
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array p1, v4, [I

    .line 10
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array p1, v4, [I

    .line 11
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array p1, v4, [I

    .line 12
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array p1, v4, [I

    .line 13
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array p1, v4, [I

    .line 14
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_c
    new-array p1, v4, [I

    .line 15
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_d
    new-array p1, v4, [I

    .line 16
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_a

    .line 17
    array-length p1, p2

    if-lez p1, :cond_a

    .line 18
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_2

    new-array p1, v4, [I

    .line 19
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    .line 20
    invoke-static {v3}, Lk0/qt;->a(I)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v4, [I

    .line 21
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    .line 22
    invoke-static {v1}, Lk0/qt;->a(I)V

    goto/16 :goto_0

    .line 23
    :cond_3
    invoke-static {p2, v2}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 24
    aget p1, p2, v1

    const/16 v5, 0xf

    if-ne p1, v5, :cond_4

    aget p1, p2, v3

    if-nez p1, :cond_4

    .line 25
    invoke-static {v1}, Lk0/qt;->a(I)V

    :cond_4
    new-array p1, v4, [I

    aput p3, p1, v1

    aput v2, p1, v3

    const/16 p3, 0xf2

    aput p3, p1, v2

    .line 26
    aget p3, p2, v1

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 27
    :cond_5
    invoke-static {p2, v2}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p1, v4, [I

    aput p3, p1, v1

    aput v2, p1, v3

    const/16 p3, 0x9a

    aput p3, p1, v2

    .line 28
    aget p3, p2, v1

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 29
    :cond_6
    invoke-static {p2, v2}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p1, v4, [I

    aput p3, p1, v1

    aput v2, p1, v3

    const/16 p3, 0x3a

    aput p3, p1, v2

    .line 30
    aget p3, p2, v1

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 31
    :cond_7
    invoke-static {p2, v3}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p1, v5, [I

    aput p3, p1, v1

    aput v0, p1, v3

    const/16 p3, 0x6a

    aput p3, p1, v2

    aput v4, p1, v0

    aput v3, p1, p4

    .line 32
    aget p2, p2, v1

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 33
    :cond_8
    invoke-static {p2, v2}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p3, p1, v1

    aput p4, p1, v3

    const/16 p3, 0x6f

    aput p3, p1, v2

    .line 34
    aget p3, p2, v1

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    const/16 p2, 0xff

    aput p2, p1, v4

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 35
    :cond_9
    invoke-static {p2, v2}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_a

    new-array p1, v4, [I

    aput p3, p1, v1

    aput v2, p1, v3

    const/16 p3, 0x3d

    aput p3, p1, v2

    .line 36
    aget p3, p2, v1

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    :array_0
    .array-data 4
        0xe3
        0x2
        -0xe
        0x11
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        -0xe
        0x11
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0xd
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0xa
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0xb
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0xc
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0x5
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0x6
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0x8
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0x7
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0x5
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0x8
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        -0xe
        0x10
        0x7
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        -0xe
        0xf
        0x1
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x2
        -0xe
        0xf
        0x0
    .end array-data
.end method

.method public final b3(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lk0/ge;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk0/ge;->p:Z

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v2, 0xe3

    aput v2, v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x2

    aput v2, v1, v0

    const/16 v3, 0x3d

    aput v3, v1, v2

    const/4 v2, 0x3

    aput p1, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lk0/ge$f;

    invoke-direct {v1, p0, p1}, Lk0/ge$f;-><init>(Lk0/ge;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
