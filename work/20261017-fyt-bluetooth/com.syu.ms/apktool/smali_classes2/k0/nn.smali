.class public Lk0/nn;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static o:I = 0x4


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Lo1/g0;

.field public final i:I

.field public j:Ljava/lang/Runnable;

.field public k:J

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/nn;->c:I

    const/16 v1, 0x10

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

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/nn;->d:[[I

    .line 4
    iput v0, p0, Lk0/nn;->e:I

    .line 5
    new-instance v0, Lk0/nn$a;

    invoke-direct {v0, p0}, Lk0/nn$a;-><init>(Lk0/nn;)V

    iput-object v0, p0, Lk0/nn;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/nn$b;

    invoke-direct {v0, p0}, Lk0/nn$b;-><init>(Lk0/nn;)V

    iput-object v0, p0, Lk0/nn;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/nn;->h:Lo1/g0;

    .line 8
    iput v4, p0, Lk0/nn;->i:I

    .line 9
    new-instance v0, Lk0/nn$c;

    invoke-direct {v0, p0}, Lk0/nn$c;-><init>(Lk0/nn;)V

    iput-object v0, p0, Lk0/nn;->j:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lk0/nn;->k:J

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lk0/nn;->l:I

    .line 12
    new-instance v0, Lk0/nn$d;

    invoke-direct {v0, p0}, Lk0/nn$d;-><init>(Lk0/nn;)V

    iput-object v0, p0, Lk0/nn;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/nn$e;

    invoke-direct {v0, p0}, Lk0/nn$e;-><init>(Lk0/nn;)V

    iput-object v0, p0, Lk0/nn;->n:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x10
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x11
        0x36
    .end array-data

    :array_b
    .array-data 4
        0x12
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x13
        0x18
    .end array-data

    :array_d
    .array-data 4
        0x14
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x15
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x16
        0x8
    .end array-data
.end method

.method public static synthetic b3(Lk0/nn;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/nn;->h:Lo1/g0;

    return-object p0
.end method

.method public static synthetic c3(Lk0/nn;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/nn;->h3(I)V

    return-void
.end method

.method public static synthetic d3(Lk0/nn;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/nn;->k:J

    return-wide v0
.end method

.method public static synthetic e3(Lk0/nn;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/nn;->k:J

    return-wide p1
.end method

.method public static synthetic f3(Lk0/nn;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/nn;->l:I

    return p0
.end method

.method public static synthetic g3(Lk0/nn;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/nn;->l:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 7

    if-eqz p1, :cond_a

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

    const/16 v3, 0x10

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4
    :pswitch_1
    aget v1, p1, v0

    if-nez v1, :cond_1

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Lk0/nn;->a3(I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    aget p1, p1, v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x5

    .line 7
    invoke-virtual {p0, p1}, Lk0/nn;->a3(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    aget v2, p1, v0

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Lk0/nn;->a3(I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    aget p1, p1, v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x3

    .line 11
    invoke-virtual {p0, p1}, Lk0/nn;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_3
    aget v1, p1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 p1, 0x7

    .line 13
    invoke-virtual {p0, p1}, Lk0/nn;->a3(I)V

    goto/16 :goto_0

    .line 14
    :cond_3
    aget p1, p1, v0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_a

    const/4 p1, 0x6

    .line 15
    invoke-virtual {p0, p1}, Lk0/nn;->a3(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_4
    aget v1, p1, v0

    const/16 v2, 0xc

    if-ne v1, v0, :cond_4

    .line 17
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 18
    invoke-virtual {p0, v2}, Lk0/nn;->a3(I)V

    goto/16 :goto_0

    .line 19
    :cond_4
    aget p1, p1, v0

    if-nez p1, :cond_a

    .line 20
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_a

    .line 21
    invoke-virtual {p0, v2}, Lk0/nn;->a3(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_5
    aget p1, p1, v0

    const/16 v1, 0x9

    if-eqz p1, :cond_5

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_a

    .line 24
    invoke-virtual {p0, v1}, Lk0/nn;->a3(I)V

    goto/16 :goto_0

    .line 25
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v0, :cond_a

    .line 26
    invoke-virtual {p0, v1}, Lk0/nn;->a3(I)V

    goto/16 :goto_0

    .line 27
    :pswitch_6
    aget p1, p1, v0

    const/16 v1, 0x8

    const/16 v2, 0x41

    if-eqz p1, :cond_6

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 29
    invoke-virtual {p0, v1}, Lk0/nn;->a3(I)V

    goto :goto_0

    .line 30
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_a

    .line 31
    invoke-virtual {p0, v1}, Lk0/nn;->a3(I)V

    goto :goto_0

    .line 32
    :pswitch_7
    aget p1, p1, v0

    const/16 v1, 0xd

    if-eqz p1, :cond_7

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 34
    invoke-virtual {p0, v3}, Lk0/nn;->a3(I)V

    goto :goto_0

    .line 35
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_a

    .line 36
    invoke-virtual {p0, v3}, Lk0/nn;->a3(I)V

    goto :goto_0

    .line 37
    :pswitch_8
    aget p1, p1, v0

    const/16 v1, 0xb

    if-eqz p1, :cond_8

    .line 38
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 39
    invoke-virtual {p0, v1}, Lk0/nn;->a3(I)V

    goto :goto_0

    .line 40
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_a

    .line 41
    invoke-virtual {p0, v1}, Lk0/nn;->a3(I)V

    goto :goto_0

    .line 42
    :pswitch_9
    aget p1, p1, v0

    const/16 v1, 0xa

    if-eqz p1, :cond_9

    .line 43
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 44
    invoke-virtual {p0, v0}, Lk0/nn;->a3(I)V

    goto :goto_0

    .line 45
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_a

    .line 46
    invoke-virtual {p0, v0}, Lk0/nn;->a3(I)V

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
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/nn;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nn;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->h:I

    .line 8
    iput v2, v0, Lk0/mt;->i:I

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 11
    :cond_0
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/nn;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    iget-object v0, p0, Lk0/nn;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/nn;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/nn;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/nn;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x13

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
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x15

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v6, :cond_16

    const/16 v10, 0xb

    const/16 v11, 0xa

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    if-eq v2, v5, :cond_c

    if-eq v2, v14, :cond_b

    if-eq v2, v12, :cond_9

    if-eq v2, v11, :cond_7

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 4
    :cond_0
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v4, p2, 0x3

    .line 6
    aget-byte v5, v1, v4

    and-int/2addr v5, v7

    add-int/lit8 v6, p2, 0x4

    .line 7
    aget-byte v10, v1, v6

    and-int/2addr v10, v7

    add-int/lit8 v11, p2, 0x5

    .line 8
    aget-byte v12, v1, v11

    and-int/2addr v12, v7

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-nez v10, :cond_1

    if-nez v12, :cond_1

    .line 9
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 10
    :cond_1
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_2

    sget v8, Ll0/c0;->h:I

    if-ne v8, v5, :cond_2

    sget v8, Ll0/c0;->i:I

    if-ne v8, v10, :cond_2

    sget v8, Ll0/c0;->j:I

    if-eq v8, v12, :cond_3

    .line 11
    :cond_2
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_3

    .line 12
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 13
    sput v14, Ll0/c0;->k:I

    .line 14
    sget-object v8, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v8}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 15
    :cond_3
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 16
    sput v5, Ll0/c0;->h:I

    .line 17
    sput v10, Ll0/c0;->i:I

    .line 18
    sput v12, Ll0/c0;->j:I

    .line 19
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 20
    aget-byte v2, v1, v4

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 21
    aget-byte v2, v1, v6

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 22
    aget-byte v1, v1, v11

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 25
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 26
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    .line 27
    :cond_4
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 28
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-eq v2, v9, :cond_6

    goto/16 :goto_9

    :cond_6
    add-int/lit8 v2, p2, 0x3

    .line 29
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v9

    aget-byte v4, v1, v2

    shr-int/2addr v4, v14

    and-int/2addr v4, v9

    invoke-static {v3, v4, v8}, Ll0/c0;->a(III)V

    .line 30
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v6, [I

    aput v10, v5, v8

    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    aput v1, v5, v9

    const/4 v1, 0x0

    invoke-static {v3, v4, v5, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_7
    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_8

    goto :goto_1

    :cond_8
    move v8, v9

    :goto_1
    const/16 v1, 0x1520

    invoke-static {v2, v3, v8, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 32
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 33
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 34
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 35
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 36
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 37
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 38
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 39
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 40
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_b
    const/16 v2, 0x62

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x2

    .line 41
    aget-byte v10, v1, v10

    and-int/2addr v10, v7

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x3

    .line 42
    aget-byte v11, v1, v10

    shr-int/2addr v11, v8

    and-int/2addr v11, v9

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    .line 43
    aget-byte v11, v1, v10

    shr-int/2addr v11, v9

    and-int/2addr v11, v9

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    .line 44
    aget-byte v11, v1, v10

    shr-int/2addr v11, v6

    and-int/2addr v11, v9

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v11, p2, 0x5

    .line 45
    aget-byte v15, v1, v11

    shr-int/2addr v15, v8

    and-int/lit8 v15, v15, 0xf

    aput v15, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    add-int/lit8 v15, p2, 0x6

    .line 46
    aget-byte v15, v1, v15

    and-int/2addr v7, v15

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    add-int/lit8 v7, p2, 0x7

    .line 47
    aget-byte v15, v1, v7

    shr-int/2addr v15, v4

    and-int/2addr v15, v9

    aput v15, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    .line 48
    aget-byte v15, v1, v7

    shr-int/2addr v15, v12

    and-int/2addr v15, v9

    aput v15, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    .line 49
    aget-byte v15, v1, v7

    shr-int/2addr v15, v14

    and-int/2addr v15, v5

    aput v15, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    .line 50
    aget-byte v15, v1, v10

    shr-int/lit8 v12, v15, 0x6

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    .line 51
    aget-byte v10, v1, v10

    shr-int/2addr v10, v13

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x4

    .line 52
    aget-byte v12, v1, v10

    shr-int/lit8 v6, v12, 0x2

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    .line 53
    aget-byte v6, v1, v10

    shr-int/2addr v6, v9

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    .line 54
    aget-byte v6, v1, v10

    shr-int/2addr v6, v8

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    .line 55
    aget-byte v6, v1, v11

    shr-int/2addr v6, v4

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    .line 56
    aget-byte v6, v1, v11

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v9, [I

    .line 57
    aget-byte v6, v1, v7

    shr-int/lit8 v5, v6, 0x3

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v9, [I

    .line 58
    aget-byte v1, v1, v7

    shr-int/2addr v1, v8

    and-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_c
    new-array v2, v9, [I

    add-int/lit8 v15, p2, 0x2

    .line 59
    aget-byte v16, v1, v15

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v2, v8

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 60
    aget-byte v11, v1, v15

    shr-int/2addr v11, v12

    and-int/2addr v11, v9

    aput v11, v2, v8

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v10, v9, [I

    .line 61
    aget-byte v11, v1, v15

    shr-int/2addr v11, v13

    and-int/2addr v11, v9

    aput v11, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v10, v9, [I

    .line 62
    aget-byte v11, v1, v15

    shr-int/2addr v11, v14

    and-int/2addr v11, v9

    aput v11, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v10, v9, [I

    .line 63
    aget-byte v11, v1, v15

    shr-int/2addr v11, v5

    and-int/2addr v11, v9

    aput v11, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v10, v9, [I

    .line 64
    aget-byte v11, v1, v15

    shr-int/lit8 v6, v11, 0x2

    and-int/2addr v6, v9

    aput v6, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v6, v9, [I

    .line 65
    aget-byte v10, v1, v15

    shr-int/2addr v10, v9

    and-int/2addr v10, v9

    aput v10, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v6, v9, [I

    .line 66
    aget-byte v10, v1, v15

    shr-int/2addr v10, v8

    and-int/2addr v10, v9

    aput v10, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v6, v9, [I

    add-int/lit8 v10, p2, 0x7

    .line 67
    aget-byte v11, v1, v10

    shr-int/2addr v11, v14

    and-int/2addr v11, v5

    aput v11, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v6, v9, [I

    .line 68
    aget-byte v10, v1, v10

    shr-int/2addr v10, v8

    and-int/2addr v5, v10

    aput v5, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 69
    aget-byte v10, v1, v6

    shr-int/lit8 v4, v10, 0x7

    and-int/2addr v4, v9

    aput v4, v5, v8

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v9, [I

    .line 70
    aget-byte v5, v1, v6

    shr-int/2addr v5, v12

    and-int/2addr v5, v9

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v9, [I

    .line 71
    aget-byte v5, v1, v6

    shr-int/2addr v5, v13

    and-int/2addr v5, v9

    aput v5, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 72
    aget-byte v4, v1, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v8

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 73
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v5, 0x20

    const/16 v6, 0x1c

    const/16 v10, 0x1b

    if-eqz v2, :cond_11

    add-int/lit8 v2, p2, 0x4

    .line 74
    aget-byte v11, v1, v2

    and-int/2addr v11, v7

    if-nez v11, :cond_d

    new-array v2, v9, [I

    aput v4, v2, v8

    .line 75
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 76
    :cond_d
    aget-byte v11, v1, v2

    and-int/2addr v11, v7

    if-ne v11, v5, :cond_e

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 77
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    new-array v11, v9, [I

    .line 78
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v11, v8

    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v2, p2, 0x5

    .line 79
    aget-byte v6, v1, v2

    and-int/2addr v6, v7

    if-nez v6, :cond_f

    new-array v1, v9, [I

    aput v4, v1, v8

    .line 80
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 81
    :cond_f
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    if-ne v4, v5, :cond_10

    new-array v1, v9, [I

    aput v3, v1, v8

    .line 82
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_10
    new-array v3, v9, [I

    .line 83
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_11
    add-int/lit8 v2, p2, 0x4

    .line 84
    aget-byte v11, v1, v2

    and-int/2addr v11, v7

    if-nez v11, :cond_12

    new-array v2, v9, [I

    aput v4, v2, v8

    .line 85
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 86
    :cond_12
    aget-byte v11, v1, v2

    and-int/2addr v11, v7

    if-ne v11, v5, :cond_13

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 87
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_13
    new-array v11, v9, [I

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v11, v8

    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0x5

    .line 89
    aget-byte v10, v1, v2

    and-int/2addr v10, v7

    if-nez v10, :cond_14

    new-array v1, v9, [I

    aput v4, v1, v8

    .line 90
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 91
    :cond_14
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    if-ne v4, v5, :cond_15

    new-array v1, v9, [I

    aput v3, v1, v8

    .line 92
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_15
    new-array v3, v9, [I

    .line 93
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 94
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 95
    aget-byte v1, v1, v5

    and-int/2addr v2, v7

    .line 96
    iput v2, v0, Lk0/nn;->c:I

    move v2, v8

    .line 97
    :goto_5
    iget-object v5, v0, Lk0/nn;->d:[[I

    array-length v6, v5

    if-ge v2, v6, :cond_18

    .line 98
    iget v6, v0, Lk0/nn;->c:I

    aget-object v10, v5, v2

    aget v10, v10, v8

    if-ne v6, v10, :cond_17

    if-eqz v6, :cond_18

    .line 99
    iput v2, v0, Lk0/nn;->b:I

    goto :goto_6

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 100
    :cond_18
    :goto_6
    iget v6, v0, Lk0/nn;->c:I

    if-eq v6, v3, :cond_1d

    const/16 v3, 0x16

    if-eq v6, v3, :cond_1b

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_19

    .line 101
    array-length v1, v5

    if-ge v2, v1, :cond_1f

    .line 102
    aget-object v1, v5, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_19
    if-nez v1, :cond_1f

    .line 103
    iget v1, v0, Lk0/nn;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_1a

    if-eq v1, v7, :cond_1a

    .line 104
    aget-object v1, v5, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 105
    :cond_1a
    iput v7, v0, Lk0/nn;->b:I

    goto :goto_9

    :cond_1b
    move v2, v8

    :goto_7
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x8

    if-ge v2, v3, :cond_1c

    .line 106
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 107
    :cond_1c
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_1d
    move v2, v8

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1e

    .line 108
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 109
    :cond_1e
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    :cond_1f
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/nn;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nn;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/nn;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/nn;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/nn;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/nn;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/nn;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/nn;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x75

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

    const-string v6, "FinalCanbus.C_CAMERA_MODE ====  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p3, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 p3, -0x74

    aput p3, p1, v3

    aput v3, p1, v2

    .line 2
    aget p3, p2, v4

    aput p3, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    .line 3
    aget p1, p2, v4

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FinalCanbus.C_CHANGE_PANORAMA ====  "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p2, v4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 5
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, v1, [I

    .line 6
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0x8b

    aput p3, p1, v3

    aput v2, p1, v2

    .line 7
    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [I

    aput v0, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v3, p1, v2

    .line 8
    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 9
    :cond_4
    aget p1, p2, v4

    const/16 v5, 0x17

    if-eq p1, v5, :cond_5

    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0xc6

    aput p3, p1, v3

    aput v2, p1, v2

    .line 10
    aget p3, p2, v4

    aput p3, p1, p4

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_5
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/nn;->h3(I)V

    :cond_6
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x74
        0x1
        0x4
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

    const/16 v5, -0x75

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

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

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final h3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x74

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v2, 0xc6

    aput v2, v1, v0

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x17

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/nn;->o:I

    .line 4
    iget-object p1, p0, Lk0/nn;->h:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/nn;->o:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/nn;->h:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
