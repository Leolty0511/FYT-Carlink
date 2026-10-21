.class public Lk0/ld;
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

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/ld;->e:I

    const/16 v0, 0x10

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v10, 0x8

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v10, 0x9

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v10, 0xa

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v10, 0xb

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v10, 0xc

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v10, 0xd

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v10, 0xe

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v10, 0xf

    aput-object v2, v0, v10

    iput-object v0, p0, Lk0/ld;->f:[[I

    new-array v0, v9, [[I

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v7

    new-array v1, v1, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v8

    iput-object v0, p0, Lk0/ld;->g:[[I

    .line 5
    iput v3, p0, Lk0/ld;->h:I

    .line 6
    iput v3, p0, Lk0/ld;->i:I

    .line 7
    new-instance v0, Lk0/ld$a;

    invoke-direct {v0, p0}, Lk0/ld$a;-><init>(Lk0/ld;)V

    iput-object v0, p0, Lk0/ld;->j:Ljava/lang/Runnable;

    .line 8
    iput v3, p0, Lk0/ld;->k:I

    .line 9
    new-instance v0, Lk0/ld$b;

    invoke-direct {v0, p0}, Lk0/ld$b;-><init>(Lk0/ld;)V

    iput-object v0, p0, Lk0/ld;->l:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/ld$c;

    invoke-direct {v0, p0}, Lk0/ld$c;-><init>(Lk0/ld;)V

    iput-object v0, p0, Lk0/ld;->m:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/ld$d;

    invoke-direct {v0, p0}, Lk0/ld$d;-><init>(Lk0/ld;)V

    iput-object v0, p0, Lk0/ld;->n:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/ld$e;

    invoke-direct {v0, p0}, Lk0/ld$e;-><init>(Lk0/ld;)V

    iput-object v0, p0, Lk0/ld;->o:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/ld$f;

    invoke-direct {v0, p0}, Lk0/ld$f;-><init>(Lk0/ld;)V

    iput-object v0, p0, Lk0/ld;->p:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/ld$g;

    invoke-direct {v0, p0}, Lk0/ld$g;-><init>(Lk0/ld;)V

    iput-object v0, p0, Lk0/ld;->q:Ljava/lang/Runnable;

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
        0xc
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x2c
        0x4a
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_11
    .array-data 4
        0x25
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_13
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_14
    .array-data 4
        0x43
        0x2
    .end array-data

    :array_15
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_16
    .array-data 4
        0x46
        0x8
    .end array-data
.end method

.method public static b3()I
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :goto_0
    :pswitch_1
    move v1, v3

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x16

    goto :goto_2

    .line 2
    :pswitch_3
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const/16 v1, 0x19

    goto :goto_2

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x85

    goto :goto_2

    .line 3
    :pswitch_5
    sget v0, Lw0/d;->h:I

    const/high16 v3, 0x10000

    sub-int v4, v0, v3

    if-nez v4, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    sub-int v4, v0, v3

    if-ne v6, v4, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    sub-int v3, v0, v3

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v5

    if-ne v6, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :pswitch_6
    move v1, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v5

    .line 4
    :goto_2
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_7

    const/16 v5, 0x10

    goto :goto_3

    .line 5
    :cond_7
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v5, v1

    :goto_3
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c3()I
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :goto_0
    :pswitch_1
    move v1, v4

    goto :goto_2

    :pswitch_2
    const/16 v1, 0xb

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_2

    :pswitch_4
    const/16 v1, 0xc

    goto :goto_2

    .line 2
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :cond_0
    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_0

    :pswitch_6
    move v1, v2

    goto :goto_2

    .line 3
    :pswitch_7
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v4, v0, v2

    if-nez v4, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    sub-int v4, v0, v2

    if-ne v6, v4, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    sub-int v2, v0, v2

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v5

    if-ne v6, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :pswitch_8
    const/16 v1, 0x9

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v5

    .line 4
    :goto_2
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_7

    const/16 v5, 0x10

    goto :goto_3

    .line 5
    :cond_7
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v5, v1

    :goto_3
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic d3(Lk0/ld;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/ld;->e3(BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 6

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ld;->l:Ljava/lang/Runnable;

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

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0x19

    const/16 v4, 0x20

    const/16 v5, 0x1c

    if-eq v1, v3, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    const/16 v3, 0x26

    if-eq v1, v3, :cond_0

    const/16 v3, 0x28

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 9
    :cond_0
    :pswitch_0
    iput v2, v0, Lk0/mt;->i:I

    :goto_0
    if-eqz v1, :cond_2

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    const/16 v0, 0xe

    if-eq v1, v0, :cond_2

    const/16 v0, 0xf

    if-eq v1, v0, :cond_2

    const/16 v0, 0x2b

    if-eq v1, v0, :cond_1

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_2

    packed-switch v1, :pswitch_data_1

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ld;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ld;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ld;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ld;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/ld;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget-object v0, p0, Lk0/ld;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 16
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lk0/ld;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 17
    :cond_2
    :pswitch_2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/ld;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    iget-object v0, p0, Lk0/ld;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 19
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ld;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ld;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ld;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ld;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/ld;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :goto_1
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x79

    const/4 v4, 0x3

    const/16 v5, 0x8

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_29

    const/16 v3, -0x18

    const/4 v9, 0x5

    if-eq v2, v3, :cond_27

    const/16 v3, -0x10

    const/4 v10, 0x2

    if-eq v2, v3, :cond_26

    const/16 v3, 0x41

    if-eq v2, v3, :cond_22

    const/16 v11, 0x61

    const/4 v12, 0x7

    if-eq v2, v11, :cond_21

    const/16 v11, 0x11

    if-eq v2, v11, :cond_1a

    const/16 v13, 0x12

    const/4 v14, 0x4

    if-eq v2, v13, :cond_18

    const/16 v15, 0x21

    if-eq v2, v15, :cond_12

    const/16 v15, 0x22

    if-eq v2, v15, :cond_c

    const/16 v15, 0x31

    if-eq v2, v15, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_11

    :cond_0
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 2
    aget-byte v9, v1, v4

    shl-int/2addr v9, v5

    const v10, 0xffff

    and-int/2addr v9, v10

    add-int/lit8 v10, p2, 0x5

    aget-byte v11, v1, v10

    and-int/2addr v11, v6

    or-int/2addr v9, v11

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v8, [I

    .line 3
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    const v9, 0xff00

    and-int/2addr v4, v9

    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    or-int/2addr v4, v10

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 4
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 6
    aget-byte v5, v1, v5

    add-int/lit8 v12, p2, 0x4

    .line 7
    aget-byte v12, v1, v12

    add-int/lit8 v16, p2, 0x6

    .line 8
    aget-byte v13, v1, v16

    add-int/lit8 v16, p2, 0x7

    .line 9
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x8

    .line 10
    aget-byte v18, v1, v17

    add-int/lit8 v19, p2, 0x9

    .line 11
    aget-byte v20, v1, v19

    const/16 v15, 0xa

    new-array v6, v8, [I

    shr-int/lit8 v21, v2, 0x6

    and-int/lit8 v21, v21, 0x1

    aput v21, v6, v7

    .line 12
    invoke-static {v15, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x35

    new-array v15, v8, [I

    shr-int/lit8 v21, v2, 0x5

    and-int/lit8 v21, v21, 0x1

    aput v21, v15, v7

    .line 13
    invoke-static {v6, v15}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    aput v2, v6, v7

    const/16 v2, 0xd

    .line 14
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xb

    new-array v15, v8, [I

    shr-int/lit8 v21, v5, 0x6

    and-int/lit8 v21, v21, 0x1

    aput v21, v15, v7

    .line 15
    invoke-static {v6, v15}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xc

    new-array v15, v8, [I

    shr-int/lit8 v21, v5, 0x4

    and-int/lit8 v21, v21, 0x1

    aput v21, v15, v7

    .line 16
    invoke-static {v6, v15}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xe

    new-array v15, v8, [I

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v15, v7

    .line 17
    invoke-static {v6, v15}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/lit8 v6, v12, 0x6

    and-int/2addr v6, v8

    aput v6, v5, v7

    .line 18
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x10

    new-array v6, v8, [I

    shr-int/lit8 v10, v12, 0x5

    and-int/2addr v10, v8

    aput v10, v6, v7

    .line 19
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/lit8 v6, v12, 0x4

    and-int/2addr v6, v8

    aput v6, v5, v7

    .line 20
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    if-eq v13, v8, :cond_5

    if-eq v13, v4, :cond_4

    if-eq v13, v9, :cond_3

    const/4 v3, 0x6

    if-eq v13, v3, :cond_2

    packed-switch v13, :pswitch_data_0

    move v3, v7

    move v4, v3

    :goto_0
    move v5, v4

    :goto_1
    move v6, v5

    goto :goto_2

    :pswitch_0
    move v3, v7

    move v4, v8

    goto :goto_0

    :pswitch_1
    move v3, v7

    move v5, v3

    move v4, v8

    move v6, v4

    goto :goto_2

    :pswitch_2
    move v3, v7

    move v4, v3

    move v5, v8

    goto :goto_1

    :pswitch_3
    move v3, v7

    move v4, v3

    move v5, v4

    move v6, v8

    goto :goto_2

    :cond_2
    move v3, v7

    move v5, v3

    move v6, v5

    move v4, v8

    goto :goto_2

    :cond_3
    move v3, v7

    move v6, v3

    move v4, v8

    move v5, v4

    goto :goto_2

    :cond_4
    move v3, v7

    move v4, v3

    move v6, v4

    move v5, v8

    goto :goto_2

    :cond_5
    move v4, v7

    move v5, v4

    move v6, v5

    move v3, v8

    :goto_2
    const/16 v10, 0x4d

    new-array v11, v8, [I

    const/16 v12, 0xff

    and-int/2addr v13, v12

    aput v13, v11, v7

    .line 21
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    new-array v10, v8, [I

    aput v3, v10, v7

    const/16 v3, 0x31

    .line 22
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v10, v8, [I

    aput v4, v10, v7

    .line 23
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v8, [I

    aput v5, v4, v7

    .line 24
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    aput v6, v3, v7

    const/16 v4, 0x12

    .line 25
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v4, v8, [I

    aput v16, v4, v7

    .line 26
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const-string v3, "persist.fyt.reversetemp"

    .line 27
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 28
    aget-byte v18, v1, v19

    .line 29
    aget-byte v20, v1, v17

    :cond_6
    move/from16 v3, v18

    move/from16 v4, v20

    const/16 v5, 0xff

    and-int/2addr v3, v5

    const/4 v6, -0x3

    const/4 v10, -0x2

    const/16 v11, 0xfe

    const/16 v12, 0x1b

    if-eq v3, v11, :cond_8

    if-eq v3, v5, :cond_7

    new-array v5, v8, [I

    mul-int/2addr v3, v9

    aput v3, v5, v7

    .line 30
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v3, v8, [I

    aput v6, v3, v7

    .line 31
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v3, v8, [I

    aput v10, v3, v7

    .line 32
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v3, 0xff

    and-int/2addr v4, v3

    const/16 v5, 0x1c

    if-eq v4, v11, :cond_a

    if-eq v4, v3, :cond_9

    new-array v3, v8, [I

    mul-int/2addr v4, v9

    aput v4, v3, v7

    .line 33
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_9
    new-array v3, v8, [I

    aput v6, v3, v7

    .line 34
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    new-array v3, v8, [I

    aput v10, v3, v7

    .line 35
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0xd

    .line 36
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    mul-int/lit8 v2, v1, 0x5

    add-int/lit16 v2, v2, 0x258

    if-nez v1, :cond_b

    .line 37
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_11

    .line 38
    :cond_b
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto/16 :goto_11

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 40
    aget-byte v1, v1, v3

    if-eq v2, v8, :cond_d

    goto/16 :goto_11

    .line 41
    :cond_d
    iget v2, v0, Lk0/ld;->h:I

    if-eq v1, v2, :cond_2a

    if-le v1, v2, :cond_f

    move v2, v7

    .line 42
    :goto_5
    iget v3, v0, Lk0/ld;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_e

    .line 43
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 44
    :cond_e
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_f
    if-ge v1, v2, :cond_11

    move v2, v7

    .line 45
    :goto_6
    iget v3, v0, Lk0/ld;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_10

    .line 46
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 47
    :cond_10
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 48
    :cond_11
    :goto_7
    iput v1, v0, Lk0/ld;->h:I

    goto/16 :goto_11

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 49
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lk0/ld;->d:I

    add-int/lit8 v2, p2, 0x3

    .line 50
    aget-byte v1, v1, v2

    move v2, v7

    .line 51
    :goto_8
    iget-object v3, v0, Lk0/ld;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_14

    .line 52
    iget v4, v0, Lk0/ld;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_13

    if-eqz v4, :cond_14

    .line 53
    iput v2, v0, Lk0/ld;->e:I

    goto :goto_9

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    :goto_9
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_15

    .line 54
    array-length v1, v3

    if-ge v2, v1, :cond_2a

    .line 55
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_11

    .line 56
    :cond_15
    iget v1, v0, Lk0/ld;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_16

    const/16 v2, 0xff

    if-eq v1, v2, :cond_17

    .line 57
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_16
    const/16 v2, 0xff

    .line 58
    :cond_17
    :goto_a
    iput v2, v0, Lk0/ld;->e:I

    goto/16 :goto_11

    :cond_18
    add-int/lit8 v2, p2, 0x4

    .line 59
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 60
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_19

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 61
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 62
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_19
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 63
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 64
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 65
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 66
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 67
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_1a
    add-int/lit8 v2, p2, 0x4

    .line 68
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 69
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 70
    iput v2, v0, Lk0/ld;->c:I

    move v2, v7

    .line 71
    :goto_c
    iget-object v4, v0, Lk0/ld;->f:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_1c

    .line 72
    iget v6, v0, Lk0/ld;->c:I

    aget-object v9, v4, v2

    aget v9, v9, v7

    if-ne v6, v9, :cond_1b

    if-eqz v6, :cond_1c

    .line 73
    iput v2, v0, Lk0/ld;->b:I

    goto :goto_d

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    :goto_d
    const/16 v6, 0xff

    and-int/2addr v3, v6

    if-eqz v3, :cond_1d

    .line 74
    array-length v3, v4

    if-ge v2, v3, :cond_20

    .line 75
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_f

    .line 76
    :cond_1d
    iget v2, v0, Lk0/ld;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_1e

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1f

    .line 77
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_1e
    const/16 v3, 0xff

    .line 78
    :cond_1f
    :goto_e
    iput v3, v0, Lk0/ld;->b:I

    :cond_20
    :goto_f
    add-int/lit8 v2, p2, 0x9

    .line 79
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x2710

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_11

    :cond_21
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v6, p2, 0x3

    .line 81
    aget-byte v6, v1, v6

    add-int/lit8 v6, p2, 0x4

    .line 82
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    add-int/lit8 v9, p2, 0x5

    .line 83
    aget-byte v9, v1, v9

    and-int/2addr v9, v3

    add-int/lit8 v10, p2, 0x6

    .line 84
    aget-byte v10, v1, v10

    and-int/2addr v10, v3

    add-int/lit8 v3, p2, 0x7

    .line 85
    aget-byte v3, v1, v3

    add-int/lit8 v3, p2, 0x8

    .line 86
    aget-byte v3, v1, v3

    add-int/lit8 v3, p2, 0x9

    .line 87
    aget-byte v1, v1, v3

    const/16 v1, 0x7d

    new-array v3, v8, [I

    shr-int/lit8 v11, v2, 0x0

    and-int/2addr v11, v8

    shl-int/2addr v11, v5

    shr-int/lit8 v13, v6, 0x3

    and-int/2addr v12, v13

    or-int/2addr v12, v11

    aput v12, v3, v7

    .line 88
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7e

    new-array v3, v8, [I

    shr-int/lit8 v12, v6, 0x2

    and-int/2addr v12, v8

    or-int/2addr v12, v11

    aput v12, v3, v7

    .line 89
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7f

    new-array v3, v8, [I

    shr-int/lit8 v12, v6, 0x1

    and-int/2addr v12, v8

    or-int/2addr v12, v11

    aput v12, v3, v7

    .line 90
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x80

    new-array v3, v8, [I

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    or-int/2addr v6, v11

    aput v6, v3, v7

    .line 91
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x81

    new-array v3, v8, [I

    const/16 v6, 0xff

    and-int/2addr v6, v9

    or-int/2addr v6, v11

    aput v6, v3, v7

    .line 92
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x82

    new-array v3, v8, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v8

    shl-int/2addr v6, v5

    shr-int/lit8 v9, v10, 0x5

    and-int/2addr v9, v8

    or-int/2addr v6, v9

    aput v6, v3, v7

    .line 93
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x83

    new-array v3, v8, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v8

    shl-int/2addr v6, v5

    shr-int/lit8 v9, v10, 0x4

    and-int/2addr v9, v8

    or-int/2addr v6, v9

    aput v6, v3, v7

    .line 94
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x84

    new-array v3, v8, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v8

    shl-int/2addr v6, v5

    shr-int/lit8 v9, v10, 0x2

    and-int/2addr v4, v9

    or-int/2addr v4, v6

    aput v4, v3, v7

    .line 95
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x85

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x2

    and-int/2addr v4, v8

    shl-int/2addr v4, v5

    shr-int/lit8 v6, v10, 0x1

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v7

    .line 96
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x86

    new-array v3, v8, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    shl-int/2addr v2, v5

    shr-int/lit8 v4, v10, 0x0

    and-int/2addr v4, v8

    or-int/2addr v2, v4

    aput v2, v3, v7

    .line 97
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_22
    add-int/lit8 v2, p2, 0x6

    .line 98
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    add-int/lit8 v6, p2, 0x7

    .line 99
    aget-byte v10, v1, v6

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0x8

    .line 100
    aget-byte v12, v1, v11

    and-int/2addr v12, v4

    add-int/lit8 v13, p2, 0x9

    .line 101
    aget-byte v14, v1, v13

    and-int/2addr v14, v4

    if-nez v3, :cond_23

    if-nez v10, :cond_23

    if-nez v12, :cond_23

    if-nez v14, :cond_23

    .line 102
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_10

    .line 103
    :cond_23
    sget v4, Ll0/c0;->g:I

    if-ne v4, v3, :cond_24

    sget v4, Ll0/c0;->h:I

    if-ne v4, v10, :cond_24

    sget v4, Ll0/c0;->i:I

    if-ne v4, v12, :cond_24

    sget v4, Ll0/c0;->j:I

    if-eq v4, v14, :cond_25

    .line 104
    :cond_24
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_25

    .line 105
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 106
    sput v5, Ll0/c0;->k:I

    .line 107
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 108
    :cond_25
    :goto_10
    sput v3, Ll0/c0;->g:I

    .line 109
    sput v10, Ll0/c0;->h:I

    .line 110
    sput v12, Ll0/c0;->i:I

    .line 111
    sput v14, Ll0/c0;->j:I

    add-int/lit8 v3, p2, 0x2

    .line 112
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    invoke-static {v3}, Ll0/c0;->b1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 113
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    invoke-static {v3}, Ll0/c0;->b1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    add-int/lit8 v3, p2, 0x4

    .line 114
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    invoke-static {v3}, Ll0/c0;->b1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    add-int/lit8 v3, p2, 0x5

    .line 115
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    invoke-static {v3}, Ll0/c0;->b1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->U2(I)V

    .line 116
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 117
    aget-byte v2, v1, v6

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 118
    aget-byte v2, v1, v11

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 119
    aget-byte v1, v1, v13

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_11

    .line 120
    :cond_26
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 121
    :cond_27
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-nez v2, :cond_2a

    add-int/lit8 v2, p2, 0x5

    .line 122
    aget-byte v1, v1, v2

    if-eqz v1, :cond_28

    .line 123
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_11

    .line 124
    :cond_28
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_11

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 125
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v6, p2, 0x3

    .line 126
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    add-int/lit8 v9, p2, 0x4

    .line 127
    aget-byte v9, v1, v9

    and-int/2addr v9, v3

    add-int/lit8 v10, p2, 0x5

    .line 128
    aget-byte v10, v1, v10

    and-int/2addr v10, v3

    add-int/lit8 v11, p2, 0x6

    .line 129
    aget-byte v11, v1, v11

    and-int/2addr v11, v3

    add-int/lit8 v12, p2, 0x7

    .line 130
    aget-byte v12, v1, v12

    and-int/2addr v12, v3

    add-int/lit8 v13, p2, 0x8

    .line 131
    aget-byte v13, v1, v13

    and-int/2addr v13, v3

    add-int/lit8 v14, p2, 0x9

    .line 132
    aget-byte v1, v1, v14

    and-int/2addr v1, v3

    const/16 v3, 0x64

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x7

    and-int/2addr v15, v8

    aput v15, v14, v7

    .line 133
    invoke-static {v3, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v14, v8, [I

    shl-int/2addr v15, v5

    shr-int/lit8 v16, v9, 0x7

    and-int/lit8 v16, v16, 0x1

    or-int v16, v15, v16

    aput v16, v14, v7

    .line 134
    invoke-static {v3, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v14, v8, [I

    shr-int/lit8 v16, v9, 0x5

    and-int/lit8 v16, v16, 0x3

    or-int v15, v15, v16

    aput v15, v14, v7

    .line 135
    invoke-static {v3, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x67

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v8

    shl-int/2addr v15, v5

    shr-int/lit8 v16, v9, 0x4

    and-int/lit8 v16, v16, 0x1

    or-int v15, v15, v16

    aput v15, v14, v7

    .line 136
    invoke-static {v3, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v8

    shl-int/2addr v15, v5

    shr-int/lit8 v16, v9, 0x3

    and-int/lit8 v16, v16, 0x1

    or-int v15, v15, v16

    aput v15, v14, v7

    .line 137
    invoke-static {v3, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v8

    shl-int/2addr v15, v5

    shr-int/lit8 v16, v9, 0x2

    and-int/lit8 v16, v16, 0x1

    or-int v15, v15, v16

    aput v15, v14, v7

    .line 138
    invoke-static {v3, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v8

    shl-int/2addr v15, v5

    shr-int/lit8 v16, v9, 0x1

    and-int/lit8 v16, v16, 0x1

    or-int v15, v15, v16

    aput v15, v14, v7

    .line 139
    invoke-static {v3, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v8

    shl-int/2addr v15, v5

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    or-int/2addr v9, v15

    aput v9, v14, v7

    .line 140
    invoke-static {v3, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v9, v8, [I

    shr-int/lit8 v14, v2, 0x1

    and-int/2addr v14, v8

    shl-int/2addr v14, v5

    shr-int/lit8 v15, v10, 0x6

    and-int/2addr v15, v4

    or-int/2addr v14, v15

    aput v14, v9, v7

    .line 141
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x87

    new-array v9, v8, [I

    shr-int/lit8 v14, v6, 0x0

    and-int/2addr v14, v8

    shl-int/2addr v14, v5

    shr-int/lit8 v15, v10, 0x5

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    aput v14, v9, v7

    .line 142
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v9, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    shl-int/2addr v2, v5

    and-int/lit8 v10, v10, 0x1f

    or-int/2addr v2, v10

    aput v2, v9, v7

    .line 143
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    shr-int/lit8 v9, v6, 0x7

    and-int/2addr v9, v8

    shl-int/2addr v9, v5

    shr-int/lit8 v10, v11, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    aput v9, v3, v7

    .line 144
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    shr-int/lit8 v9, v6, 0x6

    and-int/2addr v9, v8

    shl-int/2addr v9, v5

    shr-int/lit8 v10, v11, 0x3

    and-int/2addr v10, v8

    or-int/2addr v9, v10

    aput v9, v3, v7

    .line 145
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    shr-int/lit8 v9, v6, 0x5

    and-int/2addr v9, v8

    shl-int/2addr v9, v5

    shr-int/lit8 v10, v11, 0x2

    and-int/2addr v10, v8

    or-int/2addr v9, v10

    aput v9, v3, v7

    .line 146
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    shr-int/lit8 v9, v6, 0x4

    and-int/2addr v9, v8

    shl-int/2addr v9, v5

    shr-int/lit8 v10, v11, 0x1

    and-int/2addr v10, v8

    or-int/2addr v9, v10

    aput v9, v3, v7

    .line 147
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    shr-int/lit8 v9, v6, 0x3

    and-int/2addr v9, v8

    shl-int/2addr v9, v5

    shr-int/lit8 v10, v11, 0x0

    and-int/2addr v10, v8

    or-int/2addr v9, v10

    aput v9, v3, v7

    .line 148
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    shr-int/lit8 v9, v6, 0x2

    and-int/2addr v9, v8

    shl-int/2addr v9, v5

    shr-int/lit8 v10, v12, 0x7

    and-int/2addr v10, v8

    or-int/2addr v9, v10

    aput v9, v3, v7

    .line 149
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    shl-int/2addr v6, v5

    shr-int/lit8 v9, v12, 0x5

    and-int/2addr v9, v4

    or-int/2addr v6, v9

    aput v6, v3, v7

    .line 150
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    shr-int/lit8 v6, v12, 0x4

    and-int/2addr v6, v8

    aput v6, v3, v7

    .line 151
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    shr-int/lit8 v4, v12, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 152
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v8

    shl-int/2addr v4, v5

    shr-int/lit8 v6, v13, 0x5

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v7

    .line 153
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v8

    shl-int/2addr v4, v5

    shr-int/lit8 v6, v13, 0x4

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v7

    .line 154
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v8

    shl-int/2addr v4, v5

    shr-int/lit8 v6, v13, 0x3

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v7

    .line 155
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v8

    shl-int/2addr v4, v5

    shr-int/lit8 v6, v13, 0x2

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v7

    .line 156
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v8

    shl-int/2addr v4, v5

    shr-int/lit8 v6, v13, 0x1

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v7

    .line 157
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    shl-int/2addr v1, v5

    shr-int/lit8 v4, v13, 0x0

    and-int/2addr v4, v8

    or-int/2addr v1, v4

    aput v1, v3, v7

    .line 158
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_2a
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ld;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ld;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/ld;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ld;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ld;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ld;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ld;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/ld;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x88

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
    .locals 8

    const/4 p3, 0x3

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_3

    if-eq p1, v1, :cond_2

    const/16 v5, 0x3ed

    if-eq p1, v5, :cond_1

    const/16 v5, 0x405

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2
    aget p1, p2, v3

    mul-int/lit16 p1, p1, 0x3ff

    invoke-static {}, La/f;->w()I

    move-result v5

    div-int/2addr p1, v5

    .line 3
    aget v5, p2, v4

    mul-int/lit16 v5, v5, 0x258

    invoke-static {}, La/f;->i()I

    move-result v6

    div-int/2addr v5, v6

    .line 4
    aget p2, p2, v3

    if-ne p2, v3, :cond_6

    const/16 p2, 0x9

    new-array p2, p2, [I

    aput p4, p2, v2

    const/4 p4, 0x6

    aput p4, p2, v3

    const/16 v6, 0x2c

    aput v6, p2, v4

    aput v3, p2, p3

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    aput p3, p2, v1

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v0

    shr-int/lit8 p1, v5, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, p4

    const/4 p1, 0x7

    and-int/lit16 p3, v5, 0xff

    aput p3, p2, p1

    const/16 p1, 0x8

    aput v2, p2, p1

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v5, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FinalCanbus.C_CAMERA_MODE = ints[0]  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    new-array p1, v0, [I

    aput p4, p1, v2

    aput v4, p1, v3

    const/4 p4, -0x3

    aput p4, p1, v4

    aput v1, p1, p3

    .line 7
    aget p2, p2, v2

    add-int/2addr p2, v1

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_6

    .line 8
    array-length p1, p2

    if-lt p1, v4, :cond_6

    new-array p1, v0, [I

    aput p4, p1, v2

    aput v4, p1, v3

    const/16 p4, -0x66

    aput p4, p1, v4

    .line 9
    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    .line 10
    array-length p1, p2

    if-lt p1, v4, :cond_6

    .line 11
    aget p1, p2, v2

    const/16 v5, 0xaa

    if-ne p1, v5, :cond_4

    aget p1, p2, v3

    const/16 v5, 0xfe

    if-ne p1, v5, :cond_4

    new-array p1, v0, [I

    .line 12
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, v0, [I

    aput p4, p1, v2

    aput v4, p1, v3

    const/16 p4, -0x74

    aput p4, p1, v4

    .line 13
    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 14
    :cond_5
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v0, [I

    aput p4, p1, v2

    aput v4, p1, v3

    const/16 p4, 0x3d

    aput p4, p1, v4

    .line 15
    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x3
        0x4
        0x8
    .end array-data
.end method

.method public a3()V
    .locals 17

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v3, 0x91

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    sget v3, Lk0/nt;->c:I

    const/16 v6, 0x14

    const/4 v7, 0x2

    if-ne v3, v6, :cond_1

    .line 3
    invoke-static {}, Lk0/ld;->c3()I

    move-result v3

    aput v3, v1, v7

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lk0/ld;->b3()I

    move-result v3

    aput v3, v1, v7

    .line 5
    :goto_1
    sget v3, Lu0/b;->f:I

    if-ne v3, v5, :cond_b

    .line 6
    sget v3, Lu0/b;->D:I

    const/16 v6, 0x9

    const/4 v8, 0x7

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x6

    const/16 v12, 0xa

    const/16 v13, 0x30

    if-eq v3, v5, :cond_6

    const/16 v5, 0xb

    const/16 v7, 0x3a

    const/16 v14, 0x3e7

    const/4 v15, 0x5

    const/16 v16, 0x39

    if-eq v3, v10, :cond_4

    if-eq v3, v9, :cond_2

    goto/16 :goto_6

    .line 7
    :cond_2
    sget v3, Lu0/b;->r3:I

    if-gt v3, v14, :cond_3

    .line 8
    div-int/lit8 v14, v3, 0x64

    div-int/lit8 v14, v3, 0x64

    add-int/2addr v14, v13

    aput v14, v1, v10

    .line 9
    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    add-int/2addr v10, v13

    aput v10, v1, v15

    .line 10
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v11

    goto :goto_2

    :cond_3
    aput v16, v1, v10

    aput v16, v1, v15

    aput v16, v1, v11

    :goto_2
    aput v4, v1, v8

    .line 11
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 12
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v6

    aput v7, v1, v12

    .line 13
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v5

    const/16 v4, 0xc

    .line 14
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v4

    goto/16 :goto_6

    .line 15
    :cond_4
    sget v3, Lo0/e;->B:I

    if-gt v3, v14, :cond_5

    .line 16
    div-int/lit8 v14, v3, 0x64

    div-int/lit8 v14, v3, 0x64

    add-int/2addr v14, v13

    aput v14, v1, v10

    .line 17
    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    add-int/2addr v10, v13

    aput v10, v1, v15

    .line 18
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v11

    goto :goto_3

    :cond_5
    aput v16, v1, v10

    aput v16, v1, v15

    aput v16, v1, v11

    :goto_3
    aput v4, v1, v8

    .line 19
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 20
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v6

    aput v7, v1, v12

    .line 21
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v5

    const/16 v4, 0xc

    .line 22
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v4

    goto/16 :goto_6

    :cond_6
    const/4 v3, 0x3

    aput v13, v1, v3

    .line 23
    sget v3, Lw0/d;->j:I

    and-int/lit16 v3, v3, 0xff

    rem-int/2addr v3, v11

    add-int/2addr v3, v5

    add-int/2addr v3, v13

    aput v3, v1, v10

    .line 24
    sget v3, Lw0/d;->h:I

    const/high16 v10, 0x10000

    sub-int v14, v3, v10

    if-eqz v14, :cond_9

    sub-int v14, v3, v10

    if-eq v5, v14, :cond_9

    sub-int/2addr v3, v10

    if-ne v7, v3, :cond_7

    goto :goto_4

    .line 25
    :cond_7
    sget v3, Lw0/d;->i:I

    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    if-ne v4, v5, :cond_8

    .line 26
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v13

    aput v4, v1, v11

    .line 27
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 28
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 29
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v6

    goto :goto_6

    :cond_8
    aput v13, v1, v11

    .line 30
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 31
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 32
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v6

    goto :goto_6

    .line 33
    :cond_9
    :goto_4
    sget v3, Lw0/d;->i:I

    div-int/lit16 v5, v3, 0x2710

    if-nez v5, :cond_a

    div-int/lit16 v5, v3, 0x2710

    add-int/2addr v5, v4

    goto :goto_5

    :cond_a
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v5, v4, 0x30

    :goto_5
    aput v5, v1, v11

    .line 34
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 35
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v9

    const/16 v4, 0x2e

    aput v4, v1, v6

    .line 36
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v12

    :cond_b
    :goto_6
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_7
    if-ge v2, v0, :cond_c

    add-int/lit8 v4, v2, 0x1

    .line 37
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_7

    .line 38
    :cond_c
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final e3(BLjava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x20

    aput v3, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 2
    array-length p1, p2

    if-le p1, v3, :cond_1

    goto :goto_0

    :cond_1
    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_2

    add-int/lit8 p1, v2, 0x3

    .line 3
    aget-byte v1, p2, v2

    aput v1, v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
