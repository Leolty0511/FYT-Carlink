.class public Lk0/o3;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static n:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:Lo1/g0;

.field public final g:I

.field public h:[I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/o3;->c:I

    const/16 v2, 0x17

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3
    fill-array-data v5, :array_0

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x3

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v8, 0x4

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    const/4 v9, 0x5

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v10, 0x6

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v11, 0x7

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/16 v12, 0x8

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/16 v13, 0x9

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_a

    const/16 v14, 0xa

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_b

    const/16 v15, 0xb

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_c

    const/16 v16, 0xc

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_d

    const/16 v17, 0xd

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    const/16 v18, 0xe

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    const/16 v19, 0xf

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    const/16 v20, 0x10

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    const/16 v21, 0x11

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    const/16 v22, 0x12

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    const/16 v23, 0x13

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    const/16 v24, 0x14

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    const/16 v25, 0x15

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    const/16 v25, 0x16

    aput-object v5, v3, v25

    iput-object v3, v0, Lk0/o3;->d:[[I

    new-array v2, v2, [[I

    new-array v3, v4, [I

    .line 4
    fill-array-data v3, :array_17

    aput-object v3, v2, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_18

    aput-object v3, v2, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v2, v4

    new-array v3, v4, [I

    fill-array-data v3, :array_1a

    aput-object v3, v2, v7

    new-array v3, v4, [I

    fill-array-data v3, :array_1b

    aput-object v3, v2, v8

    new-array v3, v4, [I

    fill-array-data v3, :array_1c

    aput-object v3, v2, v9

    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v2, v10

    new-array v3, v4, [I

    fill-array-data v3, :array_1e

    aput-object v3, v2, v11

    new-array v3, v4, [I

    fill-array-data v3, :array_1f

    aput-object v3, v2, v12

    new-array v3, v4, [I

    fill-array-data v3, :array_20

    aput-object v3, v2, v13

    new-array v3, v4, [I

    fill-array-data v3, :array_21

    aput-object v3, v2, v14

    new-array v3, v4, [I

    fill-array-data v3, :array_22

    aput-object v3, v2, v15

    new-array v3, v4, [I

    fill-array-data v3, :array_23

    aput-object v3, v2, v16

    new-array v3, v4, [I

    fill-array-data v3, :array_24

    aput-object v3, v2, v17

    new-array v3, v4, [I

    fill-array-data v3, :array_25

    aput-object v3, v2, v18

    new-array v3, v4, [I

    fill-array-data v3, :array_26

    aput-object v3, v2, v19

    new-array v3, v4, [I

    fill-array-data v3, :array_27

    aput-object v3, v2, v20

    new-array v3, v4, [I

    fill-array-data v3, :array_28

    aput-object v3, v2, v21

    new-array v3, v4, [I

    fill-array-data v3, :array_29

    aput-object v3, v2, v22

    new-array v3, v4, [I

    fill-array-data v3, :array_2a

    aput-object v3, v2, v23

    new-array v3, v4, [I

    fill-array-data v3, :array_2b

    aput-object v3, v2, v24

    new-array v3, v4, [I

    fill-array-data v3, :array_2c

    const/16 v5, 0x15

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_2d

    const/16 v5, 0x16

    aput-object v3, v2, v5

    iput-object v2, v0, Lk0/o3;->e:[[I

    .line 5
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x20

    invoke-direct {v2, v3, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lk0/o3;->f:Lo1/g0;

    .line 6
    iput v6, v0, Lk0/o3;->g:I

    new-array v2, v4, [I

    .line 7
    fill-array-data v2, :array_2e

    iput-object v2, v0, Lk0/o3;->h:[I

    .line 8
    iput v1, v0, Lk0/o3;->i:I

    .line 9
    new-instance v1, Lk0/o3$a;

    invoke-direct {v1, v0}, Lk0/o3$a;-><init>(Lk0/o3;)V

    iput-object v1, v0, Lk0/o3;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/o3$b;

    invoke-direct {v1, v0}, Lk0/o3$b;-><init>(Lk0/o3;)V

    iput-object v1, v0, Lk0/o3;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lk0/o3$c;

    invoke-direct {v1, v0}, Lk0/o3$c;-><init>(Lk0/o3;)V

    iput-object v1, v0, Lk0/o3;->l:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 12
    iput v1, v0, Lk0/o3;->m:I

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
        0x20
        0x19
    .end array-data

    :array_8
    .array-data 4
        0x21
        0x1b
    .end array-data

    :array_9
    .array-data 4
        0x22
        0x1c
    .end array-data

    :array_a
    .array-data 4
        0x23
        0x12
    .end array-data

    :array_b
    .array-data 4
        0x24
        0x1a
    .end array-data

    :array_c
    .array-data 4
        0x25
        0x15
    .end array-data

    :array_d
    .array-data 4
        0x26
        0x37
    .end array-data

    :array_e
    .array-data 4
        0x27
        0xc
    .end array-data

    :array_f
    .array-data 4
        0x28
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x29
        0x5
    .end array-data

    :array_11
    .array-data 4
        0x2a
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2b
        0x26
    .end array-data

    :array_13
    .array-data 4
        0x2c
        0x40
    .end array-data

    :array_14
    .array-data 4
        0x2d
        0x35
    .end array-data

    :array_15
    .array-data 4
        0xf0
        0x7
    .end array-data

    :array_16
    .array-data 4
        0xf1
        0x8
    .end array-data

    :array_17
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_18
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_19
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_1a
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_1b
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_1d
    .array-data 4
        0xa
        0xd
    .end array-data

    :array_1e
    .array-data 4
        0x20
        0x19
    .end array-data

    :array_1f
    .array-data 4
        0x21
        0x1b
    .end array-data

    :array_20
    .array-data 4
        0x22
        0x1c
    .end array-data

    :array_21
    .array-data 4
        0x23
        0x12
    .end array-data

    :array_22
    .array-data 4
        0x24
        0x1a
    .end array-data

    :array_23
    .array-data 4
        0x25
        0x15
    .end array-data

    :array_24
    .array-data 4
        0x26
        0xc
    .end array-data

    :array_25
    .array-data 4
        0x27
        0xc
    .end array-data

    :array_26
    .array-data 4
        0x28
        0x2
    .end array-data

    :array_27
    .array-data 4
        0x29
        0x5
    .end array-data

    :array_28
    .array-data 4
        0x2a
        0x1
    .end array-data

    :array_29
    .array-data 4
        0x2b
        0x26
    .end array-data

    :array_2a
    .array-data 4
        0x2c
        0x5
    .end array-data

    :array_2b
    .array-data 4
        0x2d
        0x35
    .end array-data

    :array_2c
    .array-data 4
        0xf0
        0x8
    .end array-data

    :array_2d
    .array-data 4
        0xf1
        0x7
    .end array-data

    :array_2e
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic d3(Lk0/o3;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/o3;->c3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lk0/lt;->O2([I)V

    if-eqz p1, :cond_a

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    aget v0, p1, v0

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x10

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4
    :pswitch_1
    aget p1, p1, v6

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, v3}, Lk0/o3;->b3(I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Lk0/o3;->b3(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    aget p1, p1, v6

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 8
    invoke-virtual {p0, p1}, Lk0/o3;->b3(I)V

    goto/16 :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v4}, Lk0/o3;->b3(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_3
    aget p1, p1, v6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const/16 p1, 0x14

    .line 11
    invoke-virtual {p0, p1}, Lk0/o3;->b3(I)V

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x15

    .line 12
    invoke-virtual {p0, p1}, Lk0/o3;->b3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_4
    aget v0, p1, v6

    const/16 v3, 0x23

    if-ne v0, v6, :cond_4

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_a

    .line 15
    invoke-virtual {p0, v3}, Lk0/o3;->b3(I)V

    goto/16 :goto_0

    .line 16
    :cond_4
    aget p1, p1, v6

    if-nez p1, :cond_a

    .line 17
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v1, :cond_a

    .line 18
    invoke-virtual {p0, v3}, Lk0/o3;->b3(I)V

    goto/16 :goto_0

    .line 19
    :pswitch_5
    aget p1, p1, v6

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    .line 20
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_a

    .line 21
    invoke-virtual {p0, v0}, Lk0/o3;->b3(I)V

    goto/16 :goto_0

    .line 22
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v6, :cond_a

    .line 23
    invoke-virtual {p0, v0}, Lk0/o3;->b3(I)V

    goto/16 :goto_0

    .line 24
    :pswitch_6
    aget p1, p1, v6

    const/16 v0, 0x26

    const/16 v1, 0x41

    if-eqz p1, :cond_6

    .line 25
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 26
    invoke-virtual {p0, v0}, Lk0/o3;->b3(I)V

    goto :goto_0

    .line 27
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_a

    .line 28
    invoke-virtual {p0, v0}, Lk0/o3;->b3(I)V

    goto :goto_0

    .line 29
    :pswitch_7
    aget p1, p1, v6

    const/16 v0, 0xd

    if-eqz p1, :cond_7

    .line 30
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_a

    .line 31
    invoke-virtual {p0, v1}, Lk0/o3;->b3(I)V

    goto :goto_0

    .line 32
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v6, :cond_a

    .line 33
    invoke-virtual {p0, v1}, Lk0/o3;->b3(I)V

    goto :goto_0

    .line 34
    :pswitch_8
    aget p1, p1, v6

    if-eqz p1, :cond_8

    .line 35
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_a

    .line 36
    invoke-virtual {p0, v5}, Lk0/o3;->b3(I)V

    goto :goto_0

    .line 37
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_a

    .line 38
    invoke-virtual {p0, v5}, Lk0/o3;->b3(I)V

    goto :goto_0

    .line 39
    :pswitch_9
    aget p1, p1, v6

    if-eqz p1, :cond_9

    .line 40
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_a

    .line 41
    invoke-virtual {p0, v6}, Lk0/o3;->b3(I)V

    goto :goto_0

    .line 42
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v6, :cond_a

    .line 43
    invoke-virtual {p0, v6}, Lk0/o3;->b3(I)V

    :cond_a
    :goto_0
    return-void

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
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/o3;->f:Lo1/g0;

    invoke-virtual {v1}, Lo1/g0;->a()V

    .line 2
    iget-object v1, v0, Lk0/o3;->f:Lo1/g0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lk0/o3;->f3(I)V

    .line 3
    sget v1, Lk0/nt;->c:I

    const-string v4, "com.syu.canbus"

    const/16 v5, 0x8

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_0

    if-eq v1, v6, :cond_0

    .line 4
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v3, v1, Lk0/mt;->e:I

    .line 6
    iput v2, v1, Lk0/mt;->f:I

    .line 7
    iput v2, v1, Lk0/mt;->g:I

    .line 8
    iget-object v1, v0, Lk0/o3;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v3, v0, Lk0/o3;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v1, Lu0/c;->x:Lo1/y;

    iget-object v3, v0, Lk0/o3;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    iput v2, v1, Lk0/mt;->e:I

    .line 13
    iput v2, v1, Lk0/mt;->f:I

    .line 14
    iput v2, v1, Lk0/mt;->g:I

    .line 15
    iget-object v1, v0, Lk0/o3;->j:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 16
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v3, v0, Lk0/o3;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v1, Lu0/c;->x:Lo1/y;

    iget-object v3, v0, Lk0/o3;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 18
    :cond_1
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 19
    iput v2, v1, Lk0/mt;->e:I

    .line 20
    iput v3, v1, Lk0/mt;->f:I

    .line 21
    iput v2, v1, Lk0/mt;->g:I

    new-array v1, v5, [I

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v10, 0x33

    aput v10, v1, v2

    aput v6, v1, v7

    aput v3, v1, v9

    .line 22
    iget-object v11, v0, Lk0/o3;->h:[I

    iget v12, v0, Lk0/o3;->i:I

    rem-int/2addr v12, v7

    aget v11, v11, v12

    aput v11, v1, v8

    const/16 v11, 0x25

    aput v11, v1, v6

    const/4 v12, 0x6

    const/16 v13, 0x21

    aput v13, v1, v12

    const/4 v14, 0x7

    const/16 v15, 0xaa

    aput v15, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v5, [I

    aput v4, v1, v3

    aput v10, v1, v2

    aput v6, v1, v7

    aput v3, v1, v9

    .line 23
    iget-object v9, v0, Lk0/o3;->h:[I

    iget v2, v0, Lk0/o3;->i:I

    rem-int/2addr v2, v7

    aget v2, v9, v2

    aput v2, v1, v8

    aput v11, v1, v6

    aput v13, v1, v12

    aput v15, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v5, [I

    aput v4, v1, v3

    const/4 v2, 0x1

    aput v10, v1, v2

    aput v6, v1, v7

    const/4 v2, 0x3

    aput v3, v1, v2

    .line 24
    iget-object v2, v0, Lk0/o3;->h:[I

    iget v3, v0, Lk0/o3;->i:I

    rem-int/2addr v3, v7

    aget v2, v2, v3

    aput v2, v1, v8

    aput v11, v1, v6

    aput v13, v1, v12

    aput v15, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    .line 25
    iget v1, v0, Lk0/o3;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/o3;->i:I

    .line 26
    rem-int/2addr v1, v7

    iput v1, v0, Lk0/o3;->i:I

    .line 27
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    iput-object v2, v1, Lk0/mt;->m:[I

    const/4 v2, 0x1

    goto :goto_0

    .line 28
    :cond_2
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 29
    iput v2, v1, Lk0/mt;->e:I

    .line 30
    iput v3, v1, Lk0/mt;->f:I

    .line 31
    iput v2, v1, Lk0/mt;->g:I

    new-array v3, v5, [I

    .line 32
    fill-array-data v3, :array_1

    iput-object v3, v1, Lk0/mt;->m:[I

    new-array v1, v6, [I

    .line 33
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 34
    :goto_0
    sget-object v1, Lu0/c;->m:Lo1/y;

    sget-object v3, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

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
        0x2a
    .end array-data

    :array_1
    .array-data 4
        0x21
        0x22
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x55
        0x0
    .end array-data
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v6, 0x3

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_2b

    const/4 v15, -0x3

    const/16 v16, -0x2

    const/16 v14, 0x10

    const/16 v4, 0x1c

    const/16 v3, 0x1b

    const/4 v10, 0x2

    if-eq v2, v10, :cond_1e

    const/4 v5, 0x4

    if-eq v2, v6, :cond_18

    if-eq v2, v5, :cond_17

    const/4 v12, 0x6

    if-eq v2, v12, :cond_16

    const/16 v13, 0x9

    if-eq v2, v13, :cond_15

    const/16 v13, 0x24

    if-eq v2, v13, :cond_18

    const/16 v13, 0x26

    if-eq v2, v13, :cond_14

    const/16 v13, 0x30

    if-eq v2, v13, :cond_13

    const/16 v13, 0x35

    if-eq v2, v13, :cond_12

    const/16 v13, 0x52

    if-eq v2, v13, :cond_f

    const/16 v13, 0x55

    if-eq v2, v13, :cond_0

    goto/16 :goto_17

    .line 2
    :cond_0
    sget v2, Lk0/nt;->c:I

    const/16 v13, 0x50

    if-ne v2, v10, :cond_a

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v17, p2, 0x3

    .line 4
    aget-byte v11, v1, v17

    add-int/lit8 v17, p2, 0x4

    .line 5
    aget-byte v17, v1, v17

    add-int/lit8 v18, p2, 0x6

    .line 6
    aget-byte v1, v1, v18

    and-int/2addr v2, v7

    if-eq v2, v14, :cond_2

    if-eq v2, v13, :cond_1

    new-array v12, v9, [I

    aput v2, v12, v8

    .line 7
    invoke-static {v3, v12}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v9, [I

    aput v15, v2, v8

    .line 8
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v2, v9, [I

    aput v16, v2, v8

    .line 9
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v2, v11, 0xff

    if-eq v2, v14, :cond_4

    if-eq v2, v13, :cond_3

    new-array v3, v9, [I

    aput v2, v3, v8

    .line 10
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array v2, v9, [I

    aput v15, v2, v8

    .line 11
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v2, v9, [I

    aput v16, v2, v8

    .line 12
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x15

    new-array v3, v9, [I

    and-int/lit8 v4, v17, 0xf

    aput v4, v3, v8

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v17, 0x4

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v9, :cond_9

    if-eq v2, v10, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5

    move v3, v8

    move v4, v3

    :goto_2
    move v5, v4

    goto :goto_3

    :cond_5
    move v4, v8

    move v5, v4

    move v3, v9

    goto :goto_3

    :cond_6
    move v4, v8

    move v3, v9

    move v5, v3

    goto :goto_3

    :cond_7
    move v3, v8

    move v4, v3

    move v5, v9

    goto :goto_3

    :cond_8
    move v3, v8

    move v4, v9

    goto :goto_2

    :cond_9
    move v3, v8

    move v5, v3

    move v4, v9

    :goto_3
    const/16 v6, 0x12

    new-array v7, v9, [I

    aput v3, v7, v8

    .line 14
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v6, v9, [I

    aput v4, v6, v8

    .line 15
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v9, [I

    aput v5, v4, v8

    .line 16
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v9, [I

    aput v2, v4, v8

    .line 17
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/16 v3, 0xd

    .line 18
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/16 v3, 0xb

    .line 19
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v3, v9, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/16 v3, 0xc

    .line 21
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 22
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    const/4 v3, 0x7

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    aput v1, v2, v8

    const/16 v1, 0x41

    .line 23
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_a
    if-ne v2, v6, :cond_3d

    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    add-int/lit8 v10, p2, 0x3

    .line 25
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x4

    .line 26
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x5

    .line 27
    aget-byte v12, v1, v12

    add-int/lit8 v12, p2, 0x6

    .line 28
    aget-byte v12, v1, v12

    add-int/lit8 v17, p2, 0x7

    .line 29
    aget-byte v17, v1, v17

    const/16 v19, 0x8

    add-int/lit8 v19, p2, 0x8

    .line 30
    aget-byte v1, v1, v19

    and-int/lit16 v1, v2, 0xff

    if-eq v1, v14, :cond_c

    if-eq v1, v13, :cond_b

    new-array v2, v9, [I

    aput v1, v2, v8

    .line 31
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array v1, v9, [I

    aput v15, v1, v8

    .line 32
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v1, v9, [I

    aput v16, v1, v8

    .line 33
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_4
    and-int/lit16 v1, v10, 0xff

    if-eq v1, v14, :cond_e

    if-eq v1, v13, :cond_d

    new-array v2, v9, [I

    aput v1, v2, v8

    .line 34
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    new-array v1, v9, [I

    aput v15, v1, v8

    .line 35
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    new-array v1, v9, [I

    aput v16, v1, v8

    .line 36
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    :goto_5
    and-int/lit8 v1, v11, 0xf

    const/16 v2, 0x15

    new-array v3, v9, [I

    and-int/2addr v1, v7

    aput v1, v3, v8

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v11, 0x4

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    move v2, v8

    move v3, v2

    move v4, v9

    goto :goto_8

    :pswitch_1
    move v3, v8

    move v2, v9

    move v4, v2

    goto :goto_8

    :pswitch_2
    move v2, v8

    move v3, v9

    goto :goto_7

    :pswitch_3
    move v2, v8

    move v4, v2

    move v3, v9

    goto :goto_8

    :pswitch_4
    move v4, v8

    move v2, v9

    move v3, v2

    goto :goto_8

    :pswitch_5
    move v3, v8

    move v4, v3

    move v2, v9

    goto :goto_8

    :goto_6
    move v2, v8

    move v3, v2

    :goto_7
    move v4, v3

    :goto_8
    const/16 v5, 0x13

    new-array v7, v9, [I

    aput v2, v7, v8

    .line 38
    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v9, [I

    aput v3, v5, v8

    .line 39
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v9, [I

    aput v4, v3, v8

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v12, 0x0

    and-int/2addr v2, v9

    aput v2, v1, v8

    const/16 v2, 0xd

    .line 42
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v12, 0x1

    and-int/2addr v2, v9

    aput v2, v1, v8

    const/16 v2, 0xb

    .line 43
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v9, [I

    shr-int/lit8 v3, v12, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 44
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v12, 0x5

    and-int/2addr v2, v9

    aput v2, v1, v8

    const/16 v2, 0x41

    .line 45
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    const/4 v2, 0x6

    shr-int/lit8 v2, v12, 0x6

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 46
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v17, 0x0

    and-int/2addr v2, v6

    aput v2, v1, v8

    const/16 v2, 0xc

    .line 47
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v9, [I

    shr-int/lit8 v3, v17, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 48
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x69

    new-array v2, v9, [I

    const/4 v3, 0x5

    shr-int/lit8 v3, v17, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 49
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v1, v1, v2

    const/4 v2, 0x7

    shr-int/2addr v1, v2

    and-int/2addr v1, v9

    .line 51
    sget v2, Lu0/b;->o:I

    if-eqz v2, :cond_10

    goto/16 :goto_17

    :cond_10
    if-eqz v1, :cond_11

    .line 52
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 53
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_17

    .line 54
    :cond_11
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 55
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_17

    :cond_12
    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 56
    aget-byte v6, v1, v4

    and-int/2addr v6, v7

    const/16 v10, 0x8

    shl-int/2addr v6, v10

    add-int/lit8 v10, p2, 0x3

    aget-byte v11, v1, v10

    and-int/2addr v11, v7

    or-int/2addr v6, v11

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v9, [I

    .line 57
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    aget-byte v6, v1, v10

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 58
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    .line 59
    :cond_13
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_14
    const/16 v2, 0x62

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 60
    aget-byte v7, v1, v4

    const/4 v11, 0x6

    shr-int/2addr v7, v11

    and-int/2addr v7, v6

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v9, [I

    .line 61
    aget-byte v7, v1, v4

    shr-int/lit8 v5, v7, 0x4

    and-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    .line 62
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v6

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    .line 63
    :cond_15
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3d

    add-int/lit8 v2, p2, 0x3

    .line 64
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lk0/o3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lk0/o3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lk0/o3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lk0/o3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lk0/o3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lk0/o3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 70
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lk0/o3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/16 v2, 0xa

    add-int/lit8 v2, p2, 0xa

    .line 71
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk0/o3;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_17

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 72
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1518

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_17

    :cond_17
    const/16 v2, 0x62

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 73
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 74
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 75
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_17

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 76
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 77
    aget-byte v1, v1, v3

    const-string v3, "persist.syu.reversefrontdoor"

    .line 78
    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_19

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 79
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 80
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_19
    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 81
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 82
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_9
    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 83
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 84
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v9

    aput v2, v3, v8

    const/4 v2, 0x5

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 86
    sget v3, Lk0/nt;->c:I

    if-eqz v3, :cond_1a

    if-eq v3, v5, :cond_1a

    if-ne v3, v2, :cond_3d

    .line 87
    :cond_1a
    sget v3, Lk0/o3;->n:I

    if-nez v3, :cond_1b

    goto/16 :goto_17

    :cond_1b
    shr-int/2addr v1, v2

    and-int/2addr v1, v9

    .line 88
    sget v2, Lu0/b;->o:I

    if-eqz v2, :cond_1c

    goto/16 :goto_17

    :cond_1c
    if-eqz v1, :cond_1d

    .line 89
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 90
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_17

    .line 91
    :cond_1d
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 92
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_17

    :cond_1e
    add-int/lit8 v2, p2, 0x2

    .line 93
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    int-to-byte v2, v2

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v9

    aput v6, v5, v8

    const/16 v6, 0xa

    .line 94
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v9

    aput v6, v5, v8

    const/16 v6, 0xb

    .line 95
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v9, [I

    and-int/lit8 v6, v2, 0x20

    if-nez v6, :cond_1f

    move v6, v8

    goto :goto_a

    :cond_1f
    move v6, v9

    :goto_a
    aput v6, v5, v8

    const/16 v6, 0xc

    .line 96
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v9

    aput v6, v5, v8

    const/16 v6, 0xd

    .line 97
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe

    new-array v6, v9, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v9

    aput v11, v6, v8

    .line 98
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v9

    aput v6, v5, v8

    const/16 v6, 0x41

    .line 99
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v5, v8

    .line 100
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 101
    aget-byte v2, v1, v2

    const/16 v5, 0x12

    new-array v6, v9, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v9

    aput v11, v6, v8

    .line 102
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v6, v9, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v9

    aput v11, v6, v8

    .line 103
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v6, v9, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v9

    aput v11, v6, v8

    .line 104
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v2, 0x1f

    const/16 v5, 0x8

    if-le v2, v5, :cond_20

    const/16 v2, 0x8

    :cond_20
    const/16 v5, 0x15

    new-array v6, v9, [I

    aput v2, v6, v8

    .line 105
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 106
    aget-byte v5, v1, v2

    and-int/2addr v5, v7

    const-string v6, "persist.fyt.reversetemp"

    .line 107
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_21

    add-int/lit8 v5, p2, 0x5

    .line 108
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    :cond_21
    if-lt v5, v9, :cond_22

    const/4 v6, 0x7

    if-gt v5, v6, :cond_22

    new-array v6, v9, [I

    aput v5, v6, v8

    .line 109
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_22
    if-eqz v5, :cond_24

    if-eq v5, v7, :cond_23

    new-array v6, v9, [I

    aput v5, v6, v8

    .line 110
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_23
    new-array v5, v9, [I

    aput v15, v5, v8

    .line 111
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_24
    new-array v5, v9, [I

    aput v16, v5, v8

    .line 112
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :goto_b
    const-string v3, "persist.fyt.reversetemp"

    .line 113
    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 114
    aget-byte v2, v1, v2

    goto :goto_c

    :cond_25
    add-int/lit8 v2, p2, 0x5

    .line 115
    aget-byte v2, v1, v2

    :goto_c
    and-int/2addr v2, v7

    if-lt v2, v9, :cond_26

    const/4 v3, 0x7

    if-gt v2, v3, :cond_26

    new-array v3, v9, [I

    aput v2, v3, v8

    .line 116
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_26
    if-eqz v2, :cond_28

    if-eq v2, v7, :cond_27

    new-array v3, v9, [I

    aput v2, v3, v8

    .line 117
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_27
    new-array v2, v9, [I

    aput v15, v2, v8

    .line 118
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_28
    new-array v2, v9, [I

    aput v16, v2, v8

    .line 119
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    .line 120
    :goto_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3d

    add-int/lit8 v2, p2, 0x6

    .line 121
    aget-byte v2, v1, v2

    const/4 v3, 0x7

    add-int/lit8 v3, p2, 0x7

    .line 122
    aget-byte v1, v1, v3

    and-int/2addr v2, v10

    if-eqz v2, :cond_29

    move v8, v9

    :cond_29
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2a

    and-int/lit8 v1, v1, 0x7f

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x3e8

    const/4 v3, 0x5

    mul-int/2addr v8, v3

    sub-int/2addr v1, v8

    goto :goto_e

    :cond_2a
    const/16 v2, 0xa

    const/4 v3, 0x5

    and-int/2addr v1, v7

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x3e8

    mul-int/2addr v8, v3

    add-int/2addr v1, v8

    .line 123
    :goto_e
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_17

    .line 124
    :cond_2b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3d

    add-int/lit8 v2, p2, 0x2

    .line 125
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 126
    aget-byte v1, v1, v3

    .line 127
    sget v3, Lk0/nt;->c:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_34

    and-int/2addr v2, v7

    .line 128
    iput v2, v0, Lk0/o3;->c:I

    move v2, v8

    .line 129
    :goto_f
    iget-object v3, v0, Lk0/o3;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2d

    .line 130
    iget v4, v0, Lk0/o3;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_2c

    if-eqz v4, :cond_2d

    .line 131
    iput v2, v0, Lk0/o3;->b:I

    goto :goto_10

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 132
    :cond_2d
    :goto_10
    iget v4, v0, Lk0/o3;->c:I

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_32

    const/16 v5, 0xf1

    if-eq v4, v5, :cond_30

    and-int/2addr v1, v7

    if-eqz v1, :cond_2e

    .line 133
    iget-object v1, v0, Lk0/o3;->d:[[I

    array-length v1, v1

    if-ge v2, v1, :cond_3d

    .line 134
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    .line 135
    :cond_2e
    iget v1, v0, Lk0/o3;->b:I

    iget-object v2, v0, Lk0/o3;->d:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_2f

    if-eq v1, v7, :cond_2f

    .line 136
    aget-object v1, v2, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 137
    :cond_2f
    iput v7, v0, Lk0/o3;->b:I

    goto/16 :goto_17

    :cond_30
    move v2, v8

    :goto_11
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_31

    const/4 v3, 0x7

    .line 138
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_31
    const/4 v3, 0x7

    .line 139
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_32
    move v2, v8

    :goto_12
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_33

    const/16 v3, 0x8

    .line 140
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_33
    const/16 v3, 0x8

    .line 141
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_17

    :cond_34
    and-int/2addr v2, v7

    .line 142
    iput v2, v0, Lk0/o3;->c:I

    move v2, v8

    .line 143
    :goto_13
    iget-object v3, v0, Lk0/o3;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_36

    .line 144
    iget v4, v0, Lk0/o3;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_35

    if-eqz v4, :cond_36

    .line 145
    iput v2, v0, Lk0/o3;->b:I

    goto :goto_14

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 146
    :cond_36
    :goto_14
    iget v4, v0, Lk0/o3;->c:I

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_3b

    const/16 v5, 0xf1

    if-eq v4, v5, :cond_39

    and-int/2addr v1, v7

    if-eqz v1, :cond_37

    .line 147
    array-length v1, v3

    if-ge v2, v1, :cond_3d

    .line 148
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_17

    .line 149
    :cond_37
    iget v1, v0, Lk0/o3;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_38

    if-eq v1, v7, :cond_38

    .line 150
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 151
    :cond_38
    iput v7, v0, Lk0/o3;->b:I

    goto :goto_17

    :cond_39
    move v2, v8

    :goto_15
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_3a

    const/16 v3, 0x8

    .line 152
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_3a
    const/16 v3, 0x8

    .line 153
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto :goto_17

    :cond_3b
    move v2, v8

    :goto_16
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_3c

    const/4 v3, 0x7

    .line 154
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_3c
    const/4 v3, 0x7

    .line 155
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    :cond_3d
    :goto_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
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
    iget-object v0, p0, Lk0/o3;->f:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/o3;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/o3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/o3;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    const/4 v5, 0x1

    if-eq v1, v5, :cond_8

    const/4 v6, 0x2

    if-eq v1, v6, :cond_5

    const/4 v7, 0x4

    if-eq v1, v3, :cond_3

    if-eq v1, v7, :cond_2

    const/16 v2, 0x3eb

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_e

    .line 2
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_3

    .line 4
    :cond_1
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_3

    :cond_2
    if-eqz v2, :cond_e

    .line 6
    array-length v1, v2

    if-lez v1, :cond_e

    .line 7
    aget v1, v2, v4

    invoke-virtual {v0, v1}, Lk0/o3;->f3(I)V

    goto/16 :goto_3

    .line 8
    :cond_3
    sget v1, Lk0/nt;->c:I

    if-ne v1, v3, :cond_4

    const/16 v1, 0x8

    new-array v8, v1, [I

    const/16 v9, 0xe3

    aput v9, v8, v4

    const/16 v10, 0x33

    aput v10, v8, v5

    const/4 v11, 0x5

    aput v11, v8, v6

    .line 9
    aget v12, v2, v4

    aput v12, v8, v3

    iget-object v12, v0, Lk0/o3;->h:[I

    iget v13, v0, Lk0/o3;->i:I

    rem-int/2addr v13, v6

    aget v12, v12, v13

    aput v12, v8, v7

    const/16 v12, 0x25

    aput v12, v8, v11

    const/4 v13, 0x6

    const/16 v14, 0x21

    aput v14, v8, v13

    const/4 v15, 0x7

    const/16 v16, 0xaa

    aput v16, v8, v15

    invoke-static {v8}, Lz/k;->s([I)V

    new-array v8, v1, [I

    aput v9, v8, v4

    aput v10, v8, v5

    aput v11, v8, v6

    .line 10
    aget v17, v2, v4

    aput v17, v8, v3

    iget-object v3, v0, Lk0/o3;->h:[I

    iget v5, v0, Lk0/o3;->i:I

    rem-int/2addr v5, v6

    aget v3, v3, v5

    aput v3, v8, v7

    aput v12, v8, v11

    aput v14, v8, v13

    aput v16, v8, v15

    invoke-static {v8}, Lz/k;->s([I)V

    new-array v1, v1, [I

    aput v9, v1, v4

    const/4 v3, 0x1

    aput v10, v1, v3

    aput v11, v1, v6

    .line 11
    aget v2, v2, v4

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v2, v0, Lk0/o3;->h:[I

    iget v3, v0, Lk0/o3;->i:I

    rem-int/2addr v3, v6

    aget v2, v2, v3

    aput v2, v1, v7

    aput v12, v1, v11

    aput v14, v1, v13

    aput v16, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    .line 12
    iget v1, v0, Lk0/o3;->i:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lk0/o3;->i:I

    .line 13
    rem-int/2addr v1, v6

    iput v1, v0, Lk0/o3;->i:I

    goto :goto_3

    :cond_4
    move v3, v5

    if-eqz v2, :cond_e

    .line 14
    array-length v1, v2

    if-lt v1, v6, :cond_e

    aget v1, v2, v3

    if-nez v1, :cond_e

    .line 15
    aget v1, v2, v4

    invoke-virtual {v0, v1}, Lk0/o3;->b3(I)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_e

    .line 16
    array-length v1, v2

    if-lez v1, :cond_e

    .line 17
    aget v1, v2, v4

    if-gez v1, :cond_6

    .line 18
    aput v4, v2, v4

    goto :goto_0

    .line 19
    :cond_6
    aget v1, v2, v4

    if-le v1, v6, :cond_7

    .line 20
    aput v6, v2, v4

    .line 21
    :cond_7
    :goto_0
    aget v1, v2, v4

    invoke-virtual {v0, v6, v1}, Lk0/o3;->e3(II)V

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_e

    .line 22
    array-length v1, v2

    if-lez v1, :cond_e

    .line 23
    aget v1, v2, v4

    if-gez v1, :cond_9

    .line 24
    aput v4, v2, v4

    goto :goto_1

    .line 25
    :cond_9
    aget v1, v2, v4

    const/4 v3, 0x3

    if-le v1, v3, :cond_a

    .line 26
    aput v3, v2, v4

    .line 27
    :cond_a
    :goto_1
    aget v1, v2, v4

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lk0/o3;->e3(II)V

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_e

    .line 28
    array-length v1, v2

    if-lez v1, :cond_e

    .line 29
    aget v1, v2, v4

    if-gez v1, :cond_c

    .line 30
    aput v4, v2, v4

    goto :goto_2

    .line 31
    :cond_c
    aget v1, v2, v4

    const/4 v3, 0x3

    if-le v1, v3, :cond_d

    .line 32
    aput v3, v2, v4

    .line 33
    :cond_d
    :goto_2
    aget v1, v2, v4

    invoke-virtual {v0, v4, v1}, Lk0/o3;->e3(II)V

    :cond_e
    :goto_3
    return-void
.end method

.method public final a3(I)I
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/16 v2, 0xa

    if-eqz p1, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_7

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v2

    :cond_7
    :goto_1
    return v0
.end method

.method public final b3(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    sget v2, Lk0/nt;->c:I

    const/4 v3, 0x6

    const/16 v4, 0x33

    const/16 v5, 0xe3

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x5

    const/4 v12, 0x2

    if-ne v2, v8, :cond_0

    const/16 v2, 0x8

    new-array v13, v2, [I

    aput v5, v13, v9

    aput v4, v13, v10

    aput v11, v13, v12

    aput v1, v13, v8

    .line 2
    iget-object v14, v0, Lk0/o3;->h:[I

    iget v15, v0, Lk0/o3;->i:I

    rem-int/2addr v15, v12

    aget v14, v14, v15

    aput v14, v13, v7

    const/16 v14, 0x25

    aput v14, v13, v11

    const/16 v15, 0x21

    aput v15, v13, v3

    const/16 v16, 0xaa

    aput v16, v13, v6

    invoke-static {v13}, Lz/k;->s([I)V

    new-array v13, v2, [I

    aput v5, v13, v9

    aput v4, v13, v10

    aput v11, v13, v12

    aput v1, v13, v8

    .line 3
    iget-object v8, v0, Lk0/o3;->h:[I

    iget v4, v0, Lk0/o3;->i:I

    rem-int/2addr v4, v12

    aget v4, v8, v4

    aput v4, v13, v7

    aput v14, v13, v11

    aput v15, v13, v3

    aput v16, v13, v6

    invoke-static {v13}, Lz/k;->s([I)V

    new-array v2, v2, [I

    aput v5, v2, v9

    const/16 v4, 0x33

    aput v4, v2, v10

    aput v11, v2, v12

    const/4 v4, 0x3

    aput v1, v2, v4

    .line 4
    iget-object v1, v0, Lk0/o3;->h:[I

    iget v4, v0, Lk0/o3;->i:I

    rem-int/2addr v4, v12

    aget v1, v1, v4

    aput v1, v2, v7

    aput v14, v2, v11

    aput v15, v2, v3

    aput v16, v2, v6

    invoke-static {v2}, Lz/k;->s([I)V

    .line 5
    iget v1, v0, Lk0/o3;->i:I

    add-int/2addr v1, v10

    iput v1, v0, Lk0/o3;->i:I

    .line 6
    rem-int/2addr v1, v12

    iput v1, v0, Lk0/o3;->i:I

    goto :goto_1

    .line 7
    :cond_0
    iget v2, v0, Lk0/o3;->m:I

    add-int/2addr v2, v10

    rem-int/2addr v2, v12

    iput v2, v0, Lk0/o3;->m:I

    new-array v4, v6, [I

    aput v5, v4, v9

    const/16 v5, 0x33

    aput v5, v4, v10

    aput v7, v4, v12

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput v1, v4, v5

    if-nez v2, :cond_1

    const/16 v1, 0x22

    goto :goto_0

    :cond_1
    const/16 v1, 0xcc

    :goto_0
    aput v1, v4, v7

    aput v9, v4, v11

    aput v9, v4, v3

    .line 8
    invoke-static {v4}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method

.method public final c3(I)V
    .locals 10

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x40

    const/4 v2, 0x3

    const/16 v3, 0x82

    const/16 v4, 0xe3

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v6, [I

    aput v4, v0, v8

    aput v3, v0, v9

    aput v7, v0, v7

    aput v1, v0, v2

    if-ne p1, v9, :cond_1

    move v8, v9

    :cond_1
    aput v8, v0, v5

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_2
    :goto_0
    new-array v0, v6, [I

    aput v4, v0, v8

    aput v3, v0, v9

    aput v7, v0, v7

    aput v1, v0, v2

    if-ne p1, v9, :cond_3

    goto :goto_1

    :cond_3
    move v8, v9

    :goto_1
    aput v8, v0, v5

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    :goto_2
    return-void
.end method

.method public final e3(II)V
    .locals 8

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/16 v4, 0xe3

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    new-array v0, v6, [I

    aput v4, v0, v5

    const/16 v4, -0x7d

    aput v4, v0, v3

    aput v7, v0, v7

    int-to-byte p1, p1

    aput p1, v0, v2

    int-to-byte p1, p2

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v6, [I

    aput v4, v0, v5

    const/16 v4, -0x7e

    aput v4, v0, v3

    aput v7, v0, v7

    int-to-byte p1, p1

    aput p1, v0, v2

    int-to-byte p1, p2

    aput p1, v0, v1

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final f3(I)V
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
    sput p1, Lk0/o3;->n:I

    const/16 v2, 0x6a

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/o3;->f:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/o3;->n:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/o3;->f:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
