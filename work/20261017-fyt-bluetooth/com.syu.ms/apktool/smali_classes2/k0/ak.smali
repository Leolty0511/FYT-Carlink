.class public Lk0/ak;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:[[I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:I

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/ak;->e:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/ak;->f:I

    .line 4
    iput v0, p0, Lk0/ak;->g:I

    const/16 v1, 0xa

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
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

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v9, 0x8

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v9, 0x9

    aput-object v3, v1, v9

    iput-object v1, p0, Lk0/ak;->h:[[I

    new-array v1, v8, [[I

    new-array v3, v2, [I

    .line 6
    fill-array-data v3, :array_a

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v6

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v7

    iput-object v1, p0, Lk0/ak;->i:[[I

    .line 7
    iput v0, p0, Lk0/ak;->j:I

    .line 8
    iput v0, p0, Lk0/ak;->k:I

    .line 9
    iput v0, p0, Lk0/ak;->l:I

    .line 10
    iput v0, p0, Lk0/ak;->m:I

    .line 11
    iput v0, p0, Lk0/ak;->n:I

    .line 12
    iput-boolean v0, p0, Lk0/ak;->o:Z

    .line 13
    iput v0, p0, Lk0/ak;->p:I

    .line 14
    new-instance v1, Lk0/ak$a;

    invoke-direct {v1, p0}, Lk0/ak$a;-><init>(Lk0/ak;)V

    iput-object v1, p0, Lk0/ak;->q:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/ak$b;

    invoke-direct {v1, p0}, Lk0/ak$b;-><init>(Lk0/ak;)V

    iput-object v1, p0, Lk0/ak;->r:Ljava/lang/Runnable;

    .line 16
    iput v0, p0, Lk0/ak;->s:I

    .line 17
    new-instance v1, Lk0/ak$c;

    invoke-direct {v1, p0}, Lk0/ak$c;-><init>(Lk0/ak;)V

    iput-object v1, p0, Lk0/ak;->t:Ljava/lang/Runnable;

    .line 18
    iput v0, p0, Lk0/ak;->u:I

    .line 19
    new-instance v1, Lk0/ak$d;

    invoke-direct {v1, p0}, Lk0/ak$d;-><init>(Lk0/ak;)V

    iput-object v1, p0, Lk0/ak;->v:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lk0/ak$e;

    invoke-direct {v1, p0}, Lk0/ak$e;-><init>(Lk0/ak;)V

    iput-object v1, p0, Lk0/ak;->w:Ljava/lang/Runnable;

    .line 21
    iput v0, p0, Lk0/ak;->x:I

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
        0x17
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_f
    .array-data 4
        0x39
        0x19
    .end array-data
.end method

.method public static synthetic b3(Lk0/ak;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ak;->a3(I)V

    return-void
.end method

.method public static c3(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {v1}, Lk0/ak;->d3(Landroid/content/Intent;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityByIntentName "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/b0;->f(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x2

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static d3(Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x10200000

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_2c

    .line 1
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    aget v4, v1, v2

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v6, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Air codeCmd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "      value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget v9, v1, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v5, 0x29

    const/4 v7, -0x3

    const/4 v10, -0x2

    const/16 v11, 0x3d

    const/16 v12, 0xe3

    const/4 v13, 0x3

    const/16 v15, 0x1b

    const/4 v6, 0x5

    if-eq v4, v5, :cond_24

    const/16 v5, 0x37

    if-eq v4, v5, :cond_21

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_1c

    const/16 v5, 0x44

    const/16 v14, 0xa

    const/4 v9, 0x7

    if-eq v4, v5, :cond_10

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget v1, v1, v8

    const/16 v2, 0x11

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-nez v1, :cond_2c

    const/16 v1, 0x2c

    .line 6
    invoke-virtual {v0, v1}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 7
    :cond_1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_2c

    const/16 v1, 0x2c

    .line 8
    invoke-virtual {v0, v1}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v1, v6, [I

    .line 9
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v1, v6, [I

    .line 10
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 11
    :pswitch_3
    sget-object v1, Lk0/nt;->g:[I

    aget v4, v1, v15

    if-ne v4, v7, :cond_2

    new-array v1, v6, [I

    .line 12
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 13
    :cond_2
    aget v4, v1, v15

    if-ne v4, v10, :cond_3

    goto/16 :goto_0

    .line 14
    :cond_3
    aget v1, v1, v15

    sub-int/2addr v1, v14

    const/16 v4, 0x24

    if-gt v1, v4, :cond_4

    new-array v1, v6, [I

    .line 15
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    new-array v4, v6, [I

    aput v12, v4, v2

    aput v3, v4, v8

    aput v11, v4, v3

    const/16 v2, 0x25

    aput v2, v4, v13

    const/4 v2, 0x4

    aput v1, v4, v2

    .line 16
    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 17
    :pswitch_4
    sget-object v1, Lk0/nt;->g:[I

    aget v4, v1, v15

    if-ne v4, v7, :cond_5

    goto/16 :goto_0

    .line 18
    :cond_5
    aget v4, v1, v15

    if-ne v4, v10, :cond_6

    new-array v1, v6, [I

    .line 19
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 20
    :cond_6
    aget v1, v1, v15

    add-int/2addr v1, v14

    const/16 v4, 0x40

    if-lt v1, v4, :cond_7

    new-array v1, v6, [I

    .line 21
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_7
    new-array v4, v6, [I

    aput v12, v4, v2

    aput v3, v4, v8

    aput v11, v4, v3

    const/16 v2, 0x25

    aput v2, v4, v13

    const/4 v2, 0x4

    aput v1, v4, v2

    .line 22
    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v1, v6, [I

    .line 23
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    const/16 v1, 0x4f

    .line 24
    invoke-virtual {v0, v1}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    :pswitch_7
    const/16 v1, 0x4e

    .line 25
    invoke-virtual {v0, v1}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 26
    :pswitch_8
    aget v4, v1, v8

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    const/16 v4, 0xb

    .line 27
    invoke-virtual {v0, v4}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 28
    :cond_8
    aget v4, v1, v8

    if-ne v4, v10, :cond_9

    const/16 v4, 0xc

    .line 29
    invoke-virtual {v0, v4}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    :cond_9
    new-array v4, v6, [I

    aput v12, v4, v2

    aput v3, v4, v8

    aput v11, v4, v3

    const/16 v2, 0x27

    aput v2, v4, v13

    .line 30
    aget v1, v1, v8

    const/4 v2, 0x4

    aput v1, v4, v2

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 31
    :pswitch_9
    aget v2, v1, v8

    if-ne v2, v8, :cond_a

    .line 32
    sget-object v1, Lk0/nt;->g:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    if-nez v1, :cond_2c

    .line 33
    invoke-virtual {v0, v9}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xc

    .line 34
    aget v1, v1, v8

    if-nez v1, :cond_2c

    .line 35
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_2c

    .line 36
    invoke-virtual {v0, v9}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 37
    :pswitch_a
    aget v1, v1, v8

    const/16 v2, 0x2a

    const/16 v3, 0x10

    if-eqz v1, :cond_b

    .line 38
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_2c

    .line 39
    invoke-virtual {v0, v2}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 40
    :cond_b
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v8, :cond_2c

    .line 41
    invoke-virtual {v0, v2}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 42
    :pswitch_b
    aget v1, v1, v8

    const/16 v2, 0x41

    if-eqz v1, :cond_c

    .line 43
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-nez v1, :cond_2c

    .line 44
    invoke-virtual {v0, v6}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 45
    :cond_c
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_2c

    .line 46
    invoke-virtual {v0, v6}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 47
    :pswitch_c
    aget v1, v1, v8

    const/16 v2, 0xd

    if-eqz v1, :cond_d

    .line 48
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-nez v1, :cond_2c

    const/4 v1, 0x4

    .line 49
    invoke-virtual {v0, v1}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x4

    .line 50
    sget-object v3, Lk0/nt;->g:[I

    aget v2, v3, v2

    if-ne v2, v8, :cond_2c

    .line 51
    invoke-virtual {v0, v1}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 52
    :pswitch_d
    aget v1, v1, v8

    if-eqz v1, :cond_e

    .line 53
    sget-object v1, Lk0/nt;->g:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    if-nez v1, :cond_2c

    .line 54
    invoke-virtual {v0, v3}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xb

    .line 55
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_2c

    .line 56
    invoke-virtual {v0, v3}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 57
    :pswitch_e
    aget v1, v1, v8

    if-eqz v1, :cond_f

    .line 58
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-nez v1, :cond_2c

    .line 59
    invoke-virtual {v0, v8}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 60
    :cond_f
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-ne v1, v8, :cond_2c

    .line 61
    invoke-virtual {v0, v8}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 62
    :cond_10
    aget v2, v1, v8

    if-ne v2, v8, :cond_11

    new-array v1, v9, [I

    .line 63
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 64
    :cond_11
    aget v2, v1, v8

    if-ne v2, v3, :cond_12

    new-array v1, v9, [I

    .line 65
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 66
    :cond_12
    aget v2, v1, v8

    if-ne v2, v13, :cond_13

    new-array v1, v9, [I

    .line 67
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 68
    :cond_13
    aget v2, v1, v8

    const/4 v3, 0x4

    if-ne v2, v3, :cond_14

    new-array v1, v9, [I

    .line 69
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 70
    :cond_14
    aget v2, v1, v8

    if-ne v2, v6, :cond_15

    new-array v1, v9, [I

    .line 71
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 72
    :cond_15
    aget v2, v1, v8

    const/4 v3, 0x6

    if-ne v2, v3, :cond_16

    new-array v1, v9, [I

    .line 73
    fill-array-data v1, :array_c

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 74
    :cond_16
    aget v2, v1, v8

    if-ne v2, v9, :cond_17

    new-array v1, v9, [I

    .line 75
    fill-array-data v1, :array_d

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 76
    :cond_17
    aget v2, v1, v8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_18

    new-array v1, v9, [I

    .line 77
    fill-array-data v1, :array_e

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 78
    :cond_18
    aget v2, v1, v8

    const/16 v3, 0x9

    if-ne v2, v3, :cond_19

    new-array v1, v9, [I

    .line 79
    fill-array-data v1, :array_f

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 80
    :cond_19
    aget v2, v1, v8

    if-ne v2, v14, :cond_1a

    new-array v1, v9, [I

    .line 81
    fill-array-data v1, :array_10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 82
    :cond_1a
    aget v2, v1, v8

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1b

    new-array v1, v9, [I

    .line 83
    fill-array-data v1, :array_11

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 84
    fill-array-data v1, :array_12

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 85
    fill-array-data v1, :array_13

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 86
    fill-array-data v1, :array_14

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 87
    fill-array-data v1, :array_15

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 88
    :cond_1b
    aget v1, v1, v8

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2c

    new-array v1, v9, [I

    .line 89
    fill-array-data v1, :array_16

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 90
    fill-array-data v1, :array_17

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 91
    fill-array-data v1, :array_18

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 92
    fill-array-data v1, :array_19

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 93
    fill-array-data v1, :array_1a

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 94
    :cond_1c
    aget v1, v1, v8

    if-eq v1, v8, :cond_20

    if-eq v1, v3, :cond_1f

    if-eq v1, v13, :cond_1e

    if-eq v1, v6, :cond_1d

    goto/16 :goto_0

    .line 95
    :cond_1d
    iget v1, v0, Lk0/ak;->j:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2c

    const/16 v1, 0x1c

    .line 96
    invoke-virtual {v0, v1}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 97
    :cond_1e
    iget v1, v0, Lk0/ak;->j:I

    if-eq v1, v3, :cond_2c

    .line 98
    invoke-virtual {v0, v15}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 99
    :cond_1f
    iget v1, v0, Lk0/ak;->j:I

    if-eq v1, v8, :cond_2c

    const/16 v1, 0x1a

    .line 100
    invoke-virtual {v0, v1}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 101
    :cond_20
    iget v1, v0, Lk0/ak;->j:I

    if-eq v1, v13, :cond_2c

    const/16 v1, 0x1d

    .line 102
    invoke-virtual {v0, v1}, Lk0/ak;->a3(I)V

    goto/16 :goto_0

    .line 103
    :cond_21
    aget v4, v1, v8

    const/16 v5, 0x20

    if-gt v4, v5, :cond_22

    new-array v1, v6, [I

    .line 104
    fill-array-data v1, :array_1b

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 105
    :cond_22
    aget v4, v1, v8

    const/16 v5, 0x40

    if-lt v4, v5, :cond_23

    new-array v1, v6, [I

    .line 106
    fill-array-data v1, :array_1c

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_23
    new-array v4, v6, [I

    aput v12, v4, v2

    aput v3, v4, v8

    aput v11, v4, v3

    const/16 v2, 0x25

    aput v2, v4, v13

    .line 107
    aget v1, v1, v8

    const/4 v2, 0x4

    aput v1, v4, v2

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 108
    :cond_24
    aget v4, v1, v8

    if-nez v4, :cond_28

    .line 109
    sget-object v1, Lk0/nt;->g:[I

    aget v4, v1, v15

    if-ne v4, v7, :cond_25

    new-array v1, v6, [I

    .line 110
    fill-array-data v1, :array_1d

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 111
    :cond_25
    aget v4, v1, v15

    if-ne v4, v10, :cond_26

    goto :goto_0

    .line 112
    :cond_26
    aget v1, v1, v15

    sub-int/2addr v1, v3

    const/16 v4, 0x24

    if-gt v1, v4, :cond_27

    new-array v1, v6, [I

    .line 113
    fill-array-data v1, :array_1e

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_27
    new-array v4, v6, [I

    aput v12, v4, v2

    aput v3, v4, v8

    aput v11, v4, v3

    const/16 v2, 0x25

    aput v2, v4, v13

    const/4 v2, 0x4

    aput v1, v4, v2

    .line 114
    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_0

    .line 115
    :cond_28
    aget v1, v1, v8

    if-ne v1, v8, :cond_2c

    .line 116
    sget-object v1, Lk0/nt;->g:[I

    aget v4, v1, v15

    if-ne v4, v7, :cond_29

    goto :goto_0

    .line 117
    :cond_29
    aget v4, v1, v15

    if-ne v4, v10, :cond_2a

    new-array v1, v6, [I

    .line 118
    fill-array-data v1, :array_1f

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 119
    :cond_2a
    aget v1, v1, v15

    add-int/2addr v1, v3

    const/16 v4, 0x40

    if-lt v1, v4, :cond_2b

    new-array v1, v6, [I

    .line 120
    fill-array-data v1, :array_20

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2b
    new-array v4, v6, [I

    aput v12, v4, v2

    aput v3, v4, v8

    aput v11, v4, v3

    const/16 v2, 0x25

    aput v2, v4, v13

    const/4 v2, 0x4

    aput v1, v4, v2

    .line 121
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_2c
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
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
        0x3d
        0x25
        0xfe
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0x36
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0xfe
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0x2e
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0xff
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x3d
        0x27
        0x7
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1c
        0x0
        0xff
        0xff
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1c
        0x1
        0xff
        0xff
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1d
        0x0
        0xff
        0xff
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1d
        0x1
        0xff
        0xff
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1e
        0x0
        0xff
        0xff
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1e
        0x1
        0xff
        0xff
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1f
        0x0
        0xff
        0xff
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1f
        0x1
        0xff
        0xff
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x4
        0x6f
        0x20
        0x0
        0xff
        0xff
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x4
        0x6f
        0x20
        0x1
        0xff
        0xff
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1c
        0x0
        0xff
        0xff
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1d
        0x0
        0xff
        0xff
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1e
        0x0
        0xff
        0xff
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1f
        0x0
        0xff
        0xff
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0x4
        0x6f
        0x20
        0x0
        0xff
        0xff
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1c
        0x1
        0xff
        0xff
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1d
        0x1
        0xff
        0xff
    .end array-data

    :array_18
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1e
        0x1
        0xff
        0xff
    .end array-data

    :array_19
    .array-data 4
        0xe3
        0x4
        0x6f
        0x1f
        0x1
        0xff
        0xff
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        0x4
        0x6f
        0x20
        0x1
        0xff
        0xff
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0xfe
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0xff
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0x3e
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0xfe
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0x26
    .end array-data

    :array_20
    .array-data 4
        0xe3
        0x2
        0x3d
        0x25
        0xff
    .end array-data
.end method

.method public S2()V
    .locals 5

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
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 9
    :cond_0
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 10
    :sswitch_0
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v4, 0x2

    iput v4, v3, Lk0/mt;->h:I

    goto :goto_0

    .line 11
    :sswitch_1
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v3, Lk0/mt;->i:I

    :goto_0
    const v3, 0x2a01bc

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v3, p0, Lk0/ak;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lz/c;->d:Lo1/y;

    iget-object v3, p0, Lk0/ak;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    :goto_1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ak;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget-object v0, p0, Lk0/ak;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x14

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x301bc -> :sswitch_1
        0x401bc -> :sswitch_1
        0x501be -> :sswitch_1
        0x601be -> :sswitch_1
        0xb01bc -> :sswitch_1
        0xd01bc -> :sswitch_1
        0xe01bc -> :sswitch_1
        0xe01be -> :sswitch_1
        0xf01bc -> :sswitch_1
        0x1001bc -> :sswitch_1
        0x1101bc -> :sswitch_1
        0x1201bc -> :sswitch_1
        0x1301bc -> :sswitch_1
        0x1401bc -> :sswitch_1
        0x1501be -> :sswitch_0
        0x1a01be -> :sswitch_1
        0x1b01be -> :sswitch_1
        0x1d01bc -> :sswitch_1
        0x2a01bc -> :sswitch_1
        0x2f01bc -> :sswitch_1
        0x3201bc -> :sswitch_1
        0x3401be -> :sswitch_1
        0x3501be -> :sswitch_1
    .end sparse-switch

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
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x37
        0x38
        0x44
    .end array-data
.end method

.method public U2([BII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x18

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_40

    const/16 v3, -0x13

    const/16 v8, 0xff

    if-eq v2, v3, :cond_3f

    const/16 v3, -0x10

    if-eq v2, v3, :cond_3e

    const v9, 0xff00

    const/16 v11, 0x1a

    const/16 v12, 0x8

    const/4 v14, 0x3

    const/4 v15, 0x4

    if-eq v2, v11, :cond_3c

    const/16 v10, 0x41

    if-eq v2, v10, :cond_3a

    const/16 v10, 0x48

    if-eq v2, v10, :cond_39

    const/16 v10, 0x76

    if-eq v2, v10, :cond_34

    const/16 v10, 0x21

    if-eq v2, v10, :cond_2e

    const/16 v10, 0x22

    if-eq v2, v10, :cond_23

    const/16 v10, 0x31

    const/16 v3, 0xb

    const/4 v13, 0x6

    if-eq v2, v10, :cond_15

    const/16 v10, 0x32

    if-eq v2, v10, :cond_13

    const/16 v10, 0x61

    if-eq v2, v10, :cond_d

    const/16 v10, 0x62

    if-eq v2, v10, :cond_c

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    const/16 v2, 0x63

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v9

    add-int/lit8 v10, p2, 0x3

    aget-byte v10, v1, v10

    and-int/2addr v10, v8

    or-int/2addr v5, v10

    const v10, 0xffff

    and-int/2addr v5, v10

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 3
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v5, v10

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    shl-int/2addr v10, v12

    and-int/2addr v10, v9

    or-int/2addr v5, v10

    add-int/lit8 v10, p2, 0x6

    aget-byte v10, v1, v10

    and-int/2addr v10, v8

    or-int/2addr v5, v10

    const v10, 0xffffff

    and-int/2addr v5, v10

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0xa

    .line 4
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v9

    add-int/lit8 v3, p2, 0xb

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    or-int/2addr v1, v5

    const v3, 0xffff

    and-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :pswitch_1
    add-int/lit8 v2, p2, 0x4

    .line 5
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 6
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 7
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 8
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 9
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 10
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 11
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 12
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v14

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 13
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :pswitch_2
    add-int/lit8 v2, p2, 0x4

    .line 14
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 15
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 16
    iput v2, v0, Lk0/ak;->c:I

    move v2, v6

    .line 17
    :goto_1
    iget-object v3, v0, Lk0/ak;->h:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 18
    iget v5, v0, Lk0/ak;->c:I

    aget-object v9, v3, v2

    aget v9, v9, v6

    if-ne v5, v9, :cond_1

    if-eqz v5, :cond_2

    .line 19
    iput v2, v0, Lk0/ak;->b:I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_2
    :goto_2
    iget v2, v0, Lk0/ak;->c:I

    if-eq v2, v15, :cond_8

    if-eq v2, v13, :cond_3

    and-int/2addr v1, v8

    if-ne v1, v7, :cond_42

    .line 21
    iget v1, v0, Lk0/ak;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_42

    if-eq v1, v8, :cond_42

    .line 22
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 23
    iget-object v1, v0, Lk0/ak;->h:[[I

    iget v2, v0, Lk0/ak;->b:I

    aget-object v1, v1, v2

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_3
    and-int/2addr v1, v8

    if-ne v1, v7, :cond_42

    .line 24
    sget v1, Lk0/nt;->a:I

    const v2, 0x301bc

    if-eq v1, v2, :cond_5

    const v2, 0x401bc

    if-eq v1, v2, :cond_5

    const v2, 0xb01bc

    if-eq v1, v2, :cond_5

    const v2, 0xd01bc

    if-eq v1, v2, :cond_5

    const v2, 0x301bc

    if-eq v1, v2, :cond_5

    const v2, 0x401bc

    if-eq v1, v2, :cond_5

    const v2, 0xb01bc

    if-eq v1, v2, :cond_5

    const v2, 0x3201bc

    if-eq v1, v2, :cond_5

    const v2, 0xe01bc

    if-eq v1, v2, :cond_5

    const v2, 0xf01bc

    if-eq v1, v2, :cond_5

    const v2, 0x1001bc    # 1.46999E-39f

    if-eq v1, v2, :cond_5

    const v2, 0x3401be

    if-eq v1, v2, :cond_5

    const v2, 0x3501be

    if-eq v1, v2, :cond_5

    const v2, 0x1101bc

    if-eq v1, v2, :cond_5

    const v2, 0x2f01bc

    if-eq v1, v2, :cond_5

    const v2, 0x1201bc

    if-eq v1, v2, :cond_5

    const v2, 0x1d01bc

    if-eq v1, v2, :cond_5

    const v2, 0x1301bc

    if-eq v1, v2, :cond_5

    const v2, 0x1401bc

    if-eq v1, v2, :cond_5

    const v2, 0x601be

    if-eq v1, v2, :cond_5

    const v2, 0xe01be

    if-eq v1, v2, :cond_5

    const v2, 0x1a01be

    if-eq v1, v2, :cond_5

    const v2, 0x1b01be

    if-ne v1, v2, :cond_4

    goto :goto_3

    .line 25
    :cond_4
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    .line 26
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 27
    :cond_5
    :goto_3
    sget v1, Lh0/c;->E:I

    if-eq v1, v14, :cond_7

    if-eq v1, v15, :cond_7

    if-eq v1, v4, :cond_7

    .line 28
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 29
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    .line 30
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_6
    const/16 v1, 0xc

    .line 31
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 32
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 33
    :cond_7
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    .line 34
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_8
    and-int/2addr v1, v8

    if-ne v1, v7, :cond_42

    .line 35
    sget v1, Lk0/nt;->a:I

    const v2, 0x501be

    if-ne v1, v2, :cond_b

    .line 36
    sget v1, Lh0/c;->E:I

    if-eq v1, v14, :cond_a

    if-eq v1, v15, :cond_a

    if-eq v1, v4, :cond_a

    .line 37
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 38
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    .line 39
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_9
    const/16 v1, 0xd

    .line 40
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 41
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 42
    :cond_a
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    .line 43
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_b
    const/16 v1, 0xd

    .line 44
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 45
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_c
    const/16 v2, 0x93

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 46
    aget-byte v9, v1, v8

    const/4 v10, 0x7

    shr-int/2addr v9, v10

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v7, [I

    .line 47
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v10

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v7, [I

    .line 48
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v10

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x3

    .line 49
    aget-byte v11, v1, v9

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v7, [I

    .line 50
    aget-byte v11, v1, v9

    shr-int/2addr v11, v15

    and-int/2addr v11, v10

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v7, [I

    .line 51
    aget-byte v10, v1, v9

    shr-int/2addr v10, v6

    and-int/lit8 v10, v10, 0xf

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x4

    .line 52
    aget-byte v11, v1, v10

    const/4 v12, 0x7

    shr-int/2addr v11, v12

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    .line 53
    aget-byte v11, v1, v10

    shr-int/2addr v11, v13

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v7, [I

    .line 54
    aget-byte v11, v1, v10

    shr-int/2addr v11, v4

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v7, [I

    .line 55
    aget-byte v11, v1, v10

    shr-int/2addr v11, v15

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v7, [I

    .line 56
    aget-byte v11, v1, v10

    shr-int/2addr v11, v14

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v7, [I

    .line 57
    aget-byte v11, v1, v10

    shr-int/2addr v11, v5

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 58
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v13, [I

    const/16 v11, 0x24

    aput v11, v3, v6

    aget-byte v6, v1, v8

    aput v6, v3, v7

    aget-byte v6, v1, v9

    aput v6, v3, v5

    aget-byte v5, v1, v10

    aput v5, v3, v14

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    aput v5, v3, v15

    add-int/lit8 v5, p2, 0x6

    aget-byte v1, v1, v5

    aput v1, v3, v4

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_d
    const/16 v2, 0x74

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x2

    .line 59
    aget-byte v10, v1, v9

    const/4 v11, 0x7

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 60
    aget-byte v10, v1, v9

    shr-int/2addr v10, v13

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    .line 61
    aget-byte v10, v1, v9

    shr-int/2addr v10, v4

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    .line 62
    aget-byte v10, v1, v9

    shr-int/2addr v10, v15

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 63
    aget-byte v10, v1, v9

    shr-int/2addr v10, v14

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v7, [I

    .line 64
    aget-byte v10, v1, v9

    shr-int/2addr v10, v5

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    .line 65
    aget-byte v10, v1, v9

    shr-int/2addr v10, v6

    and-int/2addr v10, v14

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v7, [I

    add-int/lit8 v10, p2, 0x3

    .line 66
    aget-byte v11, v1, v10

    shr-int/2addr v11, v15

    const/16 v17, 0x7

    and-int/lit8 v11, v11, 0x7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    .line 67
    aget-byte v11, v1, v10

    shr-int/2addr v11, v5

    and-int/2addr v11, v14

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v7, [I

    add-int/lit8 v11, p2, 0x4

    .line 68
    aget-byte v18, v1, v11

    const/16 v17, 0x7

    shr-int/lit8 v18, v18, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    .line 69
    aget-byte v18, v1, v11

    shr-int/lit8 v18, v18, 0x3

    and-int/lit8 v18, v18, 0x7

    aput v18, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    add-int/lit8 v18, p2, 0x5

    .line 70
    aget-byte v19, v1, v18

    shr-int/lit8 v19, v19, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    .line 71
    aget-byte v19, v1, v18

    shr-int/lit8 v19, v19, 0x5

    and-int/lit8 v19, v19, 0x3

    aput v19, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    .line 72
    aget-byte v19, v1, v18

    shr-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    .line 73
    aget-byte v19, v1, v18

    shr-int/lit8 v19, v19, 0x3

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    .line 74
    aget-byte v19, v1, v18

    shr-int/lit8 v19, v19, 0x2

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    .line 75
    aget-byte v19, v1, v18

    shr-int/lit8 v19, v19, 0x1

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    .line 76
    aget-byte v19, v1, v18

    shr-int/lit8 v19, v19, 0x0

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    add-int/lit8 v19, p2, 0x6

    .line 77
    aget-byte v20, v1, v19

    const/16 v17, 0x7

    shr-int/lit8 v20, v20, 0x7

    and-int/lit8 v20, v20, 0x1

    aput v20, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v7, [I

    .line 78
    aget-byte v20, v1, v19

    shr-int/lit8 v20, v20, 0x0

    and-int/lit8 v20, v20, 0x7f

    aput v20, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v7, [I

    add-int/lit8 v20, p2, 0x7

    .line 79
    aget-byte v21, v1, v20

    const/16 v17, 0x7

    shr-int/lit8 v21, v21, 0x7

    and-int/lit8 v21, v21, 0x1

    aput v21, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v7, [I

    .line 80
    aget-byte v21, v1, v20

    shr-int/lit8 v21, v21, 0x5

    and-int/lit8 v21, v21, 0x3

    aput v21, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v7, [I

    .line 81
    aget-byte v21, v1, v20

    shr-int/lit8 v21, v21, 0x4

    and-int/lit8 v21, v21, 0x1

    aput v21, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v7, [I

    .line 82
    aget-byte v21, v1, v20

    shr-int/lit8 v21, v21, 0x3

    and-int/lit8 v21, v21, 0x1

    aput v21, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v7, [I

    .line 83
    aget-byte v21, v1, v20

    shr-int/lit8 v21, v21, 0x0

    const/16 v17, 0x7

    and-int/lit8 v21, v21, 0x7

    aput v21, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v7, [I

    add-int/lit8 v21, p2, 0x8

    .line 84
    aget-byte v12, v1, v21

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    const/16 v8, 0x9

    add-int/lit8 v12, p2, 0x9

    .line 85
    aget-byte v8, v1, v12

    shr-int/2addr v8, v13

    and-int/2addr v8, v14

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v7, [I

    .line 86
    aget-byte v8, v1, v12

    shr-int/2addr v8, v15

    and-int/2addr v8, v14

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    .line 87
    aget-byte v8, v1, v12

    shr-int/2addr v8, v14

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v7, [I

    .line 88
    aget-byte v8, v1, v12

    shr-int/2addr v8, v7

    and-int/2addr v8, v14

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 89
    aget-byte v2, v1, v10

    const/4 v3, 0x7

    shr-int/2addr v2, v3

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_e

    .line 90
    invoke-static {}, Lo1/u;->Z()Z

    move-result v2

    if-nez v2, :cond_e

    .line 91
    sget-object v2, La/b;->E:Ljava/lang/String;

    invoke-static {v2, v7}, Lk0/ak;->c3(Ljava/lang/String;I)I

    .line 92
    :cond_e
    iget v2, v0, Lk0/ak;->l:I

    aget-byte v3, v1, v19

    const/4 v8, 0x7

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    if-eq v2, v3, :cond_f

    .line 93
    aget-byte v2, v1, v19

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    iput v2, v0, Lk0/ak;->l:I

    if-ne v2, v7, :cond_f

    .line 94
    invoke-static {}, Lo1/u;->Z()Z

    move-result v2

    if-nez v2, :cond_f

    .line 95
    sget-object v2, La/b;->E:Ljava/lang/String;

    invoke-static {v2, v5}, Lk0/ak;->c3(Ljava/lang/String;I)I

    .line 96
    :cond_f
    aget-byte v2, v1, v11

    shr-int/2addr v2, v13

    and-int/2addr v2, v7

    .line 97
    iget v3, v0, Lk0/ak;->m:I

    if-eq v3, v2, :cond_12

    if-eqz v2, :cond_10

    .line 98
    sget v3, Ly0/f;->i:I

    if-eq v3, v7, :cond_11

    .line 99
    sget v3, Ly0/f;->c:I

    iput v3, v0, Lk0/ak;->p:I

    .line 100
    invoke-static {v6}, Ly0/h;->t0(I)V

    goto :goto_4

    :cond_10
    if-ne v3, v7, :cond_11

    if-nez v2, :cond_11

    .line 101
    iget v3, v0, Lk0/ak;->p:I

    invoke-static {v3}, Ly0/h;->t0(I)V

    .line 102
    :cond_11
    :goto_4
    iput v2, v0, Lk0/ak;->m:I

    .line 103
    :cond_12
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x9

    new-array v3, v3, [I

    const/16 v8, 0x19

    aput v8, v3, v6

    aget-byte v6, v1, v9

    aput v6, v3, v7

    aget-byte v6, v1, v10

    aput v6, v3, v5

    aget-byte v5, v1, v11

    aput v5, v3, v14

    aget-byte v5, v1, v18

    aput v5, v3, v15

    aget-byte v5, v1, v19

    aput v5, v3, v4

    aget-byte v4, v1, v20

    aput v4, v3, v13

    aget-byte v4, v1, v21

    const/4 v5, 0x7

    aput v4, v3, v5

    aget-byte v1, v1, v12

    const/16 v4, 0x8

    aput v1, v3, v4

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_13
    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x8

    .line 104
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x9

    .line 105
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xb

    .line 106
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa

    add-int/lit8 v2, p2, 0xa

    .line 107
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    if-nez v1, :cond_14

    .line 108
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_16

    :cond_14
    mul-int/2addr v1, v4

    add-int/lit16 v1, v1, 0x258

    .line 109
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_16

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 110
    aget-byte v2, v1, v2

    add-int/lit8 v9, p2, 0x3

    .line 111
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x4

    .line 112
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x6

    .line 113
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x7

    .line 114
    aget-byte v12, v1, v12

    add-int/lit8 v16, p2, 0x8

    .line 115
    aget-byte v13, v1, v16

    new-array v8, v7, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v6

    const/16 v4, 0xa

    .line 116
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    .line 117
    sget-object v8, Lk0/nt;->f:[Lo1/x;

    new-array v15, v7, [I

    aput v16, v15, v6

    const/4 v5, 0x0

    invoke-static {v8, v4, v15, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v4, 0x44

    new-array v5, v7, [I

    shr-int/lit8 v15, v2, 0x1

    and-int/2addr v15, v7

    aput v15, v5, v6

    .line 118
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x35

    new-array v5, v7, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v7

    aput v15, v5, v6

    .line 119
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v4, v6

    .line 120
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v9, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/16 v5, 0xc

    .line 121
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v9, 0x3

    and-int/2addr v5, v7

    aput v5, v3, v6

    const/16 v5, 0xd

    .line 122
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v10, 0x4

    and-int/2addr v3, v7

    and-int/lit8 v5, v3, 0x1

    shl-int/2addr v2, v7

    const/4 v9, 0x2

    and-int/2addr v2, v9

    or-int/2addr v2, v5

    shl-int/2addr v4, v9

    const/4 v5, 0x4

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 123
    invoke-static {v2, v7}, Lcom/syu/jni/ToolsJni;->cmd_16_set_led_colors(II)I

    const/16 v2, 0x11

    new-array v4, v7, [I

    shr-int/lit8 v5, v10, 0x7

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 124
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v7, [I

    shr-int/lit8 v5, v10, 0x6

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 125
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x26

    new-array v4, v7, [I

    const/4 v5, 0x5

    shr-int/lit8 v9, v10, 0x5

    and-int/lit8 v5, v9, 0x1

    aput v5, v4, v6

    .line 126
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v7, [I

    aput v3, v4, v6

    .line 127
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    aput v3, v4, v6

    const/4 v3, 0x0

    .line 128
    invoke-static {v8, v2, v4, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0xff

    and-int/lit16 v3, v11, 0xff

    .line 129
    iput v3, v0, Lk0/ak;->j:I

    if-eq v3, v7, :cond_19

    const/4 v2, 0x2

    if-eq v3, v2, :cond_18

    if-eq v3, v14, :cond_17

    const/4 v2, 0x4

    if-eq v3, v2, :cond_16

    move v2, v6

    move v4, v2

    :goto_5
    move v5, v4

    goto :goto_6

    :cond_16
    move v4, v6

    move v2, v7

    move v5, v2

    goto :goto_6

    :cond_17
    move v2, v6

    move v4, v2

    move v5, v7

    goto :goto_6

    :cond_18
    move v2, v6

    move v4, v7

    goto :goto_5

    :cond_19
    move v2, v6

    move v5, v2

    move v4, v7

    :goto_6
    const/16 v9, 0x12

    new-array v10, v7, [I

    aput v2, v10, v6

    .line 130
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v7, [I

    aput v4, v9, v6

    .line 131
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v7, [I

    aput v5, v4, v6

    .line 132
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v4, v7, [I

    aput v3, v4, v6

    .line 133
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    aput v3, v4, v6

    const/4 v3, 0x0

    .line 134
    invoke-static {v8, v2, v4, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0x15

    new-array v4, v7, [I

    const/16 v5, 0xff

    and-int/lit16 v9, v12, 0xff

    aput v9, v4, v6

    .line 135
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    aput v9, v4, v6

    .line 136
    invoke-static {v8, v2, v4, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    and-int/lit16 v2, v13, 0xff

    .line 137
    sget v3, Lk0/nt;->a:I

    const v4, 0x501be

    const/16 v5, 0x1b

    if-ne v3, v4, :cond_1a

    new-array v3, v7, [I

    aput v2, v3, v6

    .line 138
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/4 v2, 0x5

    goto :goto_9

    :cond_1a
    const/16 v3, 0xfe

    if-eq v2, v3, :cond_1c

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1b

    new-array v3, v7, [I

    aput v2, v3, v6

    .line 139
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1b
    new-array v2, v7, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 140
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1c
    new-array v2, v7, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    .line 141
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v7, [I

    .line 142
    sget-object v3, Lk0/nt;->g:[I

    aget v3, v3, v5

    aput v3, v2, v6

    const/4 v3, 0x0

    invoke-static {v8, v5, v2, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_7

    :goto_9
    add-int/lit8 v2, p2, 0x5

    .line 143
    aget-byte v1, v1, v2

    const/4 v2, 0x7

    shr-int/2addr v1, v2

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_42

    .line 144
    sget v1, Lk0/nt;->a:I

    const/16 v2, 0x3e

    sparse-switch v1, :sswitch_data_0

    .line 145
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.syu.carinfo.air.Air_Activity_All_NewAdd_HP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 146
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 147
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 148
    :sswitch_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 149
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 150
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 151
    :cond_1d
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x6

    .line 152
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 153
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 154
    :sswitch_1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 155
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 156
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 157
    :cond_1e
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x6

    .line 158
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 159
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 160
    :sswitch_2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v7, :cond_20

    .line 161
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 162
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 163
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 164
    :cond_1f
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x6

    .line 165
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 166
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 167
    :cond_20
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 168
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 169
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 170
    :cond_21
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x6

    .line 171
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 172
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 173
    :cond_22
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.air.Air_Activity_All_NewAdd_HP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x6

    .line 174
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 175
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 176
    :cond_23
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_42

    add-int/lit8 v2, p2, 0x2

    .line 177
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 178
    aget-byte v1, v1, v3

    if-eq v2, v7, :cond_29

    const/4 v3, 0x2

    if-eq v2, v3, :cond_24

    goto/16 :goto_16

    .line 179
    :cond_24
    iget v2, v0, Lk0/ak;->g:I

    if-eq v1, v2, :cond_42

    if-le v1, v2, :cond_26

    move v2, v6

    .line 180
    :goto_a
    iget v3, v0, Lk0/ak;->g:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_25

    const/16 v3, 0x1f

    .line 181
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_25
    const/16 v2, 0x1f

    .line 182
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_26
    if-ge v1, v2, :cond_28

    move v2, v6

    .line 183
    :goto_b
    iget v3, v0, Lk0/ak;->g:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_27

    const/16 v3, 0x1e

    .line 184
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_27
    const/16 v2, 0x1e

    .line 185
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 186
    :cond_28
    :goto_c
    iput v1, v0, Lk0/ak;->g:I

    goto/16 :goto_16

    .line 187
    :cond_29
    iget v2, v0, Lk0/ak;->f:I

    if-eq v1, v2, :cond_42

    if-le v1, v2, :cond_2b

    move v2, v6

    .line 188
    :goto_d
    iget v3, v0, Lk0/ak;->f:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_2a

    const/4 v3, 0x7

    .line 189
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2a
    const/4 v3, 0x7

    .line 190
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_2b
    if-ge v1, v2, :cond_2d

    move v2, v6

    .line 191
    :goto_e
    iget v3, v0, Lk0/ak;->f:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2c

    const/16 v3, 0x8

    .line 192
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2c
    const/16 v3, 0x8

    .line 193
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 194
    :cond_2d
    :goto_f
    iput v1, v0, Lk0/ak;->f:I

    goto/16 :goto_16

    .line 195
    :cond_2e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_42

    add-int/lit8 v2, p2, 0x2

    .line 196
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lk0/ak;->d:I

    add-int/lit8 v2, p2, 0x3

    .line 197
    aget-byte v1, v1, v2

    move v2, v6

    .line 198
    :goto_10
    iget-object v3, v0, Lk0/ak;->i:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_30

    .line 199
    iget v4, v0, Lk0/ak;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_2f

    if-eqz v4, :cond_30

    .line 200
    iput v2, v0, Lk0/ak;->e:I

    goto :goto_11

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_30
    :goto_11
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_31

    .line 201
    array-length v1, v3

    if-ge v2, v1, :cond_42

    .line 202
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 203
    :cond_31
    iget v1, v0, Lk0/ak;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_32

    const/16 v2, 0xff

    if-eq v1, v2, :cond_33

    .line 204
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_12

    :cond_32
    const/16 v2, 0xff

    .line 205
    :cond_33
    :goto_12
    iput v2, v0, Lk0/ak;->e:I

    goto/16 :goto_16

    .line 206
    :cond_34
    iget v2, v0, Lk0/ak;->n:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v4, v1, v3

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    if-eq v2, v4, :cond_38

    .line 207
    aget-byte v2, v1, v3

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_36

    .line 208
    sget v2, Ly0/f;->c:I

    const/4 v4, 0x5

    if-le v2, v4, :cond_35

    sget v2, Ly0/f;->i:I

    if-nez v2, :cond_35

    .line 209
    iput-boolean v7, v0, Lk0/ak;->o:Z

    .line 210
    sget v2, Ly0/f;->c:I

    iput v2, v0, Lk0/ak;->p:I

    .line 211
    invoke-static {v4}, Ly0/h;->t0(I)V

    goto :goto_13

    .line 212
    :cond_35
    sget v2, Ly0/f;->c:I

    iput v2, v0, Lk0/ak;->p:I

    goto :goto_13

    .line 213
    :cond_36
    iget-boolean v2, v0, Lk0/ak;->o:Z

    if-eqz v2, :cond_37

    .line 214
    iget v2, v0, Lk0/ak;->p:I

    invoke-static {v2}, Ly0/h;->t0(I)V

    .line 215
    :cond_37
    iput-boolean v6, v0, Lk0/ak;->o:Z

    .line 216
    :goto_13
    aget-byte v2, v1, v3

    const/4 v3, 0x4

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    iput v2, v0, Lk0/ak;->n:I

    .line 217
    :cond_38
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/16 v4, 0x18

    aput v4, v3, v6

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    const/4 v4, 0x5

    shr-int/2addr v1, v4

    and-int/2addr v1, v14

    aput v1, v3, v7

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_39
    const/16 v2, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 218
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 219
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 220
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 221
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 222
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 223
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 224
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    const/16 v4, 0x9

    add-int/lit8 v4, p2, 0x9

    .line 225
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_3a
    move v5, v8

    .line 226
    sget v2, Lk0/nt;->a:I

    const v3, 0x1c01bc

    if-eq v2, v3, :cond_3b

    add-int/lit8 v2, p2, 0x2

    .line 227
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 228
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 229
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 230
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    goto :goto_14

    :cond_3b
    add-int/lit8 v2, p2, 0x2

    .line 231
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 232
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 233
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 234
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    :goto_14
    add-int/lit8 v2, p2, 0x6

    .line 235
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 236
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 237
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    const/16 v2, 0x9

    add-int/lit8 v2, p2, 0x9

    .line 238
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->T0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_16

    :cond_3c
    add-int/lit8 v2, p2, 0x5

    .line 239
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    and-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/16 v3, 0xa

    div-int/2addr v2, v3

    .line 240
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x407

    new-array v5, v7, [I

    aput v2, v5, v6

    const/4 v8, 0x0

    invoke-static {v3, v4, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v7, v5, v6

    aput v2, v5, v7

    const/16 v2, 0x419

    .line 241
    invoke-static {v3, v2, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0x9

    .line 242
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v4, v1, v4

    and-int/2addr v3, v4

    const/16 v4, 0x2bc

    invoke-static {v2, v3, v7, v4}, Lk0/qt;->i(IIZI)V

    add-int/lit8 v2, p2, 0x4

    .line 243
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aget-byte v4, v1, v2

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aget-byte v2, v1, v2

    const/4 v5, 0x2

    shr-int/2addr v2, v5

    and-int/2addr v2, v7

    invoke-static {v3, v4, v2}, Ll0/c0;->N1(III)V

    add-int/lit8 v2, p2, 0x3

    .line 244
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 245
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3d

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x2

    .line 246
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 247
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_3d
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 248
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x2

    .line 249
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_15
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 250
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x4

    .line 251
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x5

    .line 252
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 253
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_3e
    move v3, v5

    .line 254
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_3f
    add-int/lit8 v2, p2, 0x4

    .line 255
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x9

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    add-int/2addr v2, v4

    const/16 v4, 0x6a

    new-array v5, v7, [I

    aput v2, v5, v6

    .line 256
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 257
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0xa

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    add-int/2addr v2, v4

    const/16 v4, 0x6b

    new-array v5, v7, [I

    aput v2, v5, v6

    .line 258
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 259
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0xb

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    add-int/2addr v2, v4

    const/16 v4, 0x6c

    new-array v5, v7, [I

    aput v2, v5, v6

    .line 260
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 261
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0xc

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    add-int/2addr v2, v4

    const/16 v4, 0x6d

    new-array v5, v7, [I

    aput v2, v5, v6

    .line 262
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0xe

    .line 263
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0xf

    .line 264
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x10

    .line 265
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x11

    .line 266
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    .line 267
    :cond_40
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-nez v2, :cond_42

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 268
    aget-byte v1, v1, v2

    if-ne v1, v7, :cond_41

    const/16 v1, 0x3f5

    new-array v2, v7, [I

    const/4 v3, 0x2

    aput v3, v2, v6

    .line 269
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 270
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_16

    .line 271
    :cond_41
    invoke-static {v6}, Lk0/qt;->a(I)V

    :cond_42
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x301bc -> :sswitch_2
        0x401bc -> :sswitch_1
        0x601be -> :sswitch_0
        0xb01bc -> :sswitch_1
        0xd01bc -> :sswitch_1
        0xe01bc -> :sswitch_1
        0xe01be -> :sswitch_0
        0xf01bc -> :sswitch_1
        0x1001bc -> :sswitch_1
        0x1101bc -> :sswitch_1
        0x1201bc -> :sswitch_2
        0x1301bc -> :sswitch_0
        0x1401bc -> :sswitch_0
        0x1a01be -> :sswitch_0
        0x1b01be -> :sswitch_0
        0x1d01bc -> :sswitch_2
        0x2f01bc -> :sswitch_2
        0x3201bc -> :sswitch_1
        0x3401be -> :sswitch_2
        0x3501be -> :sswitch_2
    .end sparse-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ak;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ak;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ak;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/ak;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lz/c;->d:Lo1/y;

    iget-object v1, p0, Lk0/ak;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa2

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
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x6f

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/16 v5, 0xe3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_15

    if-eq v0, v10, :cond_14

    const/16 v12, 0x6a

    if-eq v0, v9, :cond_13

    const/16 v13, 0x3eb

    const-wide/16 v14, 0x64

    if-eq v0, v13, :cond_11

    const/16 v13, 0x3ed

    if-eq v0, v13, :cond_b

    const/16 v13, 0x410

    if-eq v0, v13, :cond_6

    const-string v2, "com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1
    :pswitch_0
    aget v0, v1, v11

    if-eq v0, v10, :cond_3

    if-eq v0, v9, :cond_1

    if-eq v0, v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x37

    .line 2
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 3
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    invoke-interface {v0}, Lui/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    invoke-interface {v0}, Lui/b;->show()V

    goto/16 :goto_1

    .line 6
    :cond_2
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    invoke-interface {v0}, Lui/b;->hide()V

    goto/16 :goto_1

    :cond_3
    const-string v0, "com.android.launcher14.ShowAllApp"

    .line 7
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    .line 8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    const-string v2, " Rcv cmd com.android.launcher14.ShowAllApp"

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x7b

    new-array v2, v10, [I

    .line 9
    aget v1, v1, v11

    aput v1, v2, v11

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x7a

    new-array v2, v10, [I

    .line 10
    aget v1, v1, v11

    aput v1, v2, v11

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    .line 11
    :pswitch_3
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x79

    if-eqz v0, :cond_4

    new-array v0, v10, [I

    aput v11, v0, v11

    .line 12
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :cond_4
    new-array v0, v10, [I

    .line 13
    aget v1, v1, v11

    aput v1, v0, v11

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    .line 14
    :pswitch_4
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x78

    if-eqz v0, :cond_5

    new-array v0, v10, [I

    aput v11, v0, v11

    .line 15
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :cond_5
    new-array v0, v10, [I

    .line 16
    aget v1, v1, v11

    aput v1, v0, v11

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    .line 17
    :cond_6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v13, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FinalCanbus.C_CMD_6606 --- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v1

    invoke-static {v1, v11, v15}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 18
    aget v0, v1, v11

    if-eq v0, v10, :cond_9

    const/16 v13, 0x19

    if-eq v0, v13, :cond_8

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_7

    goto/16 :goto_1

    :cond_7
    new-array v0, v4, [I

    aput v5, v0, v11

    aput v7, v0, v10

    aput v12, v0, v9

    aput v8, v0, v7

    aput v10, v0, v6

    .line 19
    aget v1, v1, v10

    aput v1, v0, v8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_8
    new-array v0, v3, [I

    aput v5, v0, v11

    aput v6, v0, v10

    aput v2, v0, v9

    .line 20
    aget v2, v1, v10

    aput v2, v0, v7

    aget v2, v1, v9

    aput v2, v0, v6

    aget v2, v1, v7

    aput v2, v0, v8

    aget v1, v1, v6

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 21
    :cond_9
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 22
    :sswitch_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.xp.ziyouguang.WCYuncheNissanAirControlAct_HP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x3e

    .line 23
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 24
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1

    .line 25
    :cond_a
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 26
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    .line 27
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1

    :cond_b
    if-eqz v1, :cond_16

    .line 28
    array-length v0, v1

    if-lez v0, :cond_16

    .line 29
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FinalCanbus.C_CAMERA_MODE --- "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v1, v11

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 30
    aget v0, v1, v11

    if-eq v0, v10, :cond_10

    if-eq v0, v9, :cond_f

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_d

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c

    move v4, v11

    goto :goto_0

    :cond_c
    move v4, v7

    goto :goto_0

    :cond_d
    move v4, v8

    goto :goto_0

    :cond_e
    move v4, v6

    goto :goto_0

    :cond_f
    move v4, v9

    :cond_10
    :goto_0
    new-array v0, v8, [I

    aput v5, v0, v11

    aput v9, v0, v10

    const/16 v1, 0xfd

    aput v1, v0, v9

    aput v4, v0, v7

    aput v10, v0, v6

    .line 31
    invoke-static {v0}, Lz/k;->s([I)V

    .line 32
    invoke-static {v14, v15}, La/i;->a0(J)V

    new-array v0, v8, [I

    aput v5, v0, v11

    aput v9, v0, v10

    aput v1, v0, v9

    aput v4, v0, v7

    aput v11, v0, v6

    .line 33
    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_11
    if-eqz v1, :cond_16

    .line 34
    array-length v0, v1

    if-lez v0, :cond_16

    .line 35
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FinalCanbus.C_CHANGE_PANORAMA --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 36
    aget v0, v1, v11

    if-nez v0, :cond_12

    .line 37
    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_16

    new-array v0, v8, [I

    .line 38
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 39
    invoke-static {v14, v15}, La/i;->a0(J)V

    new-array v0, v8, [I

    .line 40
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 41
    :cond_12
    sget v0, Lu0/b;->o:I

    if-ne v0, v10, :cond_16

    new-array v0, v8, [I

    .line 42
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 43
    invoke-static {v14, v15}, La/i;->a0(J)V

    new-array v0, v8, [I

    .line 44
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_13
    new-array v0, v4, [I

    aput v5, v0, v11

    aput v7, v0, v10

    aput v12, v0, v9

    aput v8, v0, v7

    aput v10, v0, v6

    .line 45
    aget v1, v1, v11

    aput v1, v0, v8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_14
    new-array v0, v8, [I

    aput v5, v0, v11

    aput v9, v0, v10

    const/16 v2, 0x3d

    aput v2, v0, v9

    .line 46
    aget v2, v1, v11

    int-to-byte v2, v2

    aput v2, v0, v7

    aget v1, v1, v10

    int-to-byte v1, v1

    aput v1, v0, v6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_15
    new-array v0, v3, [I

    aput v5, v0, v11

    aput v6, v0, v10

    aput v2, v0, v9

    .line 47
    aget v2, v1, v11

    int-to-byte v2, v2

    aput v2, v0, v7

    aget v1, v1, v10

    int-to-byte v1, v1

    aput v1, v0, v6

    const/16 v1, 0xff

    aput v1, v0, v8

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_16
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x301bc -> :sswitch_0
        0x401bc -> :sswitch_0
        0x601be -> :sswitch_0
        0xb01bc -> :sswitch_0
        0xd01bc -> :sswitch_0
        0xe01bc -> :sswitch_0
        0xe01be -> :sswitch_0
        0xf01bc -> :sswitch_0
        0x1001bc -> :sswitch_0
        0x1101bc -> :sswitch_0
        0x1201bc -> :sswitch_0
        0x1301bc -> :sswitch_0
        0x1401bc -> :sswitch_0
        0x1a01be -> :sswitch_0
        0x1b01be -> :sswitch_0
        0x1d01bc -> :sswitch_0
        0x2a01bc -> :sswitch_0
        0x2f01bc -> :sswitch_0
        0x3201bc -> :sswitch_0
        0x3401be -> :sswitch_0
        0x3501be -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0xfd
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0xfd
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0xfd
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0xfd
        0x1
        0x0
    .end array-data
.end method

.method public final a3(I)V
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
