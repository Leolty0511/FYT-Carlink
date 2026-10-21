.class public Lk0/xl;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:J

.field public j:Ljava/lang/Runnable;

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/xl;->c:I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/xl;->d:[[I

    .line 4
    new-instance v0, Lk0/xl$a;

    invoke-direct {v0, p0}, Lk0/xl$a;-><init>(Lk0/xl;)V

    iput-object v0, p0, Lk0/xl;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/xl$b;

    invoke-direct {v0, p0}, Lk0/xl$b;-><init>(Lk0/xl;)V

    iput-object v0, p0, Lk0/xl;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/xl$c;

    invoke-direct {v0, p0}, Lk0/xl$c;-><init>(Lk0/xl;)V

    iput-object v0, p0, Lk0/xl;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/xl$d;

    invoke-direct {v0, p0}, Lk0/xl$d;-><init>(Lk0/xl;)V

    iput-object v0, p0, Lk0/xl;->h:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lk0/xl;->i:J

    .line 9
    new-instance v0, Lk0/xl$e;

    invoke-direct {v0, p0}, Lk0/xl$e;-><init>(Lk0/xl;)V

    iput-object v0, p0, Lk0/xl;->j:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lk0/xl;->k:I

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
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x17
        0xc
    .end array-data
.end method

.method public static a3()V
    .locals 9

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x85

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/4 v4, 0x3

    aput v4, v0, v1

    .line 1
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x4

    if-eq v5, v3, :cond_1

    if-eq v5, v4, :cond_0

    aput v4, v0, v4

    goto :goto_1

    :cond_0
    aput v6, v0, v4

    goto :goto_1

    .line 2
    :cond_1
    sget v5, Lw0/d;->h:I

    const/high16 v7, 0x10000

    const/4 v8, 0x5

    if-eq v5, v7, :cond_4

    const v7, 0x10001

    if-eq v5, v7, :cond_4

    const v7, 0x10002

    if-ne v5, v7, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    if-ne v5, v3, :cond_5

    :cond_3
    aput v3, v0, v4

    .line 3
    sget v1, Lw0/d;->i:I

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v6

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v8

    goto :goto_1

    :cond_4
    :goto_0
    aput v1, v0, v4

    .line 4
    sget v1, Lw0/d;->i:I

    div-int/lit8 v3, v1, 0xa

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v6

    .line 5
    div-int/lit8 v1, v1, 0xa

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v8

    .line 6
    :cond_5
    :goto_1
    sget v1, Lu0/b;->a0:I

    if-nez v1, :cond_6

    aput v2, v0, v4

    .line 7
    :cond_6
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static synthetic d3(Lk0/xl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/xl;->c3(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e3(Lk0/xl;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/xl;->h3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic f3(Lk0/xl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/xl;->i:J

    return-wide v0
.end method

.method public static synthetic g3(Lk0/xl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/xl;->i:J

    return-wide p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 9

    if-eqz p1, :cond_13

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x21

    const/16 v3, 0x14

    const/16 v4, 0x15

    const/4 v5, 0x1

    if-eq v0, v2, :cond_11

    const/16 v2, 0x22

    const/16 v6, 0xb

    const/16 v7, 0x10

    if-eq v0, v2, :cond_f

    const/16 v2, 0x29

    if-eq v0, v2, :cond_d

    const/16 v2, 0x2a

    const/16 v8, 0xc

    if-eq v0, v2, :cond_b

    const/16 v2, 0x43

    const/4 v6, 0x4

    if-eq v0, v2, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    aget p1, p1, v5

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v3}, Lk0/xl;->b3(I)V

    goto/16 :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, v4}, Lk0/xl;->b3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    aget p1, p1, v5

    const/16 v0, 0x23

    if-eqz p1, :cond_3

    .line 7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-nez p1, :cond_13

    .line 8
    invoke-virtual {p0, v0}, Lk0/xl;->b3(I)V

    goto/16 :goto_0

    .line 9
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-ne p1, v5, :cond_13

    .line 10
    invoke-virtual {p0, v0}, Lk0/xl;->b3(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_2
    aget p1, p1, v5

    if-eqz p1, :cond_4

    .line 12
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-nez p1, :cond_13

    .line 13
    invoke-virtual {p0, v6}, Lk0/xl;->b3(I)V

    goto/16 :goto_0

    .line 14
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-ne p1, v5, :cond_13

    .line 15
    invoke-virtual {p0, v6}, Lk0/xl;->b3(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_3
    aget p1, p1, v5

    const/16 v0, 0x26

    const/16 v1, 0x41

    if-eqz p1, :cond_5

    .line 17
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_13

    .line 18
    invoke-virtual {p0, v0}, Lk0/xl;->b3(I)V

    goto/16 :goto_0

    .line 19
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v5, :cond_13

    .line 20
    invoke-virtual {p0, v0}, Lk0/xl;->b3(I)V

    goto/16 :goto_0

    .line 21
    :cond_6
    aget p1, p1, v5

    if-eq p1, v1, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    if-eq p1, v6, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    goto/16 :goto_0

    :cond_7
    new-array p1, v6, [I

    .line 22
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_8
    new-array p1, v6, [I

    .line 23
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_9
    new-array p1, v6, [I

    .line 24
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_a
    new-array p1, v6, [I

    .line 25
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 26
    :cond_b
    aget p1, p1, v5

    if-eqz p1, :cond_c

    .line 27
    invoke-virtual {p0, v6}, Lk0/xl;->b3(I)V

    goto :goto_0

    .line 28
    :cond_c
    invoke-virtual {p0, v8}, Lk0/xl;->b3(I)V

    goto :goto_0

    .line 29
    :cond_d
    aget p1, p1, v5

    if-eqz p1, :cond_e

    const/16 p1, 0x9

    .line 30
    invoke-virtual {p0, p1}, Lk0/xl;->b3(I)V

    goto :goto_0

    :cond_e
    const/16 p1, 0xa

    .line 31
    invoke-virtual {p0, p1}, Lk0/xl;->b3(I)V

    goto :goto_0

    .line 32
    :cond_f
    aget p1, p1, v5

    if-eqz p1, :cond_10

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-nez p1, :cond_13

    .line 34
    invoke-virtual {p0, v7}, Lk0/xl;->b3(I)V

    goto :goto_0

    .line 35
    :cond_10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-ne p1, v5, :cond_13

    .line 36
    invoke-virtual {p0, v7}, Lk0/xl;->b3(I)V

    goto :goto_0

    .line 37
    :cond_11
    aget p1, p1, v5

    if-eqz p1, :cond_12

    .line 38
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_13

    .line 39
    invoke-virtual {p0, v3}, Lk0/xl;->b3(I)V

    goto :goto_0

    .line 40
    :cond_12
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-eqz p1, :cond_13

    .line 41
    invoke-virtual {p0, v5}, Lk0/xl;->b3(I)V

    :cond_13
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x86
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x86
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x86
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x86
        0x1
        0x0
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
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 7
    :goto_0
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0xa3

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa5

    if-eq v0, v3, :cond_1

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->h:I

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->h:I

    .line 10
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->l:I

    .line 11
    iput v2, v0, Lk0/mt;->g:I

    .line 12
    iput v2, v0, Lk0/mt;->o:I

    .line 13
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    iget-object v0, p0, Lk0/xl;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/xl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/xl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/xl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/xl;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/xl;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/xl;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/xl;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/xl;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v2, p0, Lk0/xl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xa

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
        0x43
    .end array-data
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_14

    const/16 v9, 0x1e

    if-eq v2, v9, :cond_13

    const/16 v10, 0x20

    const/4 v11, 0x3

    if-eq v2, v10, :cond_d

    const/16 v10, 0x24

    const/4 v12, 0x2

    if-eq v2, v10, :cond_b

    const/16 v10, 0x29

    if-eq v2, v10, :cond_9

    const/16 v10, 0x30

    if-eq v2, v10, :cond_8

    const/16 v10, 0x53

    if-eq v2, v10, :cond_7

    const/16 v4, 0x55

    if-eq v2, v4, :cond_0

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    add-int/lit8 v10, p2, 0x3

    .line 3
    aget-byte v14, v1, v10

    and-int/2addr v14, v6

    const-string v15, "persist.fyt.reversetemp"

    .line 4
    invoke-static {v15, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 5
    aget-byte v4, v1, v10

    and-int/2addr v4, v6

    .line 6
    aget-byte v2, v1, v2

    and-int/lit16 v14, v2, 0xff

    :cond_1
    const/4 v2, -0x2

    const/16 v10, 0x50

    const/16 v15, 0x1b

    const/16 v6, 0x10

    if-eq v4, v6, :cond_3

    if-eq v4, v10, :cond_2

    new-array v13, v8, [I

    aput v4, v13, v7

    .line 7
    invoke-static {v15, v13}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v4, v8, [I

    const/4 v13, -0x3

    aput v13, v4, v7

    .line 8
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v4, v8, [I

    aput v2, v4, v7

    .line 9
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v4, 0x1c

    if-eq v14, v6, :cond_5

    if-eq v14, v10, :cond_4

    new-array v2, v8, [I

    aput v14, v2, v7

    .line 10
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v2, v8, [I

    const/4 v10, -0x3

    aput v10, v2, v7

    .line 11
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v10, v8, [I

    aput v2, v10, v7

    .line 12
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x15

    new-array v4, v8, [I

    add-int/lit8 v10, p2, 0x4

    .line 13
    aget-byte v13, v1, v10

    shr-int/2addr v13, v7

    and-int/lit8 v13, v13, 0xf

    aput v13, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 14
    aget-byte v2, v1, v10

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    move v2, v7

    :goto_2
    move v4, v2

    :goto_3
    move v10, v4

    goto :goto_4

    :pswitch_0
    move v2, v8

    goto :goto_2

    :pswitch_1
    move v4, v7

    move v10, v4

    move v2, v8

    goto :goto_4

    :pswitch_2
    move v10, v7

    move v2, v8

    move v4, v2

    goto :goto_4

    :pswitch_3
    move v4, v7

    move v2, v8

    move v10, v2

    goto :goto_4

    :pswitch_4
    move v2, v7

    move v4, v2

    move v10, v8

    goto :goto_4

    :pswitch_5
    move v2, v7

    move v4, v8

    goto :goto_3

    :pswitch_6
    move v2, v7

    move v10, v2

    move v4, v8

    :goto_4
    const/16 v13, 0x12

    new-array v14, v8, [I

    aput v2, v14, v7

    .line 15
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v13, v8, [I

    aput v4, v13, v7

    .line 16
    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v8, [I

    aput v10, v4, v7

    .line 17
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 18
    aget-byte v10, v1, v4

    shr-int/2addr v10, v7

    and-int/2addr v10, v11

    aput v10, v2, v7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 19
    aget-byte v3, v1, v4

    shr-int/2addr v3, v5

    and-int/2addr v3, v11

    aput v3, v2, v7

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 20
    aget-byte v9, v1, v4

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 21
    aget-byte v3, v1, v4

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v3, v8, [I

    .line 22
    aget-byte v9, v1, v4

    shr-int/2addr v9, v12

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 23
    aget-byte v3, v1, v4

    shr-int/2addr v3, v11

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0xc

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v8, [I

    .line 24
    aget-byte v9, v1, v4

    shr-int/lit8 v5, v9, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 25
    aget-byte v3, v1, v4

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v8, [I

    .line 26
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 27
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 28
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    :cond_6
    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x258

    .line 29
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    :cond_7
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x2

    .line 30
    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 31
    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 32
    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x5

    .line 33
    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x6

    .line 34
    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x7

    .line 35
    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x8

    .line 36
    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x9

    .line 37
    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0xa

    .line 38
    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0xb

    .line 39
    aget-byte v9, v1, v6

    shr-int/2addr v9, v7

    and-int/lit8 v9, v9, 0xf

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    .line 40
    aget-byte v9, v1, v6

    shr-int/2addr v9, v5

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    .line 41
    aget-byte v9, v1, v6

    shr-int/2addr v9, v4

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    .line 42
    aget-byte v6, v1, v6

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    const/16 v6, 0xc

    add-int/lit8 v6, p2, 0xc

    .line 43
    aget-byte v9, v1, v6

    shr-int/2addr v9, v7

    and-int/lit8 v9, v9, 0x7

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    .line 44
    aget-byte v9, v1, v6

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 45
    aget-byte v9, v1, v6

    shr-int/lit8 v5, v9, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    .line 46
    aget-byte v1, v1, v6

    shr-int/2addr v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 47
    :cond_8
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, v1, v4

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_9
    add-int/lit8 v2, p2, 0x3

    .line 48
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x168

    if-eqz v3, :cond_a

    add-int/lit8 v3, p2, 0x2

    .line 49
    aget-byte v3, v1, v3

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0xf

    invoke-static {v3, v1, v7, v4}, Lk0/qt;->j(IIII)V

    goto/16 :goto_a

    .line 50
    :cond_a
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xf00

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    rsub-int v1, v1, 0x1000

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, 0xf

    .line 51
    invoke-static {v2, v1, v8, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :cond_b
    const-string v2, "persist.syu.reversefrontdoor"

    .line 52
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 53
    aget-byte v6, v1, v3

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 54
    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 55
    aget-byte v6, v1, v3

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v8

    aput v6, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 56
    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 57
    aget-byte v6, v1, v3

    shr-int/2addr v6, v5

    and-int/2addr v6, v8

    aput v6, v2, v7

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 58
    aget-byte v6, v1, v3

    shr-int/2addr v6, v4

    and-int/2addr v6, v8

    aput v6, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 59
    aget-byte v5, v1, v3

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v2, v7

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 60
    aget-byte v1, v1, v3

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v2, v7

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 62
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 63
    iput v2, v0, Lk0/xl;->c:I

    move v2, v7

    .line 64
    :goto_6
    iget-object v3, v0, Lk0/xl;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_f

    .line 65
    iget v4, v0, Lk0/xl;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_e

    if-eqz v4, :cond_f

    .line 66
    iput v2, v0, Lk0/xl;->b:I

    goto :goto_7

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v8, :cond_10

    .line 67
    array-length v1, v3

    if-ge v2, v1, :cond_18

    .line 68
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_10
    if-nez v1, :cond_18

    .line 69
    iget v1, v0, Lk0/xl;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_11

    const/16 v2, 0xff

    if-eq v1, v2, :cond_12

    .line 70
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_11
    const/16 v2, 0xff

    .line 71
    :cond_12
    :goto_8
    iput v2, v0, Lk0/xl;->b:I

    goto/16 :goto_a

    :cond_13
    move v2, v6

    add-int/lit8 v3, p2, 0x2

    .line 72
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->b1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 73
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->b1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    add-int/lit8 v3, p2, 0x4

    .line 74
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-static {v3}, Ll0/c0;->b1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    add-int/lit8 v3, p2, 0x5

    .line 75
    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :cond_14
    move v2, v6

    add-int/lit8 v3, p2, 0x2

    .line 76
    aget-byte v6, v1, v3

    and-int/2addr v6, v2

    add-int/lit8 v9, p2, 0x3

    .line 77
    aget-byte v10, v1, v9

    and-int/2addr v10, v2

    add-int/lit8 v11, p2, 0x4

    .line 78
    aget-byte v12, v1, v11

    and-int/2addr v12, v2

    add-int/lit8 v4, p2, 0x5

    .line 79
    aget-byte v13, v1, v4

    and-int/2addr v13, v2

    if-nez v6, :cond_15

    if-nez v10, :cond_15

    if-nez v12, :cond_15

    if-nez v13, :cond_15

    .line 80
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_9

    .line 81
    :cond_15
    sget v2, Ll0/c0;->g:I

    if-ne v2, v6, :cond_16

    sget v2, Ll0/c0;->h:I

    if-ne v2, v10, :cond_16

    sget v2, Ll0/c0;->i:I

    if-ne v2, v12, :cond_16

    sget v2, Ll0/c0;->j:I

    if-eq v2, v13, :cond_17

    .line 82
    :cond_16
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_17

    .line 83
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 84
    sput v5, Ll0/c0;->k:I

    .line 85
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 86
    :cond_17
    :goto_9
    sput v6, Ll0/c0;->g:I

    .line 87
    sput v10, Ll0/c0;->h:I

    .line 88
    sput v12, Ll0/c0;->i:I

    .line 89
    sput v13, Ll0/c0;->j:I

    .line 90
    aget-byte v2, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 91
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 92
    aget-byte v2, v1, v11

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 93
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_18
    :goto_a
    return-void

    nop

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

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/xl;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/xl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/xl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/xl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/xl;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/xl;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/xl;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/xl;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/xl;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v1, p0, Lk0/xl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x74

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

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C_CAMERA_MODE  ==== "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p3, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    array-length p1, p2

    if-lt p1, v3, :cond_5

    const/16 p1, 0x3f5

    new-array p3, v3, [I

    .line 3
    aget v5, p2, v4

    aput v5, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 p3, 0x86

    aput p3, p1, v3

    aput v3, p1, v2

    .line 4
    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "C_CHANGE_PANORAMA  ==== "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    new-array p1, v1, [I

    .line 6
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_2
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/xl;->b3(I)V

    goto :goto_0

    :cond_3
    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v2, p1, v2

    .line 8
    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0x83

    aput p3, p1, v3

    aput v2, p1, v2

    .line 9
    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x86
        0x1
        0x4
    .end array-data
.end method

.method public final b3(I)V
    .locals 6

    .line 1
    iget v0, p0, Lk0/xl;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    iput v0, p0, Lk0/xl;->k:I

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x33

    aput v4, v3, v1

    const/4 v1, 0x4

    aput v1, v3, v2

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput p1, v3, v2

    if-nez v0, :cond_0

    const/16 p1, 0x22

    goto :goto_0

    :cond_0
    const/16 p1, 0xcc

    :goto_0
    aput p1, v3, v1

    const/4 p1, 0x5

    aput v5, v3, p1

    const/4 p1, 0x6

    aput v5, v3, p1

    .line 2
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x4

    const/16 v2, 0x71

    const/16 v3, 0xe3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xa3

    if-eq v0, v9, :cond_7

    const/16 v9, 0xa2

    if-ne v0, v9, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v6

    :cond_1
    if-nez p3, :cond_2

    move-object p3, v6

    .line 2
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0xe

    if-le v0, v6, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    :goto_1
    mul-int/lit8 v9, v0, 0x2

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v9

    add-int/lit8 v10, v10, 0x6

    .line 4
    new-array v10, v10, [I

    .line 5
    aput v3, v10, v7

    .line 6
    aput v2, v10, v8

    add-int v2, v0, v6

    add-int/2addr v2, v4

    .line 7
    aput v2, v10, v5

    .line 8
    aput p1, v10, v4

    .line 9
    aput v0, v10, v1

    move p1, v7

    :goto_2
    if-ge p1, v0, :cond_5

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, v2, 0x6

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 11
    aput v4, v10, v3

    add-int/lit8 v2, v2, 0x5

    and-int/lit16 v1, v1, 0xff

    .line 12
    aput v1, v10, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 p1, v9, 0x5

    .line 13
    aput v6, v10, p1

    :goto_3
    if-ge v7, v0, :cond_6

    .line 14
    invoke-virtual {p3, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 p2, v7, 0x1

    add-int/2addr p2, v9

    add-int/lit8 v1, p2, 0x7

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 15
    aput v2, v10, v1

    add-int/lit8 p2, p2, 0x6

    and-int/lit16 p1, p1, 0xff

    .line 16
    aput p1, v10, p2

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 17
    :cond_6
    invoke-static {v10}, Lz/k;->s([I)V

    goto :goto_9

    :cond_7
    :goto_4
    if-nez p2, :cond_8

    move-object p2, v6

    :cond_8
    if-nez p3, :cond_9

    move-object p3, v6

    .line 18
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x1c

    if-le v0, v6, :cond_a

    move v0, v6

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_5
    const-string v9, "Windows-936"

    .line 19
    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 20
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v6, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    .line 21
    :goto_6
    invoke-virtual {p3, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    add-int v9, v0, v6

    add-int/lit8 v10, v9, 0x6

    .line 22
    new-array v10, v10, [I

    .line 23
    aput v3, v10, v7

    .line 24
    aput v2, v10, v8

    add-int/2addr v9, v4

    .line 25
    aput v9, v10, v5

    .line 26
    aput p1, v10, v4

    .line 27
    aput v0, v10, v1

    move p1, v7

    :goto_7
    if-ge p1, v0, :cond_c

    add-int/lit8 v1, p1, 0x5

    .line 28
    aget-byte v2, p2, p1

    aput v2, v10, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 p1, v0, 0x5

    .line 29
    aput v6, v10, p1

    :goto_8
    if-ge v7, v6, :cond_d

    add-int/lit8 p1, v0, 0x6

    add-int/2addr p1, v7

    .line 30
    aget-byte p2, p3, v7

    aput p2, v10, p1

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 31
    :cond_d
    invoke-static {v10}, Lz/k;->s([I)V

    :goto_9
    return-void
.end method

.method public final h3(BLjava/lang/String;)V
    .locals 9

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x3

    const/16 v2, 0x70

    const/16 v3, 0xe3

    const-string v4, "Unknow"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xa3

    if-eq v0, v8, :cond_4

    const/16 v8, 0xa2

    if-ne v0, v8, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v4

    .line 2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xe

    if-le v0, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    mul-int/lit8 v0, v4, 0x2

    add-int/lit8 v8, v0, 0x4

    .line 3
    new-array v8, v8, [I

    .line 4
    aput v3, v8, v6

    .line 5
    aput v2, v8, v7

    add-int/2addr v0, v7

    .line 6
    aput v0, v8, v5

    .line 7
    aput p1, v8, v1

    :goto_1
    if-ge v6, v4, :cond_3

    .line 8
    invoke-virtual {p2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v0, v6, 0x1

    add-int/lit8 v1, v0, 0x5

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 9
    aput v2, v8, v1

    add-int/lit8 v0, v0, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 10
    aput p1, v8, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {v8}, Lz/k;->s([I)V

    goto :goto_5

    :cond_4
    :goto_2
    if-nez p2, :cond_5

    move-object p2, v4

    .line 12
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x1c

    if-le v0, v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    :goto_3
    const-string v0, "Windows-936"

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    add-int/lit8 v0, v4, 0x4

    .line 14
    new-array v0, v0, [I

    .line 15
    aput v3, v0, v6

    .line 16
    aput v2, v0, v7

    add-int/lit8 v2, v4, 0x1

    .line 17
    aput v2, v0, v5

    .line 18
    aput p1, v0, v1

    :goto_4
    if-ge v6, v4, :cond_7

    add-int/lit8 p1, v6, 0x4

    .line 19
    aget-byte v1, p2, v6

    aput v1, v0, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 20
    :cond_7
    invoke-static {v0}, Lz/k;->s([I)V

    :goto_5
    return-void
.end method
