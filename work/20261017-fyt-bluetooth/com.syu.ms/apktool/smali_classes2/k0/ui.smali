.class public Lk0/ui;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:F

.field public j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ui;->c:I

    const/16 v1, 0x8

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

    iput-object v1, p0, Lk0/ui;->d:[[I

    .line 4
    iput v0, p0, Lk0/ui;->f:I

    new-array v1, v9, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_8

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v7

    new-array v2, v2, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v8

    iput-object v1, p0, Lk0/ui;->g:[[I

    .line 6
    iput v0, p0, Lk0/ui;->h:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lk0/ui;->i:F

    const/16 v0, 0xff

    .line 8
    iput v0, p0, Lk0/ui;->j:I

    .line 9
    iput v0, p0, Lk0/ui;->k:I

    .line 10
    new-instance v0, Lk0/ui$a;

    invoke-direct {v0, p0}, Lk0/ui$a;-><init>(Lk0/ui;)V

    iput-object v0, p0, Lk0/ui;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/ui$b;

    invoke-direct {v0, p0}, Lk0/ui$b;-><init>(Lk0/ui;)V

    iput-object v0, p0, Lk0/ui;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/ui$c;

    invoke-direct {v0, p0}, Lk0/ui$c;-><init>(Lk0/ui;)V

    iput-object v0, p0, Lk0/ui;->n:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x15
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_9
    .array-data 4
        0x4
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x7
        0x1e
    .end array-data

    :array_d
    .array-data 4
        0x8
        0x1f
    .end array-data

    :array_e
    .array-data 4
        0x9
        0xb
    .end array-data
.end method

.method public static synthetic c3(Lk0/ui;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/ui;->i:F

    return p0
.end method

.method public static synthetic d3(Lk0/ui;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/ui;->i:F

    return p1
.end method

.method public static synthetic e3(Lk0/ui;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ui;->k:I

    return p0
.end method

.method public static synthetic f3(Lk0/ui;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ui;->k:I

    return p1
.end method

.method public static synthetic g3(Lk0/ui;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ui;->j:I

    return p0
.end method

.method public static synthetic h3(Lk0/ui;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ui;->j:I

    return p1
.end method

.method public static synthetic i3(Lk0/ui;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/ui;->b3(BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 11

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

    if-eq v2, v3, :cond_f

    const/16 v3, 0x2a

    const/16 v4, 0x10

    if-eq v2, v3, :cond_d

    const/16 v3, 0x3b

    const/4 v5, 0x6

    const/16 v7, 0xa

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/16 v10, 0xb

    if-eq v2, v3, :cond_8

    const/4 v1, 0x4

    const/16 v3, 0xc

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget v0, p1, v6

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 p1, 0xd

    .line 5
    invoke-virtual {p0, p1}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    aget p1, p1, v6

    const/4 v0, -0x2

    if-ne p1, v0, :cond_11

    .line 7
    invoke-virtual {p0, v3}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_1
    aget v0, p1, v6

    if-ne v0, v6, :cond_2

    .line 9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_11

    .line 10
    invoke-virtual {p0, v9}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 11
    :cond_2
    aget p1, p1, v6

    if-nez p1, :cond_11

    .line 12
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_11

    .line 13
    invoke-virtual {p0, v9}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_2
    aget p1, p1, v6

    if-eqz p1, :cond_3

    .line 15
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_11

    .line 16
    invoke-virtual {p0, v5}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 17
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v6, :cond_11

    .line 18
    invoke-virtual {p0, v5}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 19
    :pswitch_3
    aget p1, p1, v6

    const/16 v0, 0x41

    if-eqz p1, :cond_4

    .line 20
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_11

    .line 21
    invoke-virtual {p0, v8}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 22
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v6, :cond_11

    .line 23
    invoke-virtual {p0, v8}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 24
    :pswitch_4
    aget p1, p1, v6

    if-eqz p1, :cond_5

    .line 25
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-nez p1, :cond_11

    .line 26
    invoke-virtual {p0, v1}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 27
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-ne p1, v6, :cond_11

    .line 28
    invoke-virtual {p0, v1}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 29
    :pswitch_5
    aget p1, p1, v6

    if-eqz p1, :cond_6

    .line 30
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-nez p1, :cond_11

    .line 31
    invoke-virtual {p0, v6}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 32
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-ne p1, v6, :cond_11

    .line 33
    invoke-virtual {p0, v6}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 34
    :pswitch_6
    aget p1, p1, v6

    if-eqz p1, :cond_7

    .line 35
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-nez p1, :cond_11

    .line 36
    invoke-virtual {p0, v1}, Lk0/ui;->a3(I)V

    goto/16 :goto_0

    .line 37
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-ne p1, v6, :cond_11

    .line 38
    invoke-virtual {p0, v0}, Lk0/ui;->a3(I)V

    goto :goto_0

    .line 39
    :cond_8
    aget p1, p1, v6

    if-eq p1, v6, :cond_c

    if-eq p1, v1, :cond_b

    if-eq p1, v9, :cond_a

    if-eq p1, v8, :cond_9

    goto :goto_0

    .line 40
    :cond_9
    iget p1, p0, Lk0/ui;->h:I

    if-eq p1, v5, :cond_11

    .line 41
    invoke-virtual {p0, v10}, Lk0/ui;->a3(I)V

    goto :goto_0

    .line 42
    :cond_a
    iget p1, p0, Lk0/ui;->h:I

    if-eq p1, v9, :cond_11

    const/16 p1, 0x9

    .line 43
    invoke-virtual {p0, p1}, Lk0/ui;->a3(I)V

    goto :goto_0

    .line 44
    :cond_b
    iget p1, p0, Lk0/ui;->h:I

    if-eq p1, v6, :cond_11

    const/16 p1, 0x8

    .line 45
    invoke-virtual {p0, p1}, Lk0/ui;->a3(I)V

    goto :goto_0

    .line 46
    :cond_c
    iget p1, p0, Lk0/ui;->h:I

    if-eq p1, v1, :cond_11

    .line 47
    invoke-virtual {p0, v7}, Lk0/ui;->a3(I)V

    goto :goto_0

    .line 48
    :cond_d
    aget v0, p1, v6

    if-nez v0, :cond_e

    const/16 p1, 0x11

    .line 49
    invoke-virtual {p0, p1}, Lk0/ui;->a3(I)V

    goto :goto_0

    .line 50
    :cond_e
    aget p1, p1, v6

    if-ne p1, v6, :cond_11

    .line 51
    invoke-virtual {p0, v4}, Lk0/ui;->a3(I)V

    goto :goto_0

    .line 52
    :cond_f
    aget v0, p1, v6

    if-nez v0, :cond_10

    const/16 p1, 0xf

    .line 53
    invoke-virtual {p0, p1}, Lk0/ui;->a3(I)V

    goto :goto_0

    .line 54
    :cond_10
    aget p1, p1, v6

    if-ne p1, v6, :cond_11

    const/16 p1, 0xe

    .line 55
    invoke-virtual {p0, p1}, Lk0/ui;->a3(I)V

    :cond_11
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
    iput v2, v0, Lk0/mt;->p:I

    .line 7
    iput v2, v0, Lk0/mt;->j:I

    .line 8
    iput v2, v0, Lk0/mt;->o:I

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
    iput v1, v0, Lk0/mt;->q:I

    .line 12
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v0, p0, Lk0/ui;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/ui;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/ui;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x13

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
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1f

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x6

    if-eq v2, v11, :cond_12

    const/4 v14, -0x2

    const/16 v15, 0x9

    const/16 v8, 0x7f

    const/16 v7, 0xa

    const/4 v13, 0x2

    if-eq v2, v9, :cond_9

    if-eq v2, v12, :cond_6

    if-eq v2, v10, :cond_5

    if-eq v2, v15, :cond_4

    if-eq v2, v7, :cond_2

    const/16 v8, 0x70

    if-eq v2, v8, :cond_1

    const/16 v3, 0x71

    if-eq v2, v3, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1
    const/16 v2, 0x6e

    new-array v9, v6, [I

    add-int/lit8 v10, p2, 0x2

    .line 3
    aget-byte v10, v1, v10

    and-int/2addr v10, v4

    aput v10, v9, v5

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v9, v6, [I

    add-int/lit8 v10, p2, 0x3

    .line 4
    aget-byte v10, v1, v10

    and-int/2addr v10, v4

    aput v10, v9, v5

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v9, p2, 0x4

    .line 5
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v2, v5

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x5

    .line 6
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x6

    .line 7
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x7

    .line 8
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x8

    .line 9
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/2addr v3, v9

    aput v3, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x9

    .line 10
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0xa

    .line 11
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_2
    add-int/lit8 v2, p2, 0x3

    .line 12
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    const-string v2, "persist.syu.reversefrontdoor"

    .line 13
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 14
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 15
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 16
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 17
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 18
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 19
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 20
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 21
    aget-byte v1, v1, v2

    const/16 v2, 0x80

    invoke-static {v1, v5, v2, v6, v8}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_c

    :cond_5
    const/16 v2, 0x63

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 22
    aget-byte v7, v1, v7

    shr-int/2addr v7, v12

    and-int/2addr v7, v3

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 23
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 24
    aget-byte v8, v1, v7

    shr-int/2addr v8, v12

    and-int/2addr v8, v3

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v6, [I

    .line 25
    aget-byte v8, v1, v7

    shr-int/2addr v8, v11

    and-int/2addr v8, v3

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v6, [I

    .line 26
    aget-byte v8, v1, v7

    shr-int/2addr v8, v3

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v4, v6, [I

    .line 27
    aget-byte v7, v1, v7

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 28
    aget-byte v8, v1, v7

    shr-int/2addr v8, v12

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v6, [I

    .line 29
    aget-byte v8, v1, v7

    shr-int/2addr v8, v3

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v6, [I

    .line 30
    aget-byte v7, v1, v7

    shr-int/2addr v7, v13

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v6, [I

    add-int/lit8 v6, p2, 0x6

    .line 31
    aget-byte v1, v1, v6

    shr-int/2addr v1, v9

    and-int/2addr v1, v3

    aput v1, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_6
    const/16 v2, 0x2a

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 32
    aget-byte v13, v1, v7

    shr-int/2addr v13, v10

    and-int/2addr v13, v6

    aput v13, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v6, [I

    .line 33
    aget-byte v13, v1, v7

    shr-int/2addr v13, v12

    and-int/2addr v13, v6

    aput v13, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v6, [I

    .line 34
    aget-byte v13, v1, v7

    shr-int/lit8 v9, v13, 0x5

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v6, [I

    .line 35
    aget-byte v7, v1, v7

    and-int/lit8 v7, v7, 0xf

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 36
    aget-byte v9, v1, v7

    shr-int/2addr v9, v10

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v6, [I

    .line 37
    aget-byte v7, v1, v7

    shr-int/2addr v7, v12

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 38
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    const/16 v2, 0x28

    if-nez v1, :cond_7

    new-array v1, v6, [I

    aput v14, v1, v5

    .line 39
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_7
    if-ne v1, v8, :cond_8

    new-array v1, v6, [I

    const/4 v3, -0x3

    aput v3, v1, v5

    .line 40
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_8
    new-array v3, v6, [I

    aput v1, v3, v5

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_9
    new-array v2, v6, [I

    add-int/lit8 v17, p2, 0x2

    .line 42
    aget-byte v18, v1, v17

    shr-int/lit8 v18, v18, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v2, v5

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v7, v6, [I

    .line 43
    aget-byte v19, v1, v17

    shr-int/lit8 v19, v19, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v7, v6, [I

    .line 44
    aget-byte v19, v1, v17

    shr-int/lit8 v19, v19, 0x5

    and-int/lit8 v19, v19, 0x1

    aput v19, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v7, v6, [I

    .line 45
    aget-byte v19, v1, v17

    shr-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v7, v6, [I

    .line 46
    aget-byte v19, v1, v17

    shr-int/lit8 v19, v19, 0x2

    and-int/lit8 v19, v19, 0x3

    aput v19, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v7, v6, [I

    .line 47
    aget-byte v19, v1, v17

    shr-int/lit8 v19, v19, 0x1

    and-int/lit8 v19, v19, 0x1

    aput v19, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v7, v6, [I

    .line 48
    aget-byte v17, v1, v17

    shr-int/lit8 v17, v17, 0x0

    and-int/lit8 v17, v17, 0x1

    aput v17, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v7, v6, [I

    add-int/lit8 v17, p2, 0x3

    .line 49
    aget-byte v19, v1, v17

    shr-int/lit8 v19, v19, 0x6

    and-int/lit8 v19, v19, 0x3

    aput v19, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v7, v6, [I

    .line 50
    aget-byte v17, v1, v17

    shr-int/lit8 v17, v17, 0x0

    and-int/lit8 v17, v17, 0xf

    aput v17, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v7, v6, [I

    add-int/lit8 v17, p2, 0x4

    .line 51
    aget-byte v19, v1, v17

    shr-int/lit8 v19, v19, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v6, [I

    .line 52
    aget-byte v19, v1, v17

    shr-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v7, v6, [I

    .line 53
    aget-byte v19, v1, v17

    shr-int/lit8 v9, v19, 0x5

    and-int/2addr v9, v6

    aput v9, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    .line 54
    aget-byte v2, v1, v17

    shr-int/2addr v2, v11

    and-int/lit8 v2, v2, 0xf

    iput v2, v0, Lk0/ui;->h:I

    add-int/lit8 v2, p2, 0x5

    .line 55
    aget-byte v7, v1, v2

    and-int/2addr v7, v4

    const-string v9, "persist.fyt.reversetemp"

    .line 56
    invoke-static {v9, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_a

    add-int/lit8 v7, p2, 0x6

    .line 57
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    :cond_a
    const/16 v9, 0x1b

    if-nez v7, :cond_b

    new-array v7, v6, [I

    aput v14, v7, v5

    .line 58
    invoke-static {v9, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_b
    if-ne v7, v8, :cond_c

    new-array v7, v6, [I

    const/16 v16, -0x3

    aput v16, v7, v5

    .line 59
    invoke-static {v9, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_c
    new-array v15, v6, [I

    aput v7, v15, v5

    .line 60
    invoke-static {v9, v15}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v7, p2, 0x6

    .line 61
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    const-string v9, "persist.fyt.reversetemp"

    .line 62
    invoke-static {v9, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 63
    aget-byte v2, v1, v2

    and-int/lit16 v7, v2, 0xff

    :cond_d
    const/16 v2, 0x1c

    if-nez v7, :cond_e

    new-array v7, v6, [I

    aput v14, v7, v5

    .line 64
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_e
    if-ne v7, v8, :cond_f

    new-array v7, v6, [I

    const/4 v8, -0x3

    aput v8, v7, v5

    .line 65
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_f
    new-array v8, v6, [I

    aput v7, v8, v5

    .line 66
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x1d

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x7

    .line 67
    aget-byte v9, v1, v8

    shr-int/2addr v9, v12

    and-int/2addr v9, v3

    aput v9, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 68
    aget-byte v7, v1, v8

    shr-int/2addr v7, v11

    and-int/2addr v7, v3

    aput v7, v2, v5

    const/16 v7, 0x1f

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 69
    aget-byte v7, v1, v8

    shr-int/2addr v7, v13

    and-int/2addr v7, v3

    aput v7, v2, v5

    const/16 v7, 0x1e

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v7, v6, [I

    .line 70
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v3, v8

    aput v3, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 71
    aget-byte v7, v1, v7

    shr-int/2addr v7, v10

    and-int/2addr v6, v7

    aput v6, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9

    add-int/lit8 v2, p2, 0x9

    .line 72
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    const/16 v2, 0x7d

    if-le v1, v2, :cond_10

    .line 73
    invoke-static {v5}, Lu0/d;->B3(I)V

    goto/16 :goto_c

    :cond_10
    const-string v2, "persist.fyt.temperature"

    .line 74
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    goto :goto_3

    :cond_11
    mul-int/lit8 v1, v1, 0x12

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    .line 75
    :goto_3
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_c

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 76
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 77
    aget-byte v1, v1, v3

    and-int/2addr v2, v4

    .line 78
    iput v2, v0, Lk0/ui;->f:I

    move v2, v5

    .line 79
    :goto_4
    iget-object v3, v0, Lk0/ui;->g:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_14

    .line 80
    iget v7, v0, Lk0/ui;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_13

    if-eqz v7, :cond_14

    .line 81
    iput v2, v0, Lk0/ui;->e:I

    goto :goto_5

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 82
    :cond_14
    :goto_5
    iget v7, v0, Lk0/ui;->f:I

    const/16 v8, 0x8

    if-eq v7, v9, :cond_1d

    if-eq v7, v12, :cond_1b

    if-eq v7, v10, :cond_19

    if-eq v7, v8, :cond_17

    and-int/2addr v1, v4

    if-eqz v1, :cond_15

    .line 83
    array-length v1, v3

    if-ge v2, v1, :cond_24

    .line 84
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 85
    :cond_15
    iget v1, v0, Lk0/ui;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_16

    if-eq v1, v4, :cond_16

    .line 86
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 87
    :cond_16
    iput v4, v0, Lk0/ui;->e:I

    goto/16 :goto_c

    :cond_17
    move v2, v5

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_18

    const/16 v3, 0x1f

    .line 88
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/16 v3, 0x1f

    .line 89
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_19
    move v2, v5

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1a

    const/16 v3, 0x1e

    .line 90
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    const/16 v3, 0x1e

    .line 91
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_1b
    move v2, v5

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1c

    .line 92
    invoke-static {v10, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 93
    :cond_1c
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_1d
    move v2, v5

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1e

    .line 94
    invoke-static {v8, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 95
    :cond_1e
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_1f
    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 97
    aget-byte v1, v1, v3

    and-int/2addr v2, v4

    .line 98
    iput v2, v0, Lk0/ui;->c:I

    move v2, v5

    .line 99
    :goto_a
    iget-object v3, v0, Lk0/ui;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_21

    .line 100
    iget v7, v0, Lk0/ui;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_20

    if-eqz v7, :cond_21

    .line 101
    iput v2, v0, Lk0/ui;->b:I

    goto :goto_b

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_21
    :goto_b
    and-int/2addr v1, v4

    if-ne v1, v6, :cond_22

    .line 102
    array-length v1, v3

    if-ge v2, v1, :cond_24

    .line 103
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_22
    if-nez v1, :cond_24

    .line 104
    iget v1, v0, Lk0/ui;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_23

    if-eq v1, v4, :cond_23

    .line 105
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 106
    :cond_23
    iput v4, v0, Lk0/ui;->b:I

    :cond_24
    :goto_c
    return-void
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
    iget-object v0, p0, Lk0/ui;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/ui;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/ui;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x77

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

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    const/16 v4, 0xe3

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p1, p3, [I

    aput v4, p1, v2

    const/16 p3, 0x96

    aput p3, p1, v3

    aput v1, p1, v1

    .line 1
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p3, [I

    aput v4, p1, v2

    const/16 p3, 0x95

    aput p3, p1, v3

    aput v1, p1, v1

    .line 2
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_2
    aget p1, p2, v2

    const/16 v5, 0x52

    if-ne p1, v5, :cond_3

    .line 4
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ui;->k3(I)V

    goto :goto_0

    .line 5
    :cond_3
    aget p1, p2, v2

    const/16 v5, 0x53

    if-ne p1, v5, :cond_4

    .line 6
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ui;->j3(I)V

    goto :goto_0

    :cond_4
    new-array p1, p3, [I

    aput v4, p1, v2

    const/16 p3, 0x97

    aput p3, p1, v3

    aput v1, p1, v1

    .line 7
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_5
    aget p1, p2, v2

    aget v2, p2, v3

    aget v3, p2, v1

    aget v4, p2, v0

    aget v5, p2, p4

    aget v6, p2, p3

    const/4 p3, 0x6

    aget v7, p2, p3

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lk0/ui;->l3(IIIIIII)V

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

    const/16 v5, -0x6b

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

    aput v4, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x22

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xe3

    aput v0, v1, v2

    const/16 v0, 0x90

    const/4 v3, 0x1

    aput v0, v1, v3

    const/4 v0, 0x2

    const/16 v3, 0x1f

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p1, v1, v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xf

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x4

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 4
    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x5

    and-int/lit16 p1, p1, 0xff

    .line 5
    aput p1, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final j3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/ui;->w:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x97

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/16 v4, 0x53

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/ui;->w:I

    aput v0, p1, v2

    const/16 v0, 0x76

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    return-void
.end method

.method public final k3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/ui;->v:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x97

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/16 v4, 0x52

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/ui;->v:I

    aput v0, p1, v2

    const/16 v0, 0x75

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    return-void
.end method

.method public final l3(IIIIIII)V
    .locals 6

    .line 1
    sput p1, Lk0/ui;->o:I

    .line 2
    sput p2, Lk0/ui;->p:I

    .line 3
    sput p3, Lk0/ui;->q:I

    .line 4
    sput p4, Lk0/ui;->r:I

    .line 5
    sput p5, Lk0/ui;->s:I

    .line 6
    sput p6, Lk0/ui;->t:I

    shr-int/lit8 v0, p7, 0x1

    const/4 v1, 0x3

    and-int/2addr v0, v1

    .line 7
    sput v0, Lk0/ui;->u:I

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    const/16 v2, 0x93

    const/4 v4, 0x1

    aput v2, v0, v4

    const/4 v2, 0x2

    const/4 v5, 0x7

    aput v5, v0, v2

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    const/4 p1, 0x5

    aput p3, v0, p1

    const/4 p1, 0x6

    aput p4, v0, p1

    aput p5, v0, v5

    const/16 p1, 0x8

    aput p6, v0, p1

    const/16 p1, 0x9

    aput p7, v0, p1

    .line 8
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v4, [I

    .line 9
    sget p2, Lk0/ui;->o:I

    aput p2, p1, v3

    const/16 p2, 0x6e

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 10
    sget p2, Lk0/ui;->p:I

    aput p2, p1, v3

    const/16 p2, 0x6f

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 11
    sget p2, Lk0/ui;->q:I

    aput p2, p1, v3

    const/16 p2, 0x70

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 12
    sget p2, Lk0/ui;->r:I

    aput p2, p1, v3

    const/16 p2, 0x71

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 13
    sget p2, Lk0/ui;->s:I

    aput p2, p1, v3

    const/16 p2, 0x72

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 14
    sget p2, Lk0/ui;->t:I

    aput p2, p1, v3

    const/16 p2, 0x73

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v4, [I

    .line 15
    sget p2, Lk0/ui;->u:I

    aput p2, p1, v3

    const/16 p2, 0x74

    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    return-void
.end method
