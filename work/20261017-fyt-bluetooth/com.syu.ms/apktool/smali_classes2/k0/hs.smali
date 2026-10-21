.class public Lk0/hs;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hs;->c:I

    const/16 v1, 0x9

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

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

    iput-object v2, p0, Lk0/hs;->d:[[I

    .line 4
    iput v0, p0, Lk0/hs;->f:I

    const/16 v2, 0x14

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_9

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    const/16 v4, 0xa

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    const/16 v4, 0xb

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v4, 0x10

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    const/16 v4, 0x11

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    const/16 v4, 0x12

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    const/16 v3, 0x13

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/hs;->g:[[I

    .line 6
    iput v0, p0, Lk0/hs;->h:I

    .line 7
    new-instance v0, Lk0/hs$a;

    invoke-direct {v0, p0}, Lk0/hs$a;-><init>(Lk0/hs;)V

    iput-object v0, p0, Lk0/hs;->i:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/hs$b;

    invoke-direct {v0, p0}, Lk0/hs$b;-><init>(Lk0/hs;)V

    iput-object v0, p0, Lk0/hs;->j:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/hs$c;

    invoke-direct {v0, p0}, Lk0/hs$c;-><init>(Lk0/hs;)V

    iput-object v0, p0, Lk0/hs;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/hs$d;

    invoke-direct {v0, p0}, Lk0/hs$d;-><init>(Lk0/hs;)V

    iput-object v0, p0, Lk0/hs;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/hs$e;

    invoke-direct {v0, p0}, Lk0/hs$e;-><init>(Lk0/hs;)V

    iput-object v0, p0, Lk0/hs;->m:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x3e
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_c
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_d
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x7
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x8
        0x15
    .end array-data

    :array_11
    .array-data 4
        0x9
        0x36
    .end array-data

    :array_12
    .array-data 4
        0xa
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_14
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_15
    .array-data 4
        0xd
        0x26
    .end array-data

    :array_16
    .array-data 4
        0xe
        0x8
    .end array-data

    :array_17
    .array-data 4
        0xf
        0x7
    .end array-data

    :array_18
    .array-data 4
        0x10
        0x37
    .end array-data

    :array_19
    .array-data 4
        0x11
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_1b
    .array-data 4
        0x13
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x14
        0x12
    .end array-data
.end method

.method public static synthetic b3(Lk0/hs;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/hs;->a3()V

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

    if-eqz p1, :cond_9

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Air codeCmd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "      value = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/4 v2, 0x5

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4
    :pswitch_1
    aget p1, p1, v0

    if-eqz p1, :cond_1

    new-array p1, v2, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v2, [I

    .line 6
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    aget p1, p1, v0

    if-eqz p1, :cond_2

    new-array p1, v2, [I

    .line 8
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v2, [I

    .line 9
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :pswitch_3
    aget p1, p1, v0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    :cond_3
    new-array p1, v2, [I

    .line 11
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    new-array p1, v2, [I

    .line 12
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 13
    :pswitch_4
    aget p1, p1, v0

    const/16 v1, 0xc

    if-eqz p1, :cond_5

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    new-array p1, v2, [I

    .line 15
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 16
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_9

    new-array p1, v2, [I

    .line 17
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v0

    const/16 v1, 0xd

    if-eqz p1, :cond_6

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    new-array p1, v2, [I

    .line 20
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 21
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_9

    new-array p1, v2, [I

    .line 22
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v0

    const/16 v1, 0xb

    if-eqz p1, :cond_7

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    new-array p1, v2, [I

    .line 25
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 26
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_9

    new-array p1, v2, [I

    .line 27
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v0

    const/16 v1, 0xa

    if-eqz p1, :cond_8

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    new-array p1, v2, [I

    .line 30
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 31
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_9

    new-array p1, v2, [I

    .line 32
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_9
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x83
        0x2
        0xa2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x2
        0xa2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x2
        0xa1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x2
        0xa1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x83
        0x2
        0xa0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x83
        0x2
        0xa0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x83
        0x2
        0xa5
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x83
        0x2
        0xa5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x83
        0x2
        0xa9
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x83
        0x2
        0xa9
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x83
        0x2
        0xa4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x83
        0x2
        0xa4
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x83
        0x2
        0xa0
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x83
        0x2
        0xa8
        0x1
    .end array-data
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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->n:I

    .line 7
    iput v2, v0, Lk0/mt;->r:I

    .line 8
    iput v2, v0, Lk0/mt;->q:I

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 11
    :cond_0
    iget-object v0, p0, Lk0/hs;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/hs;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v0, p0, Lk0/hs;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/hs;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/hs;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

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
        0x27
        0x29
        0x2a
        0x37
        0x38
        0x43
    .end array-data
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x28

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v4, :cond_21

    const/16 v4, 0x30

    if-eq v2, v4, :cond_20

    const/16 v4, 0x36

    const/16 v11, 0xa

    if-eq v2, v4, :cond_1d

    const/16 v12, 0x40

    const/16 v13, 0x64

    if-eq v2, v12, :cond_1c

    const/16 v12, 0x7d

    if-eq v2, v12, :cond_17

    const/16 v12, 0x7f

    if-eq v2, v12, :cond_16

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v7, p2, 0x3

    .line 3
    aget-byte v8, v1, v7

    and-int/2addr v8, v3

    add-int/lit8 v11, p2, 0x4

    .line 4
    aget-byte v12, v1, v11

    and-int/2addr v12, v3

    add-int/lit8 v5, p2, 0x5

    .line 5
    aget-byte v13, v1, v5

    and-int/2addr v13, v3

    if-nez v4, :cond_0

    if-nez v8, :cond_0

    if-nez v12, :cond_0

    if-nez v13, :cond_0

    .line 6
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v9, Ll0/c0;->g:I

    if-ne v9, v4, :cond_1

    sget v9, Ll0/c0;->h:I

    if-ne v9, v8, :cond_1

    sget v9, Ll0/c0;->i:I

    if-ne v9, v12, :cond_1

    sget v9, Ll0/c0;->j:I

    if-eq v9, v13, :cond_2

    .line 8
    :cond_1
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_2

    .line 9
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 10
    sput v6, Ll0/c0;->k:I

    .line 11
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v4, Ll0/c0;->g:I

    .line 13
    sput v8, Ll0/c0;->h:I

    .line 14
    sput v12, Ll0/c0;->i:I

    .line 15
    sput v13, Ll0/c0;->j:I

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 17
    aget-byte v2, v1, v7

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 18
    aget-byte v2, v1, v11

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 19
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 23
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_b

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v5, p2, 0x3

    .line 25
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    add-int/lit8 v12, p2, 0x4

    .line 26
    aget-byte v12, v1, v12

    and-int/2addr v12, v3

    add-int/lit8 v13, p2, 0x5

    .line 27
    aget-byte v14, v1, v13

    and-int/2addr v14, v3

    add-int/lit8 v15, p2, 0x6

    .line 28
    aget-byte v4, v1, v15

    and-int/2addr v4, v3

    add-int/lit8 v17, p2, 0x7

    .line 29
    aget-byte v18, v1, v17

    new-array v6, v10, [I

    shr-int/lit8 v19, v2, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v6, v9

    .line 30
    invoke-static {v11, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xb

    new-array v11, v10, [I

    shr-int/lit8 v20, v2, 0x6

    and-int/lit8 v20, v20, 0x1

    aput v20, v11, v9

    .line 31
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xc

    new-array v11, v10, [I

    shr-int/lit8 v20, v2, 0x5

    and-int/lit8 v20, v20, 0x1

    aput v20, v11, v9

    .line 32
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x35

    new-array v11, v10, [I

    shr-int/lit8 v20, v2, 0x4

    and-int/lit8 v20, v20, 0x1

    aput v20, v11, v9

    .line 33
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xd

    new-array v11, v10, [I

    shr-int/lit8 v20, v2, 0x3

    and-int/lit8 v20, v20, 0x1

    aput v20, v11, v9

    .line 34
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x3e

    new-array v11, v10, [I

    shr-int/lit8 v20, v2, 0x2

    and-int/lit8 v20, v20, 0x1

    aput v20, v11, v9

    .line 35
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x10

    new-array v11, v10, [I

    shr-int/lit8 v20, v2, 0x1

    and-int/lit8 v20, v20, 0x1

    aput v20, v11, v9

    .line 36
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    new-array v6, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v6, v9

    const/16 v2, 0xf

    .line 37
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    if-eqz v5, :cond_6

    if-eq v5, v10, :cond_5

    if-eq v5, v7, :cond_4

    if-eq v5, v8, :cond_3

    move v5, v9

    move v6, v5

    :goto_1
    move v7, v6

    goto :goto_2

    :cond_3
    move v5, v9

    move v6, v10

    goto :goto_1

    :cond_4
    move v5, v9

    move v7, v5

    move v6, v10

    goto :goto_2

    :cond_5
    move v7, v9

    move v5, v10

    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v9

    move v7, v6

    move v5, v10

    :goto_2
    const/16 v8, 0x13

    new-array v11, v10, [I

    aput v5, v11, v9

    .line 38
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v8, v10, [I

    aput v6, v8, v9

    .line 39
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x12

    new-array v6, v10, [I

    aput v7, v6, v9

    .line 40
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x15

    new-array v6, v10, [I

    and-int/lit16 v7, v12, 0xff

    aput v7, v6, v9

    .line 41
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const-string v5, "persist.fyt.reversetemp"

    .line 42
    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 43
    aget-byte v4, v1, v15

    and-int/lit16 v14, v4, 0xff

    .line 44
    aget-byte v4, v1, v13

    and-int/2addr v4, v3

    :cond_7
    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0xfe

    const/16 v8, 0x1b

    if-eqz v14, :cond_a

    if-eq v14, v7, :cond_9

    if-eq v14, v3, :cond_8

    new-array v11, v10, [I

    const/16 v12, 0xa

    mul-int/2addr v14, v12

    aput v14, v11, v9

    .line 45
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v11, v10, [I

    const/4 v12, -0x3

    aput v12, v11, v9

    .line 46
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v11, v10, [I

    aput v5, v11, v9

    .line 47
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v11, v10, [I

    aput v6, v11, v9

    .line 48
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v8, 0x1c

    if-eqz v4, :cond_d

    if-eq v4, v7, :cond_c

    if-eq v4, v3, :cond_b

    new-array v3, v10, [I

    const/16 v5, 0xa

    mul-int/2addr v4, v5

    aput v4, v3, v9

    .line 49
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array v3, v10, [I

    const/4 v4, -0x3

    aput v4, v3, v9

    .line 50
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v3, v10, [I

    aput v5, v3, v9

    .line 51
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    new-array v3, v10, [I

    aput v6, v3, v9

    .line 52
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v3, 0x1d

    new-array v4, v10, [I

    .line 53
    aget-byte v5, v1, v17

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1e

    new-array v4, v10, [I

    .line 54
    aget-byte v5, v1, v17

    shr-int/2addr v5, v9

    and-int/2addr v2, v5

    aput v2, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x8

    .line 55
    aget-byte v4, v1, v3

    shr-int/2addr v4, v10

    and-int/2addr v4, v10

    aput v4, v2, v9

    const/16 v4, 0x36

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v4, v10, [I

    .line 56
    aget-byte v1, v1, v3

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 57
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 58
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 59
    iput v2, v0, Lk0/hs;->f:I

    move v2, v9

    .line 60
    :goto_5
    iget-object v4, v0, Lk0/hs;->g:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_f

    .line 61
    iget v5, v0, Lk0/hs;->f:I

    aget-object v6, v4, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_e

    if-eqz v5, :cond_f

    .line 62
    iput v2, v0, Lk0/hs;->e:I

    goto :goto_6

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    :goto_6
    and-int/2addr v1, v3

    if-ne v1, v10, :cond_10

    .line 63
    array-length v1, v4

    if-ge v2, v1, :cond_23

    .line 64
    aget-object v1, v4, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_10
    if-nez v1, :cond_23

    .line 65
    iget v1, v0, Lk0/hs;->e:I

    array-length v2, v4

    if-ge v1, v2, :cond_11

    if-eq v1, v3, :cond_11

    .line 66
    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 67
    :cond_11
    iput v3, v0, Lk0/hs;->e:I

    goto/16 :goto_b

    .line 68
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 70
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 71
    iput v2, v0, Lk0/hs;->c:I

    move v2, v9

    .line 72
    :goto_7
    iget-object v4, v0, Lk0/hs;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_13

    .line 73
    iget v5, v0, Lk0/hs;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_12

    if-eqz v5, :cond_13

    .line 74
    iput v2, v0, Lk0/hs;->b:I

    goto :goto_8

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    :goto_8
    and-int/2addr v1, v3

    if-ne v1, v10, :cond_14

    .line 75
    array-length v1, v4

    if-ge v2, v1, :cond_23

    .line 76
    aget-object v1, v4, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_14
    if-nez v1, :cond_23

    .line 77
    iget v1, v0, Lk0/hs;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_15

    if-eq v1, v3, :cond_15

    .line 78
    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 79
    :cond_15
    iput v3, v0, Lk0/hs;->b:I

    goto/16 :goto_b

    .line 80
    :cond_16
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-eq v2, v10, :cond_1a

    const/16 v4, 0x419

    const v6, 0xff00

    const/4 v11, 0x0

    if-eq v2, v8, :cond_19

    const/4 v12, 0x4

    if-eq v2, v12, :cond_18

    goto/16 :goto_b

    :cond_18
    add-int/lit8 v2, p2, 0x7

    .line 82
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v6, p2, 0x6

    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 83
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v7, [I

    aput v5, v3, v9

    const/16 v5, 0xa

    div-int/2addr v1, v5

    aput v1, v3, v10

    invoke-static {v2, v4, v3, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_19
    add-int/lit8 v2, p2, 0x4

    .line 84
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/2addr v1, v13

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 86
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v7, [I

    aput v10, v3, v9

    aput v1, v3, v10

    invoke-static {v2, v4, v3, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_1a
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 87
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1b

    add-int/lit8 v2, p2, 0x3

    .line 88
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->b(III)V

    goto/16 :goto_b

    :cond_1b
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x3

    .line 89
    aget-byte v4, v1, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v10

    aget-byte v1, v1, v3

    shr-int/2addr v1, v2

    and-int/2addr v1, v10

    invoke-static {v4, v1, v9}, Ll0/c0;->a(III)V

    goto/16 :goto_b

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v4, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 91
    aget-byte v6, v1, v4

    add-int/lit8 v6, p2, 0x4

    .line 92
    aget-byte v11, v1, v6

    add-int/lit8 v11, p2, 0x5

    .line 93
    aget-byte v12, v1, v11

    add-int/lit8 v12, p2, 0x6

    .line 94
    aget-byte v14, v1, v12

    const/16 v14, 0x62

    new-array v15, v10, [I

    .line 95
    aget-byte v16, v1, v2

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x3

    aput v16, v15, v9

    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x63

    new-array v15, v10, [I

    .line 96
    aget-byte v16, v1, v2

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v9

    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    new-array v14, v10, [I

    .line 97
    aget-byte v15, v1, v2

    const/16 v16, 0x4

    shr-int/lit8 v15, v15, 0x4

    and-int/2addr v15, v10

    aput v15, v14, v9

    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x65

    new-array v14, v10, [I

    .line 98
    aget-byte v15, v1, v2

    shr-int/2addr v15, v8

    and-int/2addr v15, v10

    aput v15, v14, v9

    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x66

    new-array v14, v10, [I

    .line 99
    aget-byte v2, v1, v2

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aput v2, v14, v9

    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v13, v10, [I

    .line 100
    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    aput v4, v13, v9

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v4, v10, [I

    .line 101
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v10, [I

    .line 102
    aget-byte v6, v1, v11

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v10

    aput v6, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v10, [I

    .line 103
    aget-byte v6, v1, v11

    shr-int/lit8 v5, v6, 0x5

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v10, [I

    .line 104
    aget-byte v5, v1, v11

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v10, [I

    .line 105
    aget-byte v5, v1, v11

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v10, [I

    .line 106
    aget-byte v1, v1, v12

    and-int/2addr v1, v3

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 107
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    if-eqz v1, :cond_1f

    if-ne v1, v3, :cond_1e

    goto :goto_9

    :cond_1e
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 108
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_b

    .line 109
    :cond_1f
    :goto_9
    invoke-static {v9}, Lu0/d;->A3(I)V

    goto :goto_b

    :cond_20
    add-int/lit8 v2, p2, 0x3

    .line 110
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x1e00

    const/16 v4, 0x16a8

    invoke-static {v2, v1, v3, v9, v4}, Lk0/qt;->m(IIIZI)V

    goto :goto_b

    :cond_21
    add-int/lit8 v2, p2, 0x2

    .line 111
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 112
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_22

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 113
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 114
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_22
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 115
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 116
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_a
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x4

    .line 117
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 118
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 119
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 120
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :cond_23
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x21
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
    iget-object v0, p0, Lk0/hs;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/hs;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/hs;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/hs;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/hs;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/hs;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6e

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
    .locals 7

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    const/16 v5, 0x405

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget p1, p2, v4

    mul-int/lit16 p1, p1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v5

    div-int/2addr p1, v5

    .line 2
    aget v5, p2, v3

    mul-int/lit16 v5, v5, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v6

    div-int/2addr v5, v6

    .line 3
    aget p2, p2, v2

    if-ne p2, v4, :cond_4

    const/16 p2, 0x9

    new-array p2, p2, [I

    aput v1, p2, v2

    const/16 v1, 0x98

    aput v1, p2, v4

    const/4 v1, 0x6

    aput v1, p2, v3

    aput v4, p2, v0

    shr-int/lit8 v0, p1, 0x8

    aput v0, p2, p4

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, p3

    shr-int/lit8 p1, v5, 0x8

    aput p1, p2, v1

    const/4 p1, 0x7

    and-int/lit16 p3, v5, 0xff

    aput p3, p2, p1

    const/16 p1, 0x8

    aput v2, p2, p1

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 5
    array-length p1, p2

    if-lt p1, v4, :cond_4

    new-array p1, p4, [I

    aput v1, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v4, p1, v3

    .line 6
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 7
    array-length p1, p2

    if-lt p1, v3, :cond_4

    new-array p1, p3, [I

    aput v1, p1, v2

    const/16 p3, 0x80

    aput p3, p1, v4

    aput v3, p1, v3

    .line 8
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    array-length p1, p2

    if-lt p1, v3, :cond_4

    new-array p1, p3, [I

    aput v1, p1, v2

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v3, p1, v3

    .line 10
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a3()V
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_0
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    .line 5
    :cond_1
    sget v0, Lw0/d;->h:I

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v0, 0x10

    :goto_1
    const/16 v4, 0x8

    new-array v5, v4, [I

    const/16 v6, 0xe3

    aput v6, v5, v3

    const/16 v3, 0xc0

    aput v3, v5, v2

    const/4 v3, 0x2

    aput v1, v5, v3

    const/4 v3, 0x3

    aput v2, v5, v3

    const/4 v3, 0x4

    aput v2, v5, v3

    aput v0, v5, v1

    const/4 v0, 0x6

    .line 6
    sget v1, Lw0/d;->i:I

    and-int/lit16 v2, v1, 0xff

    aput v2, v5, v0

    const/4 v0, 0x7

    shr-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v5, v0

    invoke-static {v5}, Lz/k;->s([I)V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc0
        0x2
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc0
        0x2
        0xff
        0x0
    .end array-data
.end method
