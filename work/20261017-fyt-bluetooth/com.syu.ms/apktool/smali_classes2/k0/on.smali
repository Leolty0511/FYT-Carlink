.class public Lk0/on;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/on;->c:I

    const/16 v1, 0x14

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

    new-array v2, v2, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/on;->d:[[I

    .line 4
    iput v0, p0, Lk0/on;->e:I

    .line 5
    iput v0, p0, Lk0/on;->f:I

    .line 6
    new-instance v0, Lk0/on$a;

    invoke-direct {v0, p0}, Lk0/on$a;-><init>(Lk0/on;)V

    iput-object v0, p0, Lk0/on;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/on$b;

    invoke-direct {v0, p0}, Lk0/on$b;-><init>(Lk0/on;)V

    iput-object v0, p0, Lk0/on;->h:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x6
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x18
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x36
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x5
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x37
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x12
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x13
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x14
        0xd
    .end array-data
.end method

.method public static b3()V
    .locals 13

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x5

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 3
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x4

    const/16 v3, -0x40

    const/16 v4, 0xe3

    const/4 v5, 0x6

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x1

    if-eq v0, v11, :cond_5

    if-eq v0, v1, :cond_4

    const/16 v12, 0xa

    if-eq v0, v12, :cond_3

    const/16 v12, 0xc

    if-eq v0, v12, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v10, :cond_3

    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_1
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_2
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_3
    new-array v0, v5, [I

    aput v4, v0, v9

    aput v3, v0, v11

    aput v7, v0, v8

    aput v10, v0, v7

    aput v8, v0, v2

    .line 7
    sget v2, Lu0/b;->r3:I

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_4
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    .line 9
    :cond_5
    sget v0, Lw0/d;->h:I

    if-eqz v0, :cond_7

    if-ne v0, v11, :cond_6

    goto :goto_0

    :cond_6
    move v0, v9

    goto :goto_1

    :cond_7
    :goto_0
    const/16 v0, 0x10

    :goto_1
    new-array v12, v10, [I

    aput v4, v12, v9

    aput v3, v12, v11

    aput v1, v12, v8

    aput v11, v12, v7

    aput v11, v12, v2

    aput v0, v12, v1

    .line 10
    sget v0, Lw0/d;->i:I

    and-int/lit16 v1, v0, 0xff

    aput v1, v12, v5

    shr-int/2addr v0, v10

    and-int/lit16 v0, v0, 0xff

    aput v0, v12, v6

    invoke-static {v12}, Lz/k;->s([I)V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x40
        0x2
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x40
        0x2
        0xd
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x40
        0x2
        0x6
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x40
        0x2
        0x5
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x40
        0x2
        0xc
        0x0
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 8

    if-eqz p1, :cond_e

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

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "      value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget v7, p1, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0x29

    if-eq v2, v3, :cond_c

    const/16 v3, 0x2a

    const/4 v4, 0x4

    if-eq v2, v3, :cond_a

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_9

    const/16 v3, 0x10

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget p1, p1, v6

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1, v6}, Lk0/on;->a3(II)V

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, v6, v6}, Lk0/on;->a3(II)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    aget p1, p1, v6

    const/16 v1, 0xc

    if-eqz p1, :cond_3

    .line 8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_e

    .line 9
    invoke-virtual {p0, v4, v0}, Lk0/on;->a3(II)V

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_e

    const/16 p1, 0x8

    .line 11
    invoke-virtual {p0, p1, v0}, Lk0/on;->a3(II)V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    aget p1, p1, v6

    if-eqz p1, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_e

    .line 14
    invoke-virtual {p0, v4, v6}, Lk0/on;->a3(II)V

    goto/16 :goto_0

    .line 15
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_e

    .line 16
    invoke-virtual {p0, v4, v6}, Lk0/on;->a3(II)V

    goto/16 :goto_0

    .line 17
    :pswitch_3
    aget p1, p1, v6

    const/16 v1, 0x41

    if-eqz p1, :cond_5

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_e

    .line 19
    invoke-virtual {p0, v3, v0}, Lk0/on;->a3(II)V

    goto/16 :goto_0

    .line 20
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_e

    .line 21
    invoke-virtual {p0, v3, v0}, Lk0/on;->a3(II)V

    goto/16 :goto_0

    .line 22
    :pswitch_4
    aget p1, p1, v6

    const/16 v1, 0x20

    const/16 v2, 0xd

    if-eqz p1, :cond_6

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_e

    .line 24
    invoke-virtual {p0, v1, v0}, Lk0/on;->a3(II)V

    goto/16 :goto_0

    .line 25
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_e

    .line 26
    invoke-virtual {p0, v1, v0}, Lk0/on;->a3(II)V

    goto :goto_0

    .line 27
    :pswitch_5
    aget p1, p1, v6

    const/16 v2, 0xb

    if-eqz p1, :cond_7

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_e

    .line 29
    invoke-virtual {p0, v1, v0}, Lk0/on;->a3(II)V

    goto :goto_0

    .line 30
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_e

    .line 31
    invoke-virtual {p0, v1, v0}, Lk0/on;->a3(II)V

    goto :goto_0

    .line 32
    :pswitch_6
    aget p1, p1, v6

    const/16 v1, 0x80

    const/16 v2, 0xa

    if-eqz p1, :cond_8

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_e

    .line 34
    invoke-virtual {p0, v1, v0}, Lk0/on;->a3(II)V

    goto :goto_0

    .line 35
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_e

    .line 36
    invoke-virtual {p0, v1, v0}, Lk0/on;->a3(II)V

    goto :goto_0

    .line 37
    :cond_9
    aget p1, p1, v6

    if-eqz p1, :cond_e

    const/16 p1, 0x40

    .line 38
    invoke-virtual {p0, p1, v0}, Lk0/on;->a3(II)V

    goto :goto_0

    .line 39
    :cond_a
    aget p1, p1, v6

    if-eqz p1, :cond_b

    .line 40
    invoke-virtual {p0, v1, v4}, Lk0/on;->a3(II)V

    goto :goto_0

    .line 41
    :cond_b
    invoke-virtual {p0, v6, v4}, Lk0/on;->a3(II)V

    goto :goto_0

    .line 42
    :cond_c
    aget p1, p1, v6

    const/4 v0, 0x3

    if-eqz p1, :cond_d

    .line 43
    invoke-virtual {p0, v1, v0}, Lk0/on;->a3(II)V

    goto :goto_0

    .line 44
    :cond_d
    invoke-virtual {p0, v6, v0}, Lk0/on;->a3(II)V

    :cond_e
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public S2()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v1, Lk0/mt;->e:I

    .line 4
    iput v2, v1, Lk0/mt;->f:I

    .line 5
    iput v2, v1, Lk0/mt;->g:I

    const/4 v3, 0x0

    .line 6
    iput v3, v1, Lk0/mt;->h:I

    .line 7
    iput v3, v1, Lk0/mt;->i:I

    .line 8
    iput v3, v1, Lk0/mt;->l:I

    .line 9
    iput v2, v1, Lk0/mt;->i:I

    .line 10
    iget-object v1, p0, Lk0/on;->h:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    .line 12
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v1, Lk0/mt;->i:I

    .line 13
    :cond_0
    sget v1, Lk0/nt;->a:I

    const v3, 0xbd01c4

    if-eq v1, v3, :cond_1

    const v3, 0xbe01c4

    if-ne v1, v3, :cond_2

    .line 14
    :cond_1
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v3, p0, Lk0/on;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v3, p0, Lk0/on;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/on;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v1, Lu0/c;->s:Lo1/y;

    iget-object v3, p0, Lk0/on;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    iget-object v1, p0, Lk0/on;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xf

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
        0x29
        0x2a
        0x37
        0x38
        0x3b
        0x3c
        0x3d
        0x44
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x27

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/16 v6, 0xff

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x29

    const/4 v7, 0x0

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x30

    const/4 v8, 0x2

    if-eq v2, v3, :cond_19

    const/16 v3, 0xb

    const/16 v9, 0x7d

    const/4 v10, 0x4

    const/4 v11, 0x1

    if-eq v2, v9, :cond_17

    const/16 v12, 0x38

    if-eq v2, v12, :cond_16

    const/16 v12, 0x39

    if-eq v2, v12, :cond_15

    const/16 v9, 0x41

    if-eq v2, v9, :cond_14

    const/16 v12, 0x42

    if-eq v2, v12, :cond_13

    const/16 v12, 0x13

    const/16 v13, 0x12

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 4
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 5
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 6
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 7
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 8
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v7

    .line 9
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v2, v7

    .line 10
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v5, p2, 0x3

    .line 12
    aget-byte v8, v1, v5

    and-int/2addr v8, v6

    add-int/lit8 v9, p2, 0x4

    .line 13
    aget-byte v12, v1, v9

    and-int/2addr v12, v6

    add-int/lit8 v4, p2, 0x5

    .line 14
    aget-byte v13, v1, v4

    and-int/2addr v6, v13

    if-nez v3, :cond_1

    if-nez v8, :cond_1

    if-nez v12, :cond_1

    if-nez v6, :cond_1

    .line 15
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 16
    :cond_1
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_2

    sget v7, Ll0/c0;->h:I

    if-ne v7, v8, :cond_2

    sget v7, Ll0/c0;->i:I

    if-ne v7, v12, :cond_2

    sget v7, Ll0/c0;->j:I

    if-eq v7, v6, :cond_3

    .line 17
    :cond_2
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_3

    .line 18
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 19
    sput v10, Ll0/c0;->k:I

    .line 20
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 21
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 22
    sput v8, Ll0/c0;->h:I

    .line 23
    sput v12, Ll0/c0;->i:I

    .line 24
    sput v6, Ll0/c0;->j:I

    .line 25
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 26
    aget-byte v2, v1, v5

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 27
    aget-byte v2, v1, v9

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 28
    aget-byte v1, v1, v4

    invoke-static {v1}, Ll0/c0;->e1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 30
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 31
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 32
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->e1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_3
    const/16 v2, 0xa

    new-array v14, v11, [I

    add-int/lit8 v15, p2, 0x2

    .line 33
    aget-byte v16, v1, v15

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v7

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 34
    aget-byte v14, v1, v15

    shr-int/lit8 v14, v14, 0x6

    and-int/2addr v14, v11

    aput v14, v2, v7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v11, [I

    .line 35
    aget-byte v14, v1, v15

    shr-int/2addr v14, v4

    and-int/2addr v14, v11

    aput v14, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v11, [I

    .line 36
    aget-byte v14, v1, v15

    shr-int/2addr v14, v10

    and-int/2addr v14, v11

    aput v14, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2d

    new-array v3, v11, [I

    .line 37
    aget-byte v14, v1, v15

    shr-int/2addr v14, v5

    and-int/2addr v14, v11

    aput v14, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v11, [I

    .line 38
    aget-byte v14, v1, v15

    shr-int/lit8 v8, v14, 0x2

    and-int/2addr v8, v11

    aput v8, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 39
    aget-byte v3, v1, v15

    shr-int/2addr v3, v11

    and-int/2addr v3, v11

    aput v3, v2, v7

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v11, [I

    .line 40
    aget-byte v8, v1, v15

    shr-int/2addr v8, v7

    and-int/2addr v8, v11

    aput v8, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x3

    .line 41
    aget-byte v8, v1, v3

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v11

    aput v8, v2, v7

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 42
    aget-byte v8, v1, v3

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v11

    aput v8, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v8, v11, [I

    .line 43
    aget-byte v9, v1, v3

    shr-int/lit8 v4, v9, 0x5

    and-int/2addr v4, v11

    aput v4, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v11, [I

    .line 44
    aget-byte v3, v1, v3

    shr-int/2addr v3, v7

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 45
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v8, 0x1f

    const/16 v9, 0x1c

    const/16 v12, 0x1b

    if-eqz v2, :cond_8

    add-int/lit8 v2, p2, 0x4

    .line 46
    aget-byte v13, v1, v2

    and-int/2addr v13, v6

    if-nez v13, :cond_4

    new-array v2, v11, [I

    aput v4, v2, v7

    .line 47
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 48
    :cond_4
    aget-byte v13, v1, v2

    and-int/2addr v13, v6

    if-ne v13, v8, :cond_5

    new-array v2, v11, [I

    aput v3, v2, v7

    .line 49
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v13, v11, [I

    .line 50
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    aput v2, v13, v7

    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v2, p2, 0x5

    .line 51
    aget-byte v9, v1, v2

    and-int/2addr v9, v6

    if-nez v9, :cond_6

    new-array v2, v11, [I

    aput v4, v2, v7

    .line 52
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 53
    :cond_6
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    if-ne v4, v8, :cond_7

    new-array v2, v11, [I

    aput v3, v2, v7

    .line 54
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_7
    new-array v3, v11, [I

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    aput v2, v3, v7

    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_8
    add-int/lit8 v2, p2, 0x4

    .line 56
    aget-byte v13, v1, v2

    and-int/2addr v13, v6

    if-nez v13, :cond_9

    new-array v2, v11, [I

    aput v4, v2, v7

    .line 57
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 58
    :cond_9
    aget-byte v13, v1, v2

    and-int/2addr v13, v6

    if-ne v13, v8, :cond_a

    new-array v2, v11, [I

    aput v3, v2, v7

    .line 59
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v13, v11, [I

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    aput v2, v13, v7

    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v2, p2, 0x5

    .line 61
    aget-byte v12, v1, v2

    and-int/2addr v12, v6

    if-nez v12, :cond_b

    new-array v2, v11, [I

    aput v4, v2, v7

    .line 62
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 63
    :cond_b
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    if-ne v4, v8, :cond_c

    new-array v2, v11, [I

    aput v3, v2, v7

    .line 64
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v3, v11, [I

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    aput v2, v3, v7

    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x3a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 66
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v11, [I

    .line 67
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 68
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v11, [I

    .line 69
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x8

    .line 70
    aget-byte v4, v1, v3

    shr-int/2addr v4, v10

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v4, v11, [I

    .line 71
    aget-byte v1, v1, v3

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0xf

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 72
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 73
    aget-byte v1, v1, v3

    and-int/2addr v2, v6

    .line 74
    iput v2, v0, Lk0/on;->c:I

    move v2, v7

    .line 75
    :goto_5
    iget-object v3, v0, Lk0/on;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_e

    .line 76
    iget v4, v0, Lk0/on;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_d

    if-eqz v4, :cond_e

    .line 77
    iput v2, v0, Lk0/on;->b:I

    goto :goto_6

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 78
    :cond_e
    :goto_6
    iget v4, v0, Lk0/on;->c:I

    if-eq v4, v13, :cond_12

    if-eq v4, v12, :cond_11

    and-int/2addr v1, v6

    if-ne v1, v11, :cond_f

    .line 79
    array-length v1, v3

    if-ge v2, v1, :cond_1c

    .line 80
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_f
    if-nez v1, :cond_1c

    .line 81
    iget v1, v0, Lk0/on;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_10

    if-eq v1, v6, :cond_10

    .line 82
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 83
    :cond_10
    iput v6, v0, Lk0/on;->b:I

    goto/16 :goto_7

    :cond_11
    and-int/2addr v1, v6

    if-ne v1, v11, :cond_1c

    .line 84
    invoke-virtual/range {p0 .. p0}, Lk0/on;->d3()V

    goto/16 :goto_7

    :cond_12
    and-int/2addr v1, v6

    if-ne v1, v11, :cond_1c

    .line 85
    invoke-virtual/range {p0 .. p0}, Lk0/on;->c3()V

    goto/16 :goto_7

    :cond_13
    const/16 v2, 0x6e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 86
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xf00

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v6

    or-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 87
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xf00

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 88
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x7

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v11, [I

    .line 89
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x7

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_14
    const/16 v2, 0x6a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 90
    aget-byte v9, v1, v4

    shr-int/2addr v9, v10

    and-int/lit8 v9, v9, 0xf

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v11, [I

    .line 91
    aget-byte v9, v1, v4

    shr-int/lit8 v5, v9, 0x3

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v11, [I

    .line 92
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 93
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 94
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 95
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 96
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 97
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 98
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 99
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 100
    aget-byte v1, v1, v3

    const/16 v3, 0x72

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v7

    .line 101
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x73

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v11

    aput v5, v4, v7

    .line 102
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x74

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v11

    aput v5, v4, v7

    .line 103
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x75

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v11

    aput v5, v4, v7

    .line 104
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x76

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v11

    aput v5, v4, v7

    .line 105
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x77

    new-array v4, v11, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v11

    aput v2, v4, v7

    .line 106
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 108
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 109
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 110
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 111
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v11

    aput v1, v2, v7

    .line 112
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_16
    const/16 v2, 0x66

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 113
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 114
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 115
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 116
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 117
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 118
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 119
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 120
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 121
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-eq v2, v11, :cond_18

    goto :goto_7

    :cond_18
    add-int/lit8 v2, p2, 0x3

    .line 122
    aget-byte v4, v1, v2

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aget-byte v5, v1, v2

    shr-int/2addr v5, v10

    and-int/2addr v5, v11

    invoke-static {v4, v5, v7}, Ll0/c0;->a(III)V

    .line 123
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x419

    new-array v8, v8, [I

    aput v3, v8, v7

    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    aput v1, v8, v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v5, v8, v1, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_7

    .line 124
    :cond_19
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_7

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 125
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const v3, 0x8000

    const/16 v4, 0x229c

    invoke-static {v2, v1, v3, v7, v4}, Lk0/qt;->m(IIIZI)V

    goto :goto_7

    :cond_1b
    add-int/lit8 v2, p2, 0x3

    .line 126
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    mul-int/2addr v1, v4

    add-int/lit16 v1, v1, 0x28a

    .line 127
    invoke-static {v1}, Lu0/d;->A3(I)V

    :cond_1c
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/on;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v1, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/on;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/on;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/on;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/on;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Lk0/on;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x83

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

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_6

    .line 1
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p3, -0x7d

    aput p3, p1, v4

    aput v4, p1, v3

    .line 2
    aget p2, p2, v2

    add-int/2addr p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_6

    .line 3
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lk0/on;->c3()V

    goto :goto_0

    :cond_3
    new-array p1, p3, [I

    aput p4, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v3, p1, v3

    .line 6
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p3, [I

    aput p4, p1, v2

    const/16 p3, 0xc6

    aput p3, p1, v4

    aput v3, p1, v3

    .line 7
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p4, p1, v2

    const/16 p4, 0xc7

    aput p4, p1, v4

    const/4 p4, 0x6

    aput p4, p1, v3

    .line 8
    aget v2, p2, v2

    aput v2, p1, v1

    aget v2, p2, v4

    aput v2, p1, v0

    aget v2, p2, v3

    aput v2, p1, p3

    aget v1, p2, v1

    aput v1, p1, p4

    const/4 p4, 0x7

    aget v0, p2, v0

    aput v0, p1, p4

    const/16 p4, 0x8

    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7d
        0x1
        0x5
    .end array-data
.end method

.method public final a3(II)V
    .locals 12

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/16 v2, -0x39

    const/16 v3, 0xe3

    const/16 v4, 0x9

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x0

    if-eqz p2, :cond_5

    if-eq p2, v9, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_1

    if-eq p2, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput p1, p2, v0

    .line 1
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput p1, p2, v1

    aput v11, p2, v0

    .line 2
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput p1, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 3
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput p1, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput p1, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput p1, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 6
    invoke-static {p2}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 p1, 0x32

    .line 7
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final c3()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.canbus"

    const-string v2, "com.syu.carinfo.wc.ruijie15.ODZotyeT700FrontAirControlAct_SP"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final d3()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.canbus"

    const-string v2, "com.syu.carinfo.od.dongnanv5.OD_Zotye_T700_Pm25"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
