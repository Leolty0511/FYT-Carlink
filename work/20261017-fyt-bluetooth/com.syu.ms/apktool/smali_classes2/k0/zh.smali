.class public Lk0/zh;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static u:I = 0xf


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:Z

.field public k:I

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Lo1/g0;

.field public final s:I

.field public t:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/zh;->c:I

    const/16 v1, 0x24

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xf

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v5, 0x10

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v5, 0x11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v5, 0x12

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v5, 0x13

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v5, 0x14

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v5, 0x15

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v5, 0x16

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v5, 0x17

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v5, 0x18

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v5, 0x19

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v5, 0x1b

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v5, 0x1c

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v5, 0x1d

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v5, 0x1e

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v5, 0x1f

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v5, 0x20

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v6, 0x21

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v6, 0x22

    aput-object v3, v1, v6

    new-array v2, v2, [I

    fill-array-data v2, :array_23

    const/16 v3, 0x23

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/zh;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/zh;->e:Z

    .line 5
    iput v0, p0, Lk0/zh;->f:I

    .line 6
    iput-boolean v0, p0, Lk0/zh;->g:Z

    .line 7
    iput v0, p0, Lk0/zh;->h:I

    .line 8
    iput v0, p0, Lk0/zh;->i:I

    .line 9
    iput-boolean v0, p0, Lk0/zh;->j:Z

    .line 10
    iput v0, p0, Lk0/zh;->k:I

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lk0/zh;->l:I

    .line 12
    new-instance v1, Lk0/zh$a;

    invoke-direct {v1, p0}, Lk0/zh$a;-><init>(Lk0/zh;)V

    iput-object v1, p0, Lk0/zh;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lk0/zh$b;

    invoke-direct {v1, p0}, Lk0/zh$b;-><init>(Lk0/zh;)V

    iput-object v1, p0, Lk0/zh;->n:Ljava/lang/Runnable;

    .line 14
    iput v0, p0, Lk0/zh;->o:I

    .line 15
    new-instance v0, Lk0/zh$c;

    invoke-direct {v0, p0}, Lk0/zh$c;-><init>(Lk0/zh;)V

    iput-object v0, p0, Lk0/zh;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/zh$d;

    invoke-direct {v0, p0}, Lk0/zh$d;-><init>(Lk0/zh;)V

    iput-object v0, p0, Lk0/zh;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/zh;->r:Lo1/g0;

    .line 18
    iput v4, p0, Lk0/zh;->s:I

    .line 19
    new-instance v0, Lk0/zh$e;

    invoke-direct {v0, p0}, Lk0/zh$e;-><init>(Lk0/zh;)V

    iput-object v0, p0, Lk0/zh;->t:Ljava/lang/Runnable;

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
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xb
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1e
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x1f
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x15
    .end array-data

    :array_11
    .array-data 4
        0x12
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x3e
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x5
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x9
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x12
    .end array-data

    :array_16
    .array-data 4
        0x18
        0x35
    .end array-data

    :array_17
    .array-data 4
        0x19
        0x16
    .end array-data

    :array_18
    .array-data 4
        0x1a
        0x37
    .end array-data

    :array_19
    .array-data 4
        0x1b
        0x26
    .end array-data

    :array_1a
    .array-data 4
        0x1c
        0x19
    .end array-data

    :array_1b
    .array-data 4
        0x1d
        0x6
    .end array-data

    :array_1c
    .array-data 4
        0x1e
        0x19
    .end array-data

    :array_1d
    .array-data 4
        0x20
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x21
        0x10
    .end array-data

    :array_1f
    .array-data 4
        0x22
        0x1d
    .end array-data

    :array_20
    .array-data 4
        0x23
        0x20
    .end array-data

    :array_21
    .array-data 4
        0x24
        0x21
    .end array-data

    :array_22
    .array-data 4
        0x25
        0x22
    .end array-data

    :array_23
    .array-data 4
        0x26
        0x23
    .end array-data
.end method

.method public static synthetic b3(Lk0/zh;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/zh;->k:I

    return p0
.end method

.method public static synthetic c3(Lk0/zh;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/zh;->k:I

    return p1
.end method

.method public static synthetic d3(Lk0/zh;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/zh;->l:I

    return p0
.end method

.method public static synthetic e3(Lk0/zh;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/zh;->l:I

    return p1
.end method

.method public static synthetic f3(Lk0/zh;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/zh;->r:Lo1/g0;

    return-object p0
.end method

.method public static synthetic g3(Lk0/zh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/zh;->i3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 13

    if-eqz p1, :cond_14

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

    const/4 v4, 0x4

    const/4 v5, 0x5

    if-eq v2, v3, :cond_12

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_10

    const/16 v3, 0x37

    const/16 v7, 0x20

    const/16 v8, 0x12

    const/16 v9, -0x6f

    const/16 v10, 0xe3

    const/4 v11, 0x3

    if-eq v2, v3, :cond_d

    const/16 v3, 0x38

    if-eq v2, v3, :cond_a

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc

    const/16 v7, 0xd

    const/16 v8, 0xb

    const/16 v12, 0xa

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget v2, p1, v6

    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    new-array v2, v5, [I

    aput v10, v2, v0

    aput v9, v2, v6

    aput v1, v2, v1

    const/16 v0, 0x21

    aput v0, v2, v11

    .line 5
    aget p1, p1, v6

    aput p1, v2, v4

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v11}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_1
    aget p1, p1, v6

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_14

    .line 10
    invoke-virtual {p0, v12}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 11
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_14

    .line 12
    invoke-virtual {p0, v12}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_2
    aget p1, p1, v6

    const/16 v0, 0x10

    if-eqz p1, :cond_4

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_14

    .line 15
    invoke-virtual {p0, v3}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 16
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v6, :cond_14

    .line 17
    invoke-virtual {p0, v3}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_3
    aget p1, p1, v6

    const/16 v0, 0x41

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_14

    .line 20
    invoke-virtual {p0, v8}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v6, :cond_14

    .line 22
    invoke-virtual {p0, v8}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_4
    aget p1, p1, v6

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-nez p1, :cond_14

    .line 25
    invoke-virtual {p0, v0}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-ne p1, v6, :cond_14

    .line 27
    invoke-virtual {p0, v0}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 28
    :pswitch_5
    aget p1, p1, v6

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-nez p1, :cond_14

    .line 30
    invoke-virtual {p0, v7}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-ne p1, v6, :cond_14

    .line 32
    invoke-virtual {p0, v7}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 33
    :pswitch_6
    aget p1, p1, v6

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v12

    if-nez p1, :cond_14

    .line 35
    invoke-virtual {p0, v6}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v12

    if-ne p1, v6, :cond_14

    .line 37
    invoke-virtual {p0, v6}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 38
    :cond_9
    aget p1, p1, v6

    if-eqz p1, :cond_14

    const/16 p1, 0xe

    .line 39
    invoke-virtual {p0, p1}, Lk0/zh;->a3(I)V

    goto/16 :goto_0

    .line 40
    :cond_a
    aget v2, p1, v6

    if-gt v2, v8, :cond_b

    new-array p1, v5, [I

    .line 41
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 42
    :cond_b
    aget v2, p1, v6

    if-lt v2, v7, :cond_c

    new-array p1, v5, [I

    .line 43
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_c
    new-array v2, v5, [I

    aput v10, v2, v0

    aput v9, v2, v6

    aput v1, v2, v1

    const/16 v0, 0x25

    aput v0, v2, v11

    .line 44
    aget p1, p1, v6

    mul-int/2addr p1, v1

    aput p1, v2, v4

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    .line 45
    :cond_d
    aget v2, p1, v6

    if-gt v2, v8, :cond_e

    new-array p1, v5, [I

    .line 46
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 47
    :cond_e
    aget v2, p1, v6

    if-lt v2, v7, :cond_f

    new-array p1, v5, [I

    .line 48
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_f
    new-array v2, v5, [I

    aput v10, v2, v0

    aput v9, v2, v6

    aput v1, v2, v1

    const/16 v0, 0x24

    aput v0, v2, v11

    .line 49
    aget p1, p1, v6

    mul-int/2addr p1, v1

    aput p1, v2, v4

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    .line 50
    :cond_10
    aget p1, p1, v6

    if-eqz p1, :cond_11

    const/4 p1, 0x6

    .line 51
    invoke-virtual {p0, p1}, Lk0/zh;->a3(I)V

    goto :goto_0

    :cond_11
    const/4 p1, 0x7

    .line 52
    invoke-virtual {p0, p1}, Lk0/zh;->a3(I)V

    goto :goto_0

    .line 53
    :cond_12
    aget p1, p1, v6

    if-eqz p1, :cond_13

    .line 54
    invoke-virtual {p0, v4}, Lk0/zh;->a3(I)V

    goto :goto_0

    .line 55
    :cond_13
    invoke-virtual {p0, v5}, Lk0/zh;->a3(I)V

    :cond_14
    :goto_0
    return-void

    nop

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

    :array_0
    .array-data 4
        0xe3
        -0x6f
        0x2
        0x25
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x6f
        0x2
        0x25
        0x7f
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x6f
        0x2
        0x24
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x6f
        0x2
        0x24
        0x7f
    .end array-data
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/zh;->r:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget v0, Lk0/nt;->a:I

    const v1, 0x8201c5

    if-eq v0, v1, :cond_1

    const v1, 0xc701c5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x1

    iput v1, v0, Lk0/mt;->e:I

    .line 6
    iput v1, v0, Lk0/mt;->f:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3

    .line 9
    invoke-static {}, La/f;->w()I

    move-result v0

    const/16 v2, 0x438

    if-lt v0, v2, :cond_2

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_2

    .line 11
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 13
    :goto_2
    iget-object v0, p0, Lk0/zh;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/zh;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/zh;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/zh;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v2, p0, Lk0/zh;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
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

    const/16 v3, 0x26

    const/16 v4, 0x21c

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v2, v3, :cond_32

    const/16 v3, 0x27

    const/16 v7, 0xa

    const/4 v8, 0x2

    const/16 v9, 0xff

    const/4 v10, 0x0

    if-eq v2, v3, :cond_30

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x32

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x7d

    const/16 v11, 0x8

    const/4 v12, 0x4

    if-eq v2, v3, :cond_29

    const/16 v3, 0x12

    const/16 v4, 0xb

    const/16 v13, 0xc

    const/4 v14, 0x5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_0
    const/16 v2, 0x8e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v6

    aput v7, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v6, [I

    .line 3
    aget-byte v7, v1, v4

    shr-int/2addr v7, v8

    and-int/2addr v7, v6

    aput v7, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v6, [I

    .line 4
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 5
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 6
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v6, [I

    .line 7
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v5

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 8
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x3

    .line 9
    aget-byte v3, v1, v3

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x4

    .line 10
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x5

    .line 11
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    add-int/lit8 v7, p2, 0x6

    .line 12
    aget-byte v7, v1, v7

    and-int/2addr v7, v9

    add-int/lit8 v8, p2, 0x7

    .line 13
    aget-byte v8, v1, v8

    and-int/2addr v8, v9

    add-int/lit8 v12, p2, 0x8

    .line 14
    aget-byte v1, v1, v12

    and-int/2addr v1, v9

    const/16 v12, 0x69

    new-array v13, v6, [I

    aput v2, v13, v10

    .line 15
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v12, v6, [I

    and-int/2addr v3, v9

    and-int/lit8 v4, v4, 0xf

    shl-int/2addr v4, v11

    or-int/2addr v3, v4

    aput v3, v12, v10

    .line 16
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    and-int/lit16 v4, v5, 0xff

    and-int/lit16 v5, v7, 0xff

    shl-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v10

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    and-int/lit8 v4, v8, 0x7

    aput v4, v3, v10

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    shr-int/lit8 v4, v8, 0x3

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v10

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v6, [I

    shr-int/lit8 v4, v8, 0x6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v10

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    shr-int/lit8 v4, v8, 0x7

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v10

    .line 21
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    and-int/lit8 v1, v1, 0x7

    aput v1, v3, v10

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    const/16 v3, 0x6b

    new-array v4, v6, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v6

    aput v7, v4, v10

    .line 24
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v6, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v6

    aput v7, v4, v10

    .line 25
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v4, v6, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v6

    aput v7, v4, v10

    .line 26
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v6, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v6

    aput v7, v4, v10

    .line 27
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x87

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 28
    aget-byte v11, v1, v7

    shr-int/2addr v11, v14

    and-int/lit8 v11, v11, 0x7

    aput v11, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x88

    new-array v4, v6, [I

    .line 29
    aget-byte v11, v1, v7

    shr-int/2addr v11, v12

    and-int/2addr v11, v6

    aput v11, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x89

    new-array v4, v6, [I

    .line 30
    aget-byte v11, v1, v7

    shr-int/2addr v11, v5

    and-int/2addr v11, v6

    aput v11, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8a

    new-array v4, v6, [I

    .line 31
    aget-byte v11, v1, v7

    shr-int/2addr v11, v8

    and-int/2addr v11, v6

    aput v11, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8b

    new-array v4, v6, [I

    .line 32
    aget-byte v11, v1, v7

    shr-int/2addr v11, v6

    and-int/2addr v11, v6

    aput v11, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8c

    new-array v4, v6, [I

    .line 33
    aget-byte v7, v1, v7

    shr-int/2addr v7, v10

    and-int/2addr v7, v6

    aput v7, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x92

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 34
    aget-byte v11, v1, v7

    shr-int/2addr v11, v12

    and-int/2addr v11, v6

    aput v11, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x93

    new-array v4, v6, [I

    .line 35
    aget-byte v11, v1, v7

    shr-int/2addr v11, v5

    and-int/2addr v11, v6

    aput v11, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8d

    new-array v4, v6, [I

    .line 36
    aget-byte v7, v1, v7

    shr-int/2addr v7, v10

    and-int/lit8 v7, v7, 0x7

    aput v7, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x94

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 37
    aget-byte v11, v1, v7

    shr-int/2addr v11, v12

    and-int/lit8 v11, v11, 0x7

    aput v11, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x95

    new-array v4, v6, [I

    .line 38
    aget-byte v7, v1, v7

    shr-int/2addr v7, v10

    and-int/lit8 v7, v7, 0xf

    aput v7, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 39
    iget v3, v0, Lk0/zh;->i:I

    shr-int/2addr v2, v6

    and-int/2addr v2, v6

    if-eq v3, v2, :cond_1

    .line 40
    iput v2, v0, Lk0/zh;->i:I

    .line 41
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    .line 42
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_0

    .line 44
    :cond_0
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-static {}, Lk0/qt;->f()V

    :cond_1
    :goto_0
    add-int/lit8 v2, p2, 0x3

    .line 46
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    and-int/lit8 v1, v1, 0xf

    .line 47
    iget v2, v0, Lk0/zh;->h:I

    if-eq v2, v1, :cond_33

    .line 48
    iput v1, v0, Lk0/zh;->h:I

    .line 49
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "com.syu.fourcamera2"

    if-eqz v1, :cond_a

    if-eq v1, v8, :cond_8

    if-eq v1, v5, :cond_6

    if-eq v1, v12, :cond_4

    if-eq v1, v14, :cond_2

    goto/16 :goto_7

    .line 50
    :cond_2
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    iput-boolean v6, v0, Lk0/zh;->g:Z

    .line 52
    :cond_3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x254

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_7

    .line 53
    :cond_4
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 54
    iput-boolean v6, v0, Lk0/zh;->g:Z

    .line 55
    :cond_5
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x253

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_7

    .line 56
    :cond_6
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 57
    iput-boolean v6, v0, Lk0/zh;->g:Z

    .line 58
    :cond_7
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x250

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_7

    .line 59
    :cond_8
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 60
    iput-boolean v6, v0, Lk0/zh;->g:Z

    .line 61
    :cond_9
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24f

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_7

    .line 62
    :cond_a
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-boolean v1, v0, Lk0/zh;->g:Z

    if-eqz v1, :cond_33

    .line 63
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_7

    :cond_b
    if-le v1, v6, :cond_c

    if-gt v1, v14, :cond_c

    .line 64
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    .line 65
    :cond_c
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 67
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_d

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v10

    .line 68
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v10

    .line 69
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_d
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v10

    .line 70
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v10

    .line 71
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v10

    .line 72
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v10

    .line 73
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v2, v10

    .line 74
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x3

    .line 76
    aget-byte v3, v1, v3

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x4

    .line 77
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x5

    .line 78
    aget-byte v1, v1, v5

    and-int/2addr v1, v9

    if-nez v2, :cond_e

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    if-nez v1, :cond_e

    .line 79
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_2

    .line 80
    :cond_e
    sget v5, Ll0/c0;->g:I

    if-ne v5, v2, :cond_f

    sget v5, Ll0/c0;->h:I

    if-ne v5, v3, :cond_f

    sget v5, Ll0/c0;->i:I

    if-ne v5, v4, :cond_f

    sget v5, Ll0/c0;->j:I

    if-eq v5, v1, :cond_10

    .line 81
    :cond_f
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_10

    .line 82
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 83
    sput v12, Ll0/c0;->k:I

    .line 84
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 85
    :cond_10
    :goto_2
    sput v2, Ll0/c0;->g:I

    .line 86
    sput v3, Ll0/c0;->h:I

    .line 87
    sput v4, Ll0/c0;->i:I

    .line 88
    sput v1, Ll0/c0;->j:I

    and-int/2addr v2, v9

    .line 89
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    and-int/lit16 v2, v3, 0xff

    .line 90
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    and-int/lit16 v2, v4, 0xff

    .line 91
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    and-int/2addr v1, v9

    .line 92
    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 93
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 94
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 95
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 96
    aget-byte v1, v1, v5

    and-int/2addr v2, v9

    .line 97
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    and-int/lit16 v2, v3, 0xff

    .line 98
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    and-int/lit16 v2, v4, 0xff

    .line 99
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    and-int/2addr v1, v9

    .line 100
    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 101
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    add-int/lit8 v5, p2, 0x3

    .line 102
    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    add-int/lit8 v8, p2, 0x4

    .line 103
    aget-byte v11, v1, v8

    and-int/2addr v11, v9

    add-int/lit8 v12, p2, 0x5

    .line 104
    aget-byte v15, v1, v12

    and-int/2addr v15, v9

    new-array v14, v6, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v10

    .line 105
    invoke-static {v7, v14}, Lk0/qt;->y0(I[I)V

    new-array v7, v6, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v6

    aput v14, v7, v10

    .line 106
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    new-array v4, v6, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v6

    aput v7, v4, v10

    .line 107
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v7, v6, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v6

    aput v13, v7, v10

    .line 108
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v7, v6, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v6

    aput v13, v7, v10

    .line 109
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v7, v6, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v6

    aput v13, v7, v10

    .line 110
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v7, v6, [I

    and-int/2addr v2, v6

    aput v2, v7, v10

    .line 111
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v5, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v10

    .line 112
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    shr-int/lit8 v4, v5, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v10

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    shr-int/lit8 v4, v5, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v10

    .line 114
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    and-int/lit8 v4, v5, 0xf

    aput v4, v3, v10

    .line 115
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 116
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 117
    aget-byte v2, v1, v12

    and-int/lit16 v11, v2, 0xff

    .line 118
    aget-byte v1, v1, v8

    and-int/lit16 v15, v1, 0xff

    :cond_11
    const/4 v1, -0x3

    const/4 v2, -0x2

    const/16 v3, 0x7f

    if-eqz v11, :cond_14

    if-eq v11, v3, :cond_13

    if-lt v11, v6, :cond_12

    const/16 v4, 0x7e

    if-gt v11, v4, :cond_12

    const/4 v4, 0x5

    mul-int/2addr v11, v4

    goto :goto_3

    :cond_12
    const/4 v11, -0x1

    goto :goto_3

    :cond_13
    move v11, v1

    goto :goto_3

    :cond_14
    move v11, v2

    :goto_3
    const/16 v4, 0x1b

    new-array v5, v6, [I

    aput v11, v5, v10

    .line 119
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    if-eqz v15, :cond_16

    if-eq v15, v3, :cond_17

    if-lt v15, v6, :cond_15

    const/16 v1, 0x7e

    if-gt v15, v1, :cond_15

    const/4 v1, 0x5

    mul-int/2addr v1, v15

    goto :goto_4

    :cond_15
    const/4 v1, -0x1

    goto :goto_4

    :cond_16
    move v1, v2

    :cond_17
    :goto_4
    const/16 v2, 0x1c

    new-array v3, v6, [I

    aput v1, v3, v10

    .line 120
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 121
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 122
    aget-byte v1, v1, v5

    and-int/2addr v2, v9

    .line 123
    iput v2, v0, Lk0/zh;->c:I

    move v2, v10

    .line 124
    :goto_5
    iget-object v5, v0, Lk0/zh;->d:[[I

    array-length v7, v5

    if-ge v2, v7, :cond_19

    .line 125
    iget v7, v0, Lk0/zh;->c:I

    aget-object v11, v5, v2

    aget v11, v11, v10

    if-ne v7, v11, :cond_18

    if-eqz v7, :cond_19

    .line 126
    iput v2, v0, Lk0/zh;->b:I

    goto :goto_6

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 127
    :cond_19
    :goto_6
    iget v7, v0, Lk0/zh;->c:I

    const/16 v11, 0x19

    if-eq v7, v4, :cond_26

    if-eq v7, v13, :cond_21

    if-eq v7, v3, :cond_1e

    const/16 v3, 0x17

    if-eq v7, v3, :cond_1d

    const/16 v3, 0x1f

    if-eq v7, v3, :cond_1c

    and-int/2addr v1, v9

    if-eqz v1, :cond_1a

    .line 128
    array-length v1, v5

    if-ge v2, v1, :cond_33

    .line 129
    aget-object v1, v5, v2

    aget v1, v1, v6

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 130
    :cond_1a
    iget v1, v0, Lk0/zh;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_1b

    if-eq v1, v9, :cond_1b

    .line 131
    aget-object v1, v5, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 132
    :cond_1b
    iput v9, v0, Lk0/zh;->b:I

    goto/16 :goto_7

    :cond_1c
    if-ne v1, v6, :cond_33

    .line 133
    sget-object v1, La/b;->y:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 134
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_7

    :cond_1d
    if-ne v1, v6, :cond_33

    .line 135
    sget-object v1, La/b;->A:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 136
    invoke-static {}, Lo1/u;->c1()I

    goto/16 :goto_7

    :cond_1e
    if-ne v1, v6, :cond_33

    .line 137
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_33

    .line 138
    sget v1, Lu0/b;->j:I

    if-ne v1, v6, :cond_1f

    .line 139
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    .line 140
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    .line 141
    :cond_1f
    sget-object v1, La/b;->C:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 142
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_7

    .line 143
    :cond_20
    sget-object v1, La/b;->C:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 144
    invoke-static {}, Lo1/u;->k()V

    goto/16 :goto_7

    .line 145
    :cond_21
    iget v2, v0, Lk0/zh;->f:I

    if-eq v2, v1, :cond_33

    .line 146
    iput v1, v0, Lk0/zh;->f:I

    if-ne v1, v6, :cond_22

    .line 147
    iput-boolean v10, v0, Lk0/zh;->e:Z

    goto/16 :goto_7

    :cond_22
    if-ne v1, v8, :cond_23

    .line 148
    iput-boolean v6, v0, Lk0/zh;->e:Z

    .line 149
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    .line 150
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_23
    if-nez v1, :cond_33

    .line 151
    iget-boolean v1, v0, Lk0/zh;->e:Z

    if-nez v1, :cond_25

    .line 152
    sget v1, Lu0/b;->j:I

    if-ne v1, v6, :cond_24

    .line 153
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    .line 154
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 155
    :cond_24
    invoke-static {v13, v10}, Ll0/b0;->l0(II)V

    .line 156
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 157
    :cond_25
    iput-boolean v10, v0, Lk0/zh;->e:Z

    goto/16 :goto_7

    :cond_26
    if-ne v1, v6, :cond_33

    .line 158
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_33

    .line 159
    sget v1, Lu0/b;->j:I

    if-ne v1, v6, :cond_27

    .line 160
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    .line 161
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    .line 162
    :cond_27
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 163
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_7

    .line 164
    :cond_28
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 165
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_7

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 166
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    if-eq v2, v6, :cond_2c

    if-eq v2, v5, :cond_2b

    if-eq v2, v11, :cond_2a

    goto/16 :goto_7

    :cond_2a
    add-int/lit8 v2, p2, 0x3

    .line 167
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 168
    aget-byte v1, v1, v3

    .line 169
    invoke-static {v2, v1, v6, v4}, Lk0/qt;->i(IIZI)V

    .line 170
    iput-boolean v6, v0, Lk0/zh;->j:Z

    goto/16 :goto_7

    :cond_2b
    add-int/lit8 v2, p2, 0x4

    .line 171
    aget-byte v2, v1, v2

    shl-int/2addr v2, v11

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v9

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v6, [I

    aput v1, v3, v10

    .line 172
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 173
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v8, [I

    aput v6, v4, v10

    aput v1, v4, v6

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2c
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 174
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2d

    add-int/lit8 v2, p2, 0x3

    .line 175
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v6

    invoke-static {v3, v1, v10}, Ll0/c0;->b(III)V

    goto/16 :goto_7

    :cond_2d
    add-int/lit8 v2, p2, 0x3

    .line 176
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v6

    invoke-static {v3, v1, v10}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :cond_2e
    add-int/lit8 v2, p2, 0x2

    .line 177
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_7

    :pswitch_8
    const-string v1, "\u65e0\u6cd5\u542f\u52a8\uff0c\u8bf7\u8054\u7cfb\u670d\u52a1\u5e97\u7ef4\u4fee\u5176"

    .line 178
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_9
    const-string v1, "\u71c3\u6cb9\u4e0d\u8db3\uff0c\u662f\u5426\u5bfc\u822a\u81f3\u52a0\u6cb9\u7ad9"

    .line 179
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_a
    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u5b89\u5168\uff0c\u8bf7\u7cfb\u597d\u5b89\u5168\u5e26"

    .line 180
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_b
    const-string v1, "\u5b66\u4e60\u5b8c\u6bd5"

    .line 181
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_c
    const-string v1, "\u75b2\u52b3\u9884\u8b66\u7cfb\u7edf\u5df2\u8fdb\u5165\u5de5\u4f5c\u6a21\u5f0f"

    .line 182
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_d
    const-string v1, "\u75b2\u52b3\u9884\u8b66\u7cfb\u7edf\u5df2\u8fdb\u5165\u6f14\u793a\u6a21\u5f0f"

    .line 183
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_e
    const-string v1, "\u75b2\u52b3\u9884\u8b66\u7cfb\u7edf\u5df2\u5173\u95ed"

    .line 184
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_f
    const-string v1, "\u75b2\u52b3\u9884\u8b66\u7cfb\u7edf\u5df2\u5f00\u542f"

    .line 185
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_10
    const-string v1, "\u81ea\u52a8\u706f\u5149\u5df2\u5173\u95ed"

    .line 186
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_11
    const-string v1, "\u81ea\u52a8\u706f\u5149\u5df2\u5f00\u542f"

    .line 187
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_12
    const-string v1, "\u8bf7\u4e13\u5fc3\u9a7e\u9a76"

    .line 188
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_13
    const-string v1, "\u8bf7\u8f7b\u8f7b\u8f6c\u52a8\u65b9\u5411\u76d8\uff0c\u518d\u5c1d\u8bd5\u542f\u52a8"

    .line 189
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_14
    const-string v1, "\u94a5\u5319\u7535\u6c60\u7535\u91cf\u4f4e\uff0c\u8bf7\u53ca\u65f6\u66f4\u6362"

    .line 190
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_15
    const-string v1, "\u8bf7\u5173\u597d\u8f66\u95e8"

    .line 191
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_16
    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u7231\u8f66\uff0c\u8bf7\u89e3\u9664\u9a7b\u8f66\u5236\u52a8"

    .line 192
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_17
    const-string v1, "\u8bf7\u786e\u8ba4\u94a5\u5319\u662f\u5426\u5728\u8f66\u5185"

    .line 193
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_18
    const-string v1, "\u8bf7\u5c06\u94a5\u5319\u7d27\u8d34\u542f\u52a8\u6309\u94ae"

    .line 194
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_19
    const-string v1, "\u8bf7\u505c\u6b62\u8f66\u8f86\u518d\u6309\u542f\u52a8\u6309\u94ae"

    .line 195
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_1a
    const-string v1, "\u8bf7\u5e38\u6309\u542f\u52a8\u6309\u94ae\u9000\u7535"

    .line 196
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_1b
    const-string v1, "\u8bf7\u5c06\u6863\u4f4d\u5207\u6362\u81f3 P \u6863\u57df"

    .line 197
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_1c
    const-string v1, "\u8bf7\u5e38\u6309\u542f\u52a8\u6309\u94ae\u542f\u52a8"

    .line 198
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_1d
    const-string v1, "\u84c4\u7535\u6c60\u7535\u538b\u4f4e\uff0c\u4e09\u5206\u949f\u540e\u5c06\u5173\u95ed\u591a\u5a92\u4f53\u7cfb\u7edf"

    .line 199
    invoke-virtual {v0, v1}, Lk0/zh;->h3(Ljava/lang/String;)V

    goto :goto_7

    .line 200
    :cond_2f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_7

    :cond_30
    add-int/lit8 v2, p2, 0x2

    .line 201
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    const/16 v2, 0x58

    if-lt v1, v2, :cond_31

    const/16 v2, 0xd5

    if-gt v1, v2, :cond_31

    mul-int/2addr v1, v7

    add-int/lit16 v1, v1, -0x118

    .line 202
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_7

    .line 203
    :cond_31
    invoke-static {v10}, Lu0/d;->A3(I)V

    goto :goto_7

    :cond_32
    add-int/lit8 v2, p2, 0x2

    .line 204
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 205
    aget-byte v1, v1, v3

    .line 206
    iget-boolean v3, v0, Lk0/zh;->j:Z

    if-nez v3, :cond_33

    .line 207
    invoke-static {v2, v1, v6, v4}, Lk0/qt;->i(IIZI)V

    :cond_33
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/zh;->r:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/zh;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/zh;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/zh;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/zh;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lk0/zh;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x98

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

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_5

    const/4 v5, 0x6

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, p4, :cond_2

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2
    aget p1, p2, v2

    if-ne p1, v0, :cond_1

    .line 3
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/zh;->i3(I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x94

    aput p3, p1, v4

    aput v3, p1, v3

    .line 4
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 5
    :cond_2
    invoke-static {v5, v2}, Ll0/b0;->l0(II)V

    .line 6
    invoke-static {v5, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x93

    aput p3, p1, v4

    aput v3, p1, v3

    .line 8
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p3, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v0, p1, v3

    .line 10
    aget p3, p2, v2

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v3

    aput p3, p1, p4

    aget p2, p2, v1

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x92

    aput p3, p1, v4

    aput v3, p1, v3

    .line 12
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x91

    aput p3, p1, v4

    aput v3, p1, v3

    .line 14
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, -0x6f

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0xc8

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final h3(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.execute_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "raw_text"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.syu.voice"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final i3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/zh;->u:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x91

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0x94

    aput v3, v1, v0

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v3, 0x3

    const/4 v4, 0x4

    aput v4, v1, v3

    aput p1, v1, v4

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/zh;->r:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/zh;->u:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/zh;->r:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
