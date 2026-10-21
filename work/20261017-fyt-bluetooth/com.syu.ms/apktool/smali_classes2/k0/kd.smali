.class public Lk0/kd;
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
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0xff

    .line 2
    iput v1, v0, Lk0/kd;->e:I

    const/16 v1, 0x10

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v14, 0xb

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v15, 0xc

    aput-object v3, v1, v15

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v15, 0xd

    aput-object v3, v1, v15

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v16, 0xe

    aput-object v3, v1, v16

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v16, 0xf

    aput-object v3, v1, v16

    iput-object v1, v0, Lk0/kd;->f:[[I

    new-array v1, v15, [[I

    new-array v3, v2, [I

    .line 4
    fill-array-data v3, :array_10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    aput-object v3, v1, v14

    new-array v2, v2, [I

    fill-array-data v2, :array_1c

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iput-object v1, v0, Lk0/kd;->g:[[I

    .line 5
    iput v4, v0, Lk0/kd;->h:I

    .line 6
    iput v4, v0, Lk0/kd;->i:I

    .line 7
    new-instance v1, Lk0/kd$a;

    invoke-direct {v1, v0}, Lk0/kd$a;-><init>(Lk0/kd;)V

    iput-object v1, v0, Lk0/kd;->j:Ljava/lang/Runnable;

    .line 8
    iput v4, v0, Lk0/kd;->k:I

    .line 9
    new-instance v1, Lk0/kd$b;

    invoke-direct {v1, v0}, Lk0/kd$b;-><init>(Lk0/kd;)V

    iput-object v1, v0, Lk0/kd;->l:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/kd$c;

    invoke-direct {v1, v0}, Lk0/kd$c;-><init>(Lk0/kd;)V

    iput-object v1, v0, Lk0/kd;->m:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lk0/kd$d;

    invoke-direct {v1, v0}, Lk0/kd$d;-><init>(Lk0/kd;)V

    iput-object v1, v0, Lk0/kd;->n:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/kd$e;

    invoke-direct {v1, v0}, Lk0/kd$e;-><init>(Lk0/kd;)V

    iput-object v1, v0, Lk0/kd;->o:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lk0/kd$f;

    invoke-direct {v1, v0}, Lk0/kd$f;-><init>(Lk0/kd;)V

    iput-object v1, v0, Lk0/kd;->p:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lk0/kd$g;

    invoke-direct {v1, v0}, Lk0/kd$g;-><init>(Lk0/kd;)V

    iput-object v1, v0, Lk0/kd;->q:Ljava/lang/Runnable;

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
        0x15
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_12
    .array-data 4
        0x17
        0x22
    .end array-data

    :array_13
    .array-data 4
        0x18
        0x23
    .end array-data

    :array_14
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_15
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_16
    .array-data 4
        0x25
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_18
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_1a
    .array-data 4
        0x43
        0x2
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

.method public static synthetic d3(Lk0/kd;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/kd;->e3(BLjava/lang/String;)V

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

    if-eqz p1, :cond_11

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Air codeCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "      value = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0x21

    const/16 v4, 0xa

    if-eq v2, v3, :cond_f

    const/16 v3, 0x22

    const/16 v5, 0xb

    if-eq v2, v3, :cond_d

    const/16 v1, 0x24

    const/16 v3, 0xf

    const/4 v6, 0x5

    if-eq v2, v1, :cond_b

    const/16 v1, 0x44

    if-eq v2, v1, :cond_9

    const/16 v1, 0x26

    const/16 v4, 0xc

    if-eq v2, v1, :cond_7

    const/16 v1, 0x27

    if-eq v2, v1, :cond_5

    const/16 v1, 0x29

    if-eq v2, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v2, v1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    aget p1, p1, v0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, v3}, Lk0/kd;->c3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0x10

    .line 6
    invoke-virtual {p0, p1}, Lk0/kd;->c3(I)V

    goto/16 :goto_0

    .line 7
    :cond_3
    aget p1, p1, v0

    if-eqz p1, :cond_4

    const/16 p1, 0xd

    .line 8
    invoke-virtual {p0, p1}, Lk0/kd;->c3(I)V

    goto/16 :goto_0

    :cond_4
    const/16 p1, 0xe

    .line 9
    invoke-virtual {p0, p1}, Lk0/kd;->c3(I)V

    goto/16 :goto_0

    .line 10
    :cond_5
    aget p1, p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 11
    invoke-virtual {p0, v5}, Lk0/kd;->c3(I)V

    goto/16 :goto_0

    .line 12
    :cond_6
    invoke-virtual {p0, v4}, Lk0/kd;->c3(I)V

    goto/16 :goto_0

    .line 13
    :cond_7
    aget v1, p1, v0

    const/4 v2, 0x7

    if-ne v1, v0, :cond_8

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_11

    .line 15
    invoke-virtual {p0, v2}, Lk0/kd;->c3(I)V

    goto/16 :goto_0

    .line 16
    :cond_8
    aget p1, p1, v0

    if-nez p1, :cond_11

    .line 17
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v0, :cond_11

    .line 18
    invoke-virtual {p0, v2}, Lk0/kd;->c3(I)V

    goto :goto_0

    .line 19
    :cond_9
    aget v1, p1, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    new-array p1, v6, [I

    .line 20
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 21
    :cond_a
    aget p1, p1, v0

    if-ne p1, v4, :cond_11

    new-array p1, v6, [I

    .line 22
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 23
    :cond_b
    aget p1, p1, v0

    if-eqz p1, :cond_c

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_11

    .line 25
    invoke-virtual {p0, v6}, Lk0/kd;->c3(I)V

    goto :goto_0

    .line 26
    :cond_c
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v0, :cond_11

    .line 27
    invoke-virtual {p0, v6}, Lk0/kd;->c3(I)V

    goto :goto_0

    .line 28
    :cond_d
    aget p1, p1, v0

    if-eqz p1, :cond_e

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_11

    .line 30
    invoke-virtual {p0, v1}, Lk0/kd;->c3(I)V

    goto :goto_0

    .line 31
    :cond_e
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v0, :cond_11

    .line 32
    invoke-virtual {p0, v1}, Lk0/kd;->c3(I)V

    goto :goto_0

    .line 33
    :cond_f
    aget p1, p1, v0

    if-eqz p1, :cond_10

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_11

    .line 35
    invoke-virtual {p0, v0}, Lk0/kd;->c3(I)V

    goto :goto_0

    .line 36
    :cond_10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v0, :cond_11

    .line 37
    invoke-virtual {p0, v0}, Lk0/kd;->c3(I)V

    :cond_11
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x8c
        0x19
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x8c
        0x19
        0x1
    .end array-data
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
    iput v1, v0, Lk0/mt;->n:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    const/16 v3, 0x24

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 9
    iput v2, v0, Lk0/mt;->i:I

    .line 10
    :goto_0
    iget-object v0, p0, Lk0/kd;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/kd;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/kd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/kd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/kd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/kd;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/kd;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/kd;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

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
        0x44
        0x43
        0x37
        0x38
        0x46
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x79

    const/16 v4, 0xf

    const/16 v5, 0x1f

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_2f

    const/16 v3, -0x18

    const/4 v11, 0x5

    if-eq v2, v3, :cond_2d

    const/16 v3, -0x10

    const/4 v12, 0x2

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x12

    const/16 v13, 0x31

    const/4 v14, 0x4

    if-eq v2, v13, :cond_1d

    const/16 v4, 0x41

    if-eq v2, v4, :cond_19

    const/16 v4, 0x11

    if-eq v2, v4, :cond_13

    if-eq v2, v3, :cond_11

    const/16 v3, 0x21

    if-eq v2, v3, :cond_b

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    goto/16 :goto_13

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 4
    aget-byte v1, v1, v3

    if-eq v2, v10, :cond_6

    if-eq v2, v12, :cond_1

    if-eq v2, v6, :cond_1

    if-eq v2, v14, :cond_1

    if-eq v2, v11, :cond_1

    goto/16 :goto_13

    .line 5
    :cond_1
    iget v2, v0, Lk0/kd;->i:I

    if-eq v1, v2, :cond_30

    if-le v1, v2, :cond_3

    move v2, v9

    .line 6
    :goto_0
    iget v3, v0, Lk0/kd;->i:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_2

    .line 7
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-ge v1, v2, :cond_5

    move v2, v9

    .line 9
    :goto_1
    iget v3, v0, Lk0/kd;->i:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    const/16 v3, 0x1e

    .line 10
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/16 v2, 0x1e

    .line 11
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 12
    :cond_5
    :goto_2
    iput v1, v0, Lk0/kd;->i:I

    goto/16 :goto_13

    .line 13
    :cond_6
    iget v2, v0, Lk0/kd;->h:I

    if-eq v1, v2, :cond_30

    if-le v1, v2, :cond_8

    move v2, v9

    .line 14
    :goto_3
    iget v3, v0, Lk0/kd;->h:I

    sub-int v3, v1, v3

    const/4 v4, 0x7

    if-ge v2, v3, :cond_7

    .line 15
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 16
    :cond_7
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_8
    if-ge v1, v2, :cond_a

    move v2, v9

    .line 17
    :goto_4
    iget v3, v0, Lk0/kd;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_9

    .line 18
    invoke-static {v7, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 19
    :cond_9
    invoke-static {v7, v10}, Ll0/b0;->l0(II)V

    .line 20
    :cond_a
    :goto_5
    iput v1, v0, Lk0/kd;->h:I

    goto/16 :goto_13

    .line 21
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    iput v2, v0, Lk0/kd;->d:I

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v1, v1, v2

    move v2, v9

    .line 24
    :goto_6
    iget-object v3, v0, Lk0/kd;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 25
    iget v4, v0, Lk0/kd;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 26
    iput v2, v0, Lk0/kd;->e:I

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 27
    :cond_d
    :goto_7
    iget v4, v0, Lk0/kd;->d:I

    const/16 v5, 0x43

    if-eq v4, v5, :cond_10

    and-int/2addr v1, v8

    if-eqz v1, :cond_e

    .line 28
    array-length v1, v3

    if-ge v2, v1, :cond_30

    .line 29
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 30
    :cond_e
    iget v1, v0, Lk0/kd;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_f

    if-eq v1, v8, :cond_f

    .line 31
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 32
    :cond_f
    iput v8, v0, Lk0/kd;->e:I

    goto/16 :goto_13

    :cond_10
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_30

    const-string v1, "com.syu.carlink"

    .line 33
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 34
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_11
    add-int/lit8 v2, p2, 0x4

    .line 35
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 36
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_12

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 37
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 38
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_12
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 39
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 40
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 41
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 42
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 43
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 44
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 45
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit8 v2, p2, 0x4

    .line 46
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 47
    aget-byte v3, v1, v3

    and-int/2addr v2, v8

    .line 48
    iput v2, v0, Lk0/kd;->c:I

    move v2, v9

    .line 49
    :goto_9
    iget-object v4, v0, Lk0/kd;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_15

    .line 50
    iget v5, v0, Lk0/kd;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_14

    if-eqz v5, :cond_15

    .line 51
    iput v2, v0, Lk0/kd;->b:I

    goto :goto_a

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    :goto_a
    and-int/2addr v3, v8

    if-eqz v3, :cond_16

    .line 52
    array-length v3, v4

    if-ge v2, v3, :cond_18

    .line 53
    aget-object v2, v4, v2

    aget v2, v2, v10

    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_b

    .line 54
    :cond_16
    iget v2, v0, Lk0/kd;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_17

    if-eq v2, v8, :cond_17

    .line 55
    aget-object v2, v4, v2

    aget v2, v2, v10

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 56
    :cond_17
    iput v8, v0, Lk0/kd;->b:I

    :cond_18
    :goto_b
    add-int/lit8 v2, p2, 0x9

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const/16 v3, 0x2710

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_13

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 58
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->Y0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->Y0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->Y0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->Y0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 62
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x7

    .line 63
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    add-int/lit8 v5, p2, 0x8

    .line 64
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    add-int/lit8 v6, p2, 0x9

    .line 65
    aget-byte v7, v1, v6

    and-int/2addr v7, v8

    if-ne v3, v8, :cond_1a

    if-ne v4, v8, :cond_1a

    if-ne v5, v8, :cond_1a

    if-ne v7, v8, :cond_1a

    .line 66
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_c

    .line 67
    :cond_1a
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_1b

    sget v9, Ll0/c0;->h:I

    if-ne v9, v4, :cond_1b

    sget v9, Ll0/c0;->i:I

    if-ne v9, v5, :cond_1b

    sget v9, Ll0/c0;->j:I

    if-eq v9, v7, :cond_1c

    .line 68
    :cond_1b
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_1c

    .line 69
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 70
    sput v14, Ll0/c0;->k:I

    .line 71
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 72
    :cond_1c
    :goto_c
    sput v3, Ll0/c0;->g:I

    .line 73
    sput v4, Ll0/c0;->h:I

    .line 74
    sput v5, Ll0/c0;->i:I

    .line 75
    sput v7, Ll0/c0;->j:I

    .line 76
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    invoke-static {v3}, Ll0/c0;->Y0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 77
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->Y0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 78
    aget-byte v2, v1, v6

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->Y0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 79
    aget-byte v1, v1, v6

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->Y0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_13

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 81
    aget-byte v5, v1, v5

    add-int/lit8 v7, p2, 0x4

    .line 82
    aget-byte v7, v1, v7

    add-int/lit8 v15, p2, 0x6

    .line 83
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x7

    .line 84
    aget-byte v3, v1, v16

    const/16 v13, 0xa

    new-array v11, v10, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v9

    .line 85
    invoke-static {v13, v11}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x35

    new-array v13, v10, [I

    shr-int/lit8 v18, v2, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v13, v9

    .line 86
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    new-array v11, v10, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aput v2, v11, v9

    const/16 v2, 0xd

    .line 87
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xb

    new-array v13, v10, [I

    shr-int/lit8 v18, v5, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v13, v9

    .line 88
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xc

    new-array v13, v10, [I

    shr-int/lit8 v18, v5, 0x4

    and-int/lit8 v18, v18, 0x1

    aput v18, v13, v9

    .line 89
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xe

    new-array v13, v10, [I

    shr-int/2addr v5, v12

    and-int/2addr v5, v10

    aput v5, v13, v9

    .line 90
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x10

    new-array v11, v10, [I

    shr-int/lit8 v12, v7, 0x5

    and-int/2addr v12, v10

    aput v12, v11, v9

    .line 91
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/2addr v7, v14

    and-int/2addr v7, v10

    aput v7, v5, v9

    .line 92
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v4, v15, 0xff

    if-eq v4, v10, :cond_21

    if-eq v4, v6, :cond_20

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1f

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1e

    packed-switch v4, :pswitch_data_0

    move v4, v9

    move v5, v4

    :goto_d
    move v6, v5

    :goto_e
    move v7, v6

    goto :goto_f

    :pswitch_0
    move v4, v9

    move v5, v10

    goto :goto_d

    :pswitch_1
    move v4, v9

    move v7, v4

    move v5, v10

    move v6, v5

    goto :goto_f

    :pswitch_2
    move v4, v9

    move v6, v4

    move v5, v10

    move v7, v5

    goto :goto_f

    :pswitch_3
    move v4, v9

    move v6, v4

    move v7, v6

    move v5, v10

    goto :goto_f

    :cond_1e
    move v4, v9

    move v5, v4

    move v7, v5

    move v6, v10

    goto :goto_f

    :cond_1f
    move v4, v9

    move v5, v4

    move v6, v10

    goto :goto_e

    :cond_20
    move v4, v9

    move v5, v4

    move v6, v5

    move v7, v10

    goto :goto_f

    :cond_21
    move v5, v9

    move v6, v5

    move v7, v6

    move v4, v10

    :goto_f
    new-array v11, v10, [I

    aput v4, v11, v9

    const/16 v4, 0x31

    .line 93
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    aput v5, v4, v9

    const/16 v5, 0x12

    .line 94
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v5, v10, [I

    aput v6, v5, v9

    .line 95
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v5, v10, [I

    aput v7, v5, v9

    .line 96
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x15

    new-array v5, v10, [I

    and-int/2addr v3, v8

    aput v3, v5, v9

    .line 97
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const-string v3, "persist.fyt.reversetemp"

    .line 98
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, -0x3

    const/4 v5, -0x2

    const/16 v6, 0xfe

    const/16 v7, 0x1c

    const/16 v11, 0x1b

    if-eqz v3, :cond_26

    add-int/lit8 v3, p2, 0x8

    .line 99
    aget-byte v12, v1, v3

    and-int/2addr v12, v8

    if-ne v12, v6, :cond_22

    new-array v3, v10, [I

    aput v5, v3, v9

    .line 100
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    .line 101
    :cond_22
    aget-byte v12, v1, v3

    and-int/2addr v12, v8

    if-ne v12, v8, :cond_23

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 102
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_23
    new-array v12, v10, [I

    .line 103
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    aput v3, v12, v9

    invoke-static {v7, v12}, Lk0/qt;->y0(I[I)V

    :goto_10
    add-int/lit8 v3, p2, 0x9

    .line 104
    aget-byte v7, v1, v3

    and-int/2addr v7, v8

    if-ne v7, v6, :cond_24

    new-array v3, v10, [I

    aput v5, v3, v9

    .line 105
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    .line 106
    :cond_24
    aget-byte v5, v1, v3

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_25

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 107
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_25
    new-array v4, v10, [I

    .line 108
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    aput v3, v4, v9

    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_26
    add-int/lit8 v3, p2, 0x8

    .line 109
    aget-byte v12, v1, v3

    and-int/2addr v12, v8

    if-ne v12, v6, :cond_27

    new-array v3, v10, [I

    aput v5, v3, v9

    .line 110
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    .line 111
    :cond_27
    aget-byte v12, v1, v3

    and-int/2addr v12, v8

    if-ne v12, v8, :cond_28

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 112
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_28
    new-array v12, v10, [I

    .line 113
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    aput v3, v12, v9

    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    :goto_11
    add-int/lit8 v3, p2, 0x9

    .line 114
    aget-byte v11, v1, v3

    and-int/2addr v11, v8

    if-ne v11, v6, :cond_29

    new-array v3, v10, [I

    aput v5, v3, v9

    .line 115
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    .line 116
    :cond_29
    aget-byte v5, v1, v3

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_2a

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 117
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_2a
    new-array v4, v10, [I

    .line 118
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    aput v3, v4, v9

    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    :goto_12
    add-int/lit8 v2, p2, 0xd

    .line 119
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    mul-int/lit8 v2, v1, 0x5

    add-int/lit16 v2, v2, 0x258

    if-nez v1, :cond_2b

    .line 120
    invoke-static {v9}, Lu0/d;->A3(I)V

    goto/16 :goto_13

    .line 121
    :cond_2b
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto/16 :goto_13

    .line 122
    :cond_2c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 123
    :cond_2d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 124
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-nez v2, :cond_30

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 125
    aget-byte v1, v1, v2

    if-eqz v1, :cond_2e

    .line 126
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_13

    .line 127
    :cond_2e
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_13

    :cond_2f
    add-int/lit8 v2, p2, 0x2

    .line 128
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 129
    aget-byte v3, v1, v3

    add-int/lit8 v11, p2, 0x4

    .line 130
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x5

    .line 131
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x6

    .line 132
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x7

    .line 133
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x8

    .line 134
    aget-byte v15, v1, v15

    and-int/2addr v15, v8

    add-int/lit8 v16, p2, 0x9

    .line 135
    aget-byte v1, v1, v16

    and-int/2addr v1, v8

    const/16 v8, 0x62

    new-array v4, v10, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v4, v9

    .line 136
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x63

    new-array v8, v10, [I

    shr-int/lit8 v17, v11, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v8, v9

    .line 137
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x64

    new-array v8, v10, [I

    shr-int/lit8 v17, v11, 0x5

    and-int/lit8 v17, v17, 0x3

    aput v17, v8, v9

    .line 138
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x65

    new-array v8, v10, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    shl-int/lit8 v17, v17, 0x8

    shr-int/lit8 v18, v11, 0x4

    and-int/lit8 v18, v18, 0x1

    or-int v17, v17, v18

    aput v17, v8, v9

    .line 139
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x66

    new-array v8, v10, [I

    shr-int/lit8 v17, v2, 0x5

    and-int/lit8 v17, v17, 0x1

    shl-int/lit8 v17, v17, 0x8

    shr-int/lit8 v18, v11, 0x3

    and-int/lit8 v18, v18, 0x1

    or-int v17, v17, v18

    aput v17, v8, v9

    .line 140
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x67

    new-array v8, v10, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x1

    shl-int/lit8 v17, v17, 0x8

    shr-int/lit8 v18, v11, 0x2

    and-int/lit8 v18, v18, 0x1

    or-int v17, v17, v18

    aput v17, v8, v9

    .line 141
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x68

    new-array v8, v10, [I

    shr-int/lit8 v17, v2, 0x3

    and-int/lit8 v17, v17, 0x1

    shl-int/lit8 v17, v17, 0x8

    shr-int/lit8 v18, v11, 0x1

    and-int/lit8 v18, v18, 0x1

    or-int v17, v17, v18

    aput v17, v8, v9

    .line 142
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x69

    new-array v8, v10, [I

    shr-int/lit8 v17, v2, 0x2

    and-int/lit8 v17, v17, 0x1

    shl-int/lit8 v17, v17, 0x8

    shr-int/2addr v11, v9

    and-int/2addr v11, v10

    or-int v11, v17, v11

    aput v11, v8, v9

    .line 143
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6a

    new-array v8, v10, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v10

    shl-int/2addr v11, v7

    shr-int/lit8 v17, v12, 0x6

    and-int/lit8 v17, v17, 0x3

    or-int v11, v11, v17

    aput v11, v8, v9

    .line 144
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6b

    new-array v8, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    shl-int/2addr v2, v7

    and-int/2addr v5, v12

    or-int/2addr v2, v5

    aput v2, v8, v9

    .line 145
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v10

    shl-int/2addr v5, v7

    shr-int/lit8 v8, v13, 0x4

    const/16 v11, 0xf

    and-int/2addr v8, v11

    or-int/2addr v5, v8

    aput v5, v4, v9

    .line 146
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v10

    shl-int/2addr v5, v7

    shr-int/lit8 v8, v13, 0x3

    and-int/2addr v8, v10

    or-int/2addr v5, v8

    aput v5, v4, v9

    .line 147
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v10

    shl-int/2addr v5, v7

    shr-int/lit8 v8, v13, 0x2

    and-int/2addr v8, v10

    or-int/2addr v5, v8

    aput v5, v4, v9

    .line 148
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v10

    shl-int/2addr v5, v7

    shr-int/lit8 v8, v13, 0x1

    and-int/2addr v8, v10

    or-int/2addr v5, v8

    aput v5, v4, v9

    .line 149
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v10

    shl-int/2addr v5, v7

    shr-int/lit8 v8, v13, 0x0

    and-int/2addr v8, v10

    or-int/2addr v5, v8

    aput v5, v4, v9

    .line 150
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v10

    shl-int/2addr v5, v7

    shr-int/lit8 v8, v14, 0x7

    and-int/2addr v8, v10

    or-int/2addr v5, v8

    aput v5, v4, v9

    .line 151
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v10, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v10

    shl-int/2addr v3, v7

    shr-int/lit8 v5, v14, 0x5

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    aput v3, v4, v9

    .line 152
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v10, [I

    shr-int/lit8 v4, v14, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 153
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v10, [I

    shr-int/lit8 v4, v14, 0x3

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 154
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v10

    shl-int/2addr v4, v7

    shr-int/lit8 v5, v15, 0x6

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    .line 155
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    shl-int/2addr v4, v7

    shr-int/lit8 v5, v15, 0x4

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    .line 156
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v10

    shl-int/2addr v4, v7

    shr-int/lit8 v5, v15, 0x3

    and-int/2addr v5, v10

    or-int/2addr v4, v5

    aput v4, v3, v9

    .line 157
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v10

    shl-int/2addr v4, v7

    shr-int/lit8 v5, v15, 0x2

    and-int/2addr v5, v10

    or-int/2addr v4, v5

    aput v4, v3, v9

    .line 158
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v10, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    shl-int/2addr v1, v7

    shr-int/lit8 v4, v15, 0x1

    and-int/2addr v4, v10

    or-int/2addr v1, v4

    aput v1, v3, v9

    .line 159
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_30
    :goto_13
    return-void

    nop

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
    iget-object v0, p0, Lk0/kd;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/kd;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/kd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/kd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/kd;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/kd;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/kd;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/kd;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7b

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

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_e

    if-eq p1, v2, :cond_d

    if-eq p1, v4, :cond_b

    const/4 v5, 0x7

    const/4 v6, 0x6

    if-eq p1, v0, :cond_6

    const/16 v7, 0x3eb

    if-eq p1, v7, :cond_1

    const/16 v7, 0x3ed

    if-eq p1, v7, :cond_7

    const/16 v7, 0x405

    if-eq p1, v7, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2
    aget p1, p2, v2

    mul-int/lit16 p1, p1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v7

    div-int/2addr p1, v7

    .line 3
    aget p2, p2, v4

    mul-int/lit16 p2, p2, 0x258

    invoke-static {}, La/f;->i()I

    move-result v7

    div-int/2addr p2, v7

    const/16 v7, 0x9

    new-array v7, v7, [I

    aput p3, v7, v3

    aput v6, v7, v2

    const/16 p3, 0x2c

    aput p3, v7, v4

    aput v2, v7, v0

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    aput p3, v7, p4

    and-int/lit16 p1, p1, 0xff

    aput p1, v7, v1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, v7, v6

    and-int/lit16 p1, p2, 0xff

    aput p1, v7, v5

    const/16 p1, 0x8

    aput v3, v7, p1

    .line 4
    invoke-static {v7}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 5
    :cond_1
    sget p1, Lk0/nt;->c:I

    if-ne p1, v6, :cond_2

    new-array p1, v6, [I

    .line 6
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_2
    const/16 p3, 0x1e

    if-ne p1, p3, :cond_4

    .line 7
    sget p1, Lu0/b;->o:I

    if-ne p1, v2, :cond_3

    new-array p1, v1, [I

    .line 8
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_3
    new-array p1, v1, [I

    .line 9
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 10
    :cond_4
    aget p1, p2, v3

    if-ne p1, v2, :cond_5

    new-array p1, v1, [I

    .line 11
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_5
    new-array p1, v1, [I

    .line 12
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 13
    array-length p1, p2

    if-lt p1, v4, :cond_7

    new-array p1, v5, [I

    aput p3, p1, v3

    aput p4, p1, v2

    const/16 v5, 0x6f

    aput v5, p1, v4

    .line 14
    aget v5, p2, v3

    aput v5, p1, v0

    aget v5, p2, v2

    aput v5, p1, p4

    aput v3, p1, v1

    aput v3, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    .line 15
    :cond_7
    sget p1, Lk0/nt;->c:I

    const/4 v5, -0x3

    if-ne p1, v6, :cond_8

    new-array p1, v6, [I

    aput p3, p1, v3

    aput v0, p1, v2

    aput v5, p1, v4

    aput v4, p1, v0

    aput v0, p1, p4

    .line 16
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_8
    const/16 v6, 0xf

    if-eq p1, v6, :cond_a

    const/16 v6, 0x1c

    if-ne p1, v6, :cond_9

    goto :goto_0

    :cond_9
    new-array p1, v1, [I

    .line 17
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_a
    :goto_0
    new-array p1, v1, [I

    aput p3, p1, v3

    aput v4, p1, v2

    aput v5, p1, v4

    aput p4, p1, v0

    .line 18
    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_b
    if-eqz p2, :cond_f

    .line 19
    array-length p1, p2

    if-lt p1, v4, :cond_f

    .line 20
    aget p1, p2, v3

    const/16 v5, 0xaa

    if-ne p1, v5, :cond_c

    aget p1, p2, v2

    const/16 v5, 0xfe

    if-ne p1, v5, :cond_c

    new-array p1, v1, [I

    .line 21
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_c
    new-array p1, v1, [I

    aput p3, p1, v3

    aput v4, p1, v2

    const/16 p3, -0x74

    aput p3, p1, v4

    .line 22
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 23
    :cond_d
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_f

    new-array p1, v1, [I

    aput p3, p1, v3

    aput v4, p1, v2

    const/16 p3, 0x9a

    aput p3, p1, v4

    .line 24
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 25
    :cond_e
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_f

    new-array p1, v1, [I

    aput p3, p1, v3

    aput v4, p1, v2

    const/16 p3, 0x3d

    aput p3, p1, v4

    .line 26
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_f
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x3
        -0x3
        0x2
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        -0x3
        0x4
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        -0x3
        0x4
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        -0x3
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        -0x3
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        -0x3
        0x1
        0x2
    .end array-data

    :array_6
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
    invoke-static {}, Lk0/kd;->b3()I

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->f:I

    if-ne v3, v5, :cond_a

    .line 4
    sget v3, Lu0/b;->D:I

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x6

    const/16 v12, 0xa

    const/16 v13, 0x30

    if-eq v3, v5, :cond_5

    const/16 v5, 0xb

    const/16 v6, 0x3a

    const/16 v14, 0x3e7

    const/4 v15, 0x5

    const/16 v16, 0x39

    if-eq v3, v10, :cond_3

    if-eq v3, v9, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    sget v3, Lu0/b;->r3:I

    if-gt v3, v14, :cond_2

    .line 6
    div-int/lit8 v14, v3, 0x64

    div-int/lit8 v14, v3, 0x64

    add-int/2addr v14, v13

    aput v14, v1, v10

    .line 7
    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    add-int/2addr v10, v13

    aput v10, v1, v15

    .line 8
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v11

    goto :goto_1

    :cond_2
    aput v16, v1, v10

    aput v16, v1, v15

    aput v16, v1, v11

    :goto_1
    aput v4, v1, v8

    .line 9
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 10
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v7

    aput v6, v1, v12

    .line 11
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v5

    const/16 v4, 0xc

    .line 12
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v4

    goto/16 :goto_5

    .line 13
    :cond_3
    sget v3, Lo0/e;->B:I

    if-gt v3, v14, :cond_4

    .line 14
    div-int/lit8 v14, v3, 0x64

    div-int/lit8 v14, v3, 0x64

    add-int/2addr v14, v13

    aput v14, v1, v10

    .line 15
    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    add-int/2addr v10, v13

    aput v10, v1, v15

    .line 16
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v11

    goto :goto_2

    :cond_4
    aput v16, v1, v10

    aput v16, v1, v15

    aput v16, v1, v11

    :goto_2
    aput v4, v1, v8

    .line 17
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 18
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v7

    aput v6, v1, v12

    .line 19
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v5

    const/16 v4, 0xc

    .line 20
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v4

    goto/16 :goto_5

    :cond_5
    const/4 v3, 0x3

    aput v13, v1, v3

    .line 21
    sget v3, Lw0/d;->j:I

    and-int/lit16 v3, v3, 0xff

    rem-int/2addr v3, v11

    add-int/2addr v3, v5

    add-int/2addr v3, v13

    aput v3, v1, v10

    .line 22
    sget v3, Lw0/d;->h:I

    const/high16 v10, 0x10000

    sub-int v14, v3, v10

    if-eqz v14, :cond_8

    sub-int v14, v3, v10

    if-eq v5, v14, :cond_8

    sub-int/2addr v3, v10

    if-ne v6, v3, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    sget v3, Lw0/d;->i:I

    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    if-ne v4, v5, :cond_7

    .line 24
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v13

    aput v4, v1, v11

    .line 25
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 26
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 27
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v7

    goto :goto_5

    :cond_7
    aput v13, v1, v11

    .line 28
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 29
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 30
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v7

    goto :goto_5

    .line 31
    :cond_8
    :goto_3
    sget v3, Lw0/d;->i:I

    div-int/lit16 v5, v3, 0x2710

    if-nez v5, :cond_9

    div-int/lit16 v5, v3, 0x2710

    add-int/2addr v5, v4

    goto :goto_4

    :cond_9
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v5, v4, 0x30

    :goto_4
    aput v5, v1, v11

    .line 32
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 33
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v9

    const/16 v4, 0x2e

    aput v4, v1, v7

    .line 34
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v12

    :cond_a
    :goto_5
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_6
    if-ge v2, v0, :cond_b

    add-int/lit8 v4, v2, 0x1

    .line 35
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_6

    .line 36
    :cond_b
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    aput v5, v1, v4

    const/16 v6, 0x3d

    aput v6, v1, v5

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v5

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final e3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x10

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
