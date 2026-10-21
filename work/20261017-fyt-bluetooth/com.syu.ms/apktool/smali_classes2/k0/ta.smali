.class public Lk0/ta;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static r:I = 0x0

.field public static s:I = 0x0

.field public static t:I = 0xff

.field public static u:I = 0xff

.field public static v:I = 0xff

.field public static w:I = 0x0

.field public static x:I = 0xff


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Z

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:I

.field public q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/ta;->e:I

    const/16 v0, 0x8

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

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v5, 0x5

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v5, 0x6

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v5, 0x7

    aput-object v2, v0, v5

    iput-object v0, p0, Lk0/ta;->f:[[I

    .line 4
    new-instance v0, Lk0/ta$a;

    invoke-direct {v0, p0}, Lk0/ta$a;-><init>(Lk0/ta;)V

    iput-object v0, p0, Lk0/ta;->g:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/ta$b;

    invoke-direct {v0, p0}, Lk0/ta$b;-><init>(Lk0/ta;)V

    iput-object v0, p0, Lk0/ta;->h:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/ta$c;

    invoke-direct {v0, p0}, Lk0/ta$c;-><init>(Lk0/ta;)V

    iput-object v0, p0, Lk0/ta;->i:Ljava/lang/Runnable;

    .line 7
    iput-boolean v3, p0, Lk0/ta;->j:Z

    .line 8
    new-instance v0, Lk0/ta$d;

    invoke-direct {v0, p0}, Lk0/ta$d;-><init>(Lk0/ta;)V

    iput-object v0, p0, Lk0/ta;->k:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/ta$e;

    invoke-direct {v0, p0}, Lk0/ta$e;-><init>(Lk0/ta;)V

    iput-object v0, p0, Lk0/ta;->l:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/ta$f;

    invoke-direct {v0, p0}, Lk0/ta$f;-><init>(Lk0/ta;)V

    iput-object v0, p0, Lk0/ta;->m:Ljava/lang/Runnable;

    .line 11
    iput v3, p0, Lk0/ta;->n:I

    .line 12
    new-instance v0, Lk0/ta$g;

    invoke-direct {v0, p0}, Lk0/ta$g;-><init>(Lk0/ta;)V

    iput-object v0, p0, Lk0/ta;->o:Ljava/lang/Runnable;

    .line 13
    iput v4, p0, Lk0/ta;->p:I

    .line 14
    iput v1, p0, Lk0/ta;->q:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_4
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x18
        -0x1
    .end array-data
.end method

.method public static a3(I)I
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0xff

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p0, v0

    .line 1
    div-int/lit16 v0, p0, 0xff

    :goto_0
    return v0
.end method

.method public static c3()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x2a
        0x32
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x2a
        0x32
        0x0
    .end array-data
.end method

.method public static synthetic d3(Lk0/ta;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/ta;->b3()V

    return-void
.end method

.method public static synthetic e3(Lk0/ta;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ta;->m:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 1

    const/16 v0, 0x24

    .line 1
    sput v0, Ly0/f;->C0:I

    return-void
.end method

.method public O2([I)V
    .locals 8

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lk0/ta;->i3([II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    aget v2, p1, v1

    const/16 v3, 0xc

    const/16 v4, 0x10

    const/16 v5, 0xd

    const/16 v6, 0xb

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v7

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0, v4, v7}, Lk0/ta;->f3(II)V

    .line 5
    invoke-virtual {p0, v4, v1}, Lk0/ta;->f3(II)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0xf

    .line 6
    invoke-virtual {p0, p1, v7}, Lk0/ta;->f3(II)V

    .line 7
    invoke-virtual {p0, p1, v1}, Lk0/ta;->f3(II)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    aget p1, p1, v7

    if-nez p1, :cond_2

    const/16 p1, 0xe

    .line 9
    invoke-virtual {p0, p1, v7}, Lk0/ta;->f3(II)V

    .line 10
    invoke-virtual {p0, p1, v1}, Lk0/ta;->f3(II)V

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, v5, v7}, Lk0/ta;->f3(II)V

    .line 12
    invoke-virtual {p0, v5, v1}, Lk0/ta;->f3(II)V

    goto/16 :goto_0

    .line 13
    :pswitch_3
    aget v0, p1, v7

    const/4 v2, -0x2

    if-ne v0, v2, :cond_3

    .line 14
    invoke-virtual {p0, v3, v7}, Lk0/ta;->f3(II)V

    .line 15
    invoke-virtual {p0, v3, v1}, Lk0/ta;->f3(II)V

    goto/16 :goto_0

    .line 16
    :cond_3
    aget p1, p1, v7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    .line 17
    invoke-virtual {p0, v6, v7}, Lk0/ta;->f3(II)V

    .line 18
    invoke-virtual {p0, v6, v1}, Lk0/ta;->f3(II)V

    goto/16 :goto_0

    .line 19
    :pswitch_4
    aget v2, p1, v7

    if-eqz v2, :cond_4

    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v3

    if-ne v2, v0, :cond_5

    :cond_4
    aget p1, p1, v7

    if-nez p1, :cond_10

    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v0, :cond_10

    :cond_5
    const/4 p1, 0x7

    .line 20
    invoke-virtual {p0, p1, v7}, Lk0/ta;->f3(II)V

    .line 21
    invoke-virtual {p0, p1, v1}, Lk0/ta;->f3(II)V

    goto/16 :goto_0

    .line 22
    :pswitch_5
    aget v0, p1, v7

    if-eqz v0, :cond_6

    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v4

    if-ne v0, v7, :cond_7

    :cond_6
    aget p1, p1, v7

    if-nez p1, :cond_10

    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v7, :cond_10

    :cond_7
    const/4 p1, 0x6

    .line 23
    invoke-virtual {p0, p1, v7}, Lk0/ta;->f3(II)V

    .line 24
    invoke-virtual {p0, p1, v1}, Lk0/ta;->f3(II)V

    goto/16 :goto_0

    .line 25
    :pswitch_6
    aget v0, p1, v7

    const/16 v2, 0x41

    if-eqz v0, :cond_8

    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v2

    if-ne v0, v7, :cond_9

    :cond_8
    aget p1, p1, v7

    if-nez p1, :cond_10

    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v7, :cond_10

    :cond_9
    const/4 p1, 0x5

    .line 26
    invoke-virtual {p0, p1, v7}, Lk0/ta;->f3(II)V

    .line 27
    invoke-virtual {p0, p1, v1}, Lk0/ta;->f3(II)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget v0, p1, v7

    if-eqz v0, :cond_a

    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v5

    if-ne v0, v7, :cond_b

    :cond_a
    aget p1, p1, v7

    if-nez p1, :cond_10

    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v7, :cond_10

    :cond_b
    const/4 p1, 0x4

    .line 29
    invoke-virtual {p0, p1, v7}, Lk0/ta;->f3(II)V

    .line 30
    invoke-virtual {p0, p1, v1}, Lk0/ta;->f3(II)V

    goto :goto_0

    .line 31
    :pswitch_8
    aget v2, p1, v7

    if-eqz v2, :cond_c

    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v6

    if-ne v2, v7, :cond_d

    :cond_c
    aget p1, p1, v7

    if-nez p1, :cond_10

    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-ne p1, v7, :cond_10

    .line 32
    :cond_d
    invoke-virtual {p0, v0, v7}, Lk0/ta;->f3(II)V

    .line 33
    invoke-virtual {p0, v0, v1}, Lk0/ta;->f3(II)V

    goto :goto_0

    .line 34
    :pswitch_9
    aget v0, p1, v7

    const/16 v2, 0xa

    if-eqz v0, :cond_e

    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v2

    if-ne v0, v7, :cond_f

    :cond_e
    aget p1, p1, v7

    if-nez p1, :cond_10

    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v7, :cond_10

    .line 35
    :cond_f
    invoke-virtual {p0, v7, v7}, Lk0/ta;->f3(II)V

    .line 36
    invoke-virtual {p0, v7, v1}, Lk0/ta;->f3(II)V

    :cond_10
    :goto_0
    return-void

    nop

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
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 2
    iput v2, v0, Lk0/mt;->e:I

    .line 3
    iput v2, v0, Lk0/mt;->l:I

    const/4 v3, 0x0

    .line 4
    iput v3, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lk0/ta;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    sget v0, Ln0/j4;->b:I

    const/16 v4, 0x1f

    if-ne v0, v4, :cond_1

    sget v0, Lk0/nt;->a:I

    const v4, 0x1013d

    if-ne v0, v4, :cond_1

    .line 9
    sget-object v0, Lz/c;->e:Lo1/y;

    iget-object v4, p0, Lk0/ta;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lk0/ta;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    sput-boolean v2, Lu0/b;->Y3:Z

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->b:I

    const/16 v4, 0x9

    new-array v4, v4, [I

    .line 14
    fill-array-data v4, :array_0

    iput-object v4, v0, Lk0/mt;->m:[I

    .line 15
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    .line 16
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    invoke-interface {v0, v2}, Lui/b;->a(Z)V

    .line 18
    :cond_3
    sget-object v0, Ln0/j4;->d:Ln0/c4;

    invoke-virtual {v0, v2}, Ln0/c4;->g3(Z)V

    const/4 v0, 0x4

    .line 19
    invoke-static {v0}, Ly0/h;->V(I)V

    .line 20
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v4, p0, Lk0/ta;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v4, p0, Lk0/ta;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_4

    .line 23
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 24
    :cond_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 25
    :cond_5
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v3, p0, Lk0/ta;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    :goto_0
    sget v0, Lk0/nt;->a:I

    const/16 v3, 0x2c

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 27
    :sswitch_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_6

    .line 28
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_1

    .line 29
    :cond_6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 30
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->q:I

    const/16 v0, 0x24

    .line 31
    invoke-virtual {p0, v0}, Lk0/ta;->j3(I)V

    goto :goto_2

    :sswitch_1
    const/16 v0, 0x15

    .line 32
    invoke-virtual {p0, v0}, Lk0/ta;->j3(I)V

    goto :goto_2

    .line 33
    :sswitch_2
    invoke-virtual {p0, v3}, Lk0/ta;->j3(I)V

    goto :goto_2

    .line 34
    :sswitch_3
    invoke-virtual {p0, v3}, Lk0/ta;->j3(I)V

    goto :goto_2

    :sswitch_4
    const/16 v0, 0x2b

    .line 35
    invoke-virtual {p0, v0}, Lk0/ta;->j3(I)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x13d -> :sswitch_4
        0x1013d -> :sswitch_3
        0x2013d -> :sswitch_2
        0x3013d -> :sswitch_2
        0x4013d -> :sswitch_1
        0x5013d -> :sswitch_1
        0x6013d -> :sswitch_2
        0x7013d -> :sswitch_2
        0x8013d -> :sswitch_0
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
    .end array-data
.end method

.method public U2([BII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x51

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x1

    if-eq v2, v3, :cond_21

    const/16 v3, -0x10

    const/4 v8, 0x2

    if-eq v2, v3, :cond_20

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x41

    if-eq v2, v3, :cond_1a

    const/16 v9, 0x11

    const/16 v10, 0xd

    const/4 v11, 0x0

    if-eq v2, v9, :cond_11

    const/4 v9, 0x5

    const/16 v12, 0x12

    if-eq v2, v12, :cond_f

    const/16 v13, 0x31

    if-eq v2, v13, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 2
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x8

    const v8, 0xff00

    and-int/2addr v5, v8

    add-int/lit8 v9, p2, 0x5

    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    or-int/2addr v5, v10

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v7, [I

    .line 3
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    aget-byte v5, v1, v9

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 4
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    add-int/lit8 v6, p2, 0x3

    .line 6
    aget-byte v6, v1, v6

    add-int/lit8 v14, p2, 0x4

    .line 7
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x5

    .line 8
    aget-byte v15, v1, v15

    add-int/lit8 v15, p2, 0x6

    .line 9
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x7

    .line 10
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x8

    .line 11
    aget-byte v18, v1, v17

    add-int/lit8 v19, p2, 0x9

    .line 12
    aget-byte v20, v1, v19

    const/16 v13, 0xa

    new-array v12, v7, [I

    shr-int/lit8 v21, v2, 0x6

    and-int/lit8 v21, v21, 0x1

    aput v21, v12, v11

    .line 13
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    new-array v12, v7, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v7

    aput v13, v12, v11

    .line 14
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x3e

    new-array v12, v7, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v7

    aput v13, v12, v11

    .line 15
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xb

    new-array v12, v7, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v5

    aput v2, v12, v11

    .line 16
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v10, v7, [I

    shr-int/lit8 v12, v6, 0x4

    and-int/2addr v12, v7

    aput v12, v10, v11

    .line 17
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v10, v14, 0x6

    and-int/2addr v10, v7

    aput v10, v2, v11

    .line 18
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v10, v14, 0x5

    and-int/2addr v10, v7

    aput v10, v3, v11

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v6, 0x7

    and-int/2addr v2, v7

    const/16 v3, 0x20

    if-ne v2, v7, :cond_2

    const/16 v2, 0x1e

    new-array v10, v7, [I

    aput v11, v10, v11

    .line 20
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v10, v14, 0x2

    and-int/2addr v10, v5

    aput v10, v2, v11

    .line 21
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v2, v7, [I

    aput v11, v2, v11

    .line 22
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    shr-int/lit8 v10, v14, 0x2

    and-int/2addr v10, v5

    aput v10, v3, v11

    .line 23
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    shr-int/lit8 v2, v6, 0x6

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_3

    const/16 v2, 0x1d

    new-array v3, v7, [I

    aput v11, v3, v11

    .line 24
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v7, [I

    shr-int/lit8 v6, v14, 0x0

    and-int/2addr v6, v5

    aput v6, v3, v11

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    const/16 v2, 0x1f

    new-array v3, v7, [I

    aput v11, v3, v11

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    shr-int/lit8 v6, v14, 0x0

    and-int/2addr v6, v5

    aput v6, v3, v11

    .line 27
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit16 v2, v15, 0xff

    const/16 v3, 0x13

    const/16 v6, 0x14

    if-eqz v2, :cond_9

    if-eq v2, v7, :cond_8

    if-eq v2, v8, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v4, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-array v2, v7, [I

    aput v7, v2, v11

    const/16 v4, 0x12

    .line 28
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v7, v2, v11

    .line 29
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v7, v2, v11

    .line 30
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :pswitch_1
    const/16 v4, 0x12

    new-array v2, v7, [I

    aput v7, v2, v11

    .line 31
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v7, v2, v11

    .line 32
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 33
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :pswitch_2
    const/16 v4, 0x12

    new-array v2, v7, [I

    aput v7, v2, v11

    .line 34
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v7, v2, v11

    .line 35
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 36
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :pswitch_3
    const/16 v4, 0x12

    new-array v2, v7, [I

    aput v7, v2, v11

    .line 37
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 38
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 39
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_4
    new-array v2, v7, [I

    aput v7, v2, v11

    .line 40
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    const/16 v3, 0x12

    .line 41
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 42
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_5
    new-array v2, v7, [I

    aput v7, v2, v11

    .line 43
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v7, v2, v11

    .line 44
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    const/16 v4, 0x12

    .line 45
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    const/16 v4, 0x12

    new-array v2, v7, [I

    aput v7, v2, v11

    .line 46
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 47
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 48
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    const/16 v4, 0x12

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 49
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 50
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 51
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v7, [I

    aput v7, v2, v11

    const/16 v4, 0x31

    .line 52
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    const/16 v4, 0x12

    .line 53
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 54
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 55
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    const/16 v4, 0x12

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 56
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 57
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v11, v2, v11

    .line 58
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x4d

    new-array v3, v7, [I

    aput v15, v3, v11

    .line 59
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    aput v16, v3, v11

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 61
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 62
    aget-byte v18, v1, v19

    .line 63
    aget-byte v20, v1, v17

    :cond_a
    move/from16 v1, v18

    move/from16 v2, v20

    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1b

    const/4 v5, -0x2

    if-ne v1, v5, :cond_b

    new-array v1, v7, [I

    aput v5, v1, v11

    .line 64
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    const/4 v6, -0x1

    if-ne v1, v6, :cond_c

    new-array v1, v7, [I

    const/4 v3, -0x3

    aput v3, v1, v11

    .line 65
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v1, v7, [I

    aput v3, v1, v11

    .line 66
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/lit16 v1, v2, 0xff

    const/16 v3, 0x1c

    if-ne v2, v5, :cond_d

    new-array v1, v7, [I

    aput v5, v1, v11

    .line 67
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_d
    const/4 v4, -0x1

    if-ne v2, v4, :cond_e

    new-array v1, v7, [I

    const/4 v2, -0x3

    aput v2, v1, v11

    .line 68
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_e
    new-array v2, v7, [I

    aput v1, v2, v11

    .line 69
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_f
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 70
    aget-byte v1, v1, v3

    const-string v3, "persist.syu.reversefrontdoor"

    .line 71
    invoke-static {v3, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_10

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v11

    .line 72
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v11

    .line 73
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v11

    .line 74
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v11

    .line 75
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v11

    .line 76
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v11

    .line 77
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v11

    .line 78
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v7

    aput v3, v2, v11

    .line 79
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v7

    aput v4, v3, v11

    .line 80
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v3, v7, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v7

    aput v1, v3, v11

    .line 81
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 82
    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    .line 83
    sget v3, Lk0/ta;->w:I

    if-eq v3, v2, :cond_14

    .line 84
    sput v2, Lk0/ta;->w:I

    .line 85
    sget v2, Lu0/b;->r0:I

    if-nez v2, :cond_14

    .line 86
    sget v2, Lk0/ta;->w:I

    if-eqz v2, :cond_13

    .line 87
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 88
    iput-boolean v11, v0, Lk0/ta;->b:Z

    .line 89
    sget-object v2, La/b;->R:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_5

    .line 90
    :cond_12
    iput-boolean v7, v0, Lk0/ta;->b:Z

    goto :goto_5

    .line 91
    :cond_13
    iget-boolean v2, v0, Lk0/ta;->b:Z

    if-nez v2, :cond_14

    sget v2, Lu0/b;->C:I

    if-eq v2, v10, :cond_14

    .line 92
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 93
    invoke-static {}, Lo1/u;->k()V

    .line 94
    :cond_14
    :goto_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x4

    .line 95
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 96
    aget-byte v3, v1, v3

    and-int/2addr v2, v6

    .line 97
    iput v2, v0, Lk0/ta;->d:I

    move v2, v11

    .line 98
    :goto_6
    iget-object v4, v0, Lk0/ta;->f:[[I

    array-length v9, v4

    if-ge v2, v9, :cond_16

    .line 99
    iget v9, v0, Lk0/ta;->d:I

    aget-object v10, v4, v2

    aget v10, v10, v11

    if-ne v9, v10, :cond_15

    if-eqz v9, :cond_16

    .line 100
    iput v2, v0, Lk0/ta;->c:I

    goto :goto_7

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 101
    :cond_16
    :goto_7
    iget v9, v0, Lk0/ta;->d:I

    if-eq v9, v7, :cond_19

    if-eq v9, v8, :cond_19

    if-eq v9, v5, :cond_19

    and-int/2addr v3, v6

    if-eqz v3, :cond_17

    .line 102
    array-length v3, v4

    if-ge v2, v3, :cond_19

    .line 103
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 104
    :cond_17
    iget v2, v0, Lk0/ta;->c:I

    array-length v3, v4

    if-ge v2, v3, :cond_18

    if-eq v2, v6, :cond_18

    .line 105
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 106
    :cond_18
    iput v6, v0, Lk0/ta;->c:I

    :cond_19
    :goto_8
    add-int/lit8 v2, p2, 0x9

    .line 107
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    .line 108
    :cond_1a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 109
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/ta;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 110
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/ta;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 111
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/ta;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 112
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/ta;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 113
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/ta;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 114
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/ta;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 115
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Lk0/ta;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 116
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Lk0/ta;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto :goto_9

    .line 117
    :cond_1b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 118
    aget-byte v3, v1, v2

    if-ne v3, v7, :cond_1d

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    if-eqz v4, :cond_1d

    .line 119
    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    const/16 v2, 0x80

    if-ge v1, v2, :cond_1c

    .line 120
    invoke-static {}, Lu0/d;->O1()V

    goto :goto_9

    .line 121
    :cond_1c
    invoke-static {}, Lu0/d;->M1()V

    goto :goto_9

    .line 122
    :cond_1d
    aget-byte v3, v1, v2

    if-eq v3, v8, :cond_1e

    aget-byte v2, v1, v2

    if-ne v2, v5, :cond_22

    :cond_1e
    add-int/lit8 v2, p2, 0x3

    aget-byte v3, v1, v2

    if-eqz v3, :cond_22

    .line 123
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    const/16 v2, 0x80

    if-ge v1, v2, :cond_1f

    .line 124
    invoke-static {}, Lu0/d;->I1()V

    goto :goto_9

    .line 125
    :cond_1f
    invoke-static {}, Lu0/d;->B1()V

    goto :goto_9

    .line 126
    :cond_20
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_9

    :cond_21
    add-int/lit8 v2, p2, 0x2

    .line 127
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 128
    aget-byte v1, v1, v3

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    .line 129
    sput v2, Lk0/ta;->t:I

    .line 130
    sget v2, Lk0/ta;->u:I

    and-int/2addr v1, v6

    if-eq v2, v1, :cond_22

    .line 131
    sput v2, Lk0/ta;->v:I

    .line 132
    sput v1, Lk0/ta;->u:I

    :cond_22
    :goto_9
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
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/ta;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    sget-object v0, Lz/c;->e:Lo1/y;

    iget-object v1, p0, Lk0/ta;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Lk0/ta;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lk0/ta;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lu0/b;->Y3:Z

    .line 8
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v0, v1, Lk0/mt;->b:I

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x64

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

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    if-eq p1, p4, :cond_3

    if-eq p1, v0, :cond_2

    const/16 v2, 0xe3

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq p1, v1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v0}, Lk0/ta;->i3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v3, [I

    aput v2, p1, p3

    aput v0, p1, p4

    const/16 v2, 0x2b

    aput v2, p1, v0

    .line 2
    aget p3, p2, p3

    aput p3, p1, v1

    aget p2, p2, p4

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, v0}, Lk0/ta;->i3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v3, [I

    aput v2, p1, p3

    aput v0, p1, p4

    const/16 v2, 0x2a

    aput v2, p1, v0

    .line 4
    aget p3, p2, p3

    aput p3, p1, v1

    aget p2, p2, p4

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p2, v0}, Lk0/ta;->i3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    aget p1, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/ta;->f3(II)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, p2, v1}, Lk0/ta;->i3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    aget p1, p2, p3

    aget p3, p2, p4

    aget p2, p2, v0

    invoke-virtual {p0, p1, p3, p2}, Lk0/ta;->h3(III)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0, p2, v0}, Lk0/ta;->i3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    aget p1, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/ta;->g3(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final b3()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x2a
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x2a
        0x1
        0x0
    .end array-data
.end method

.method public final f3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x3d

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final g3(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    sget v3, Ln0/j4;->b:I

    const/16 v6, 0x2b

    const/16 v7, 0x34

    const/16 v8, 0x33

    const/16 v9, 0x36

    const/16 v10, 0x35

    const/16 v11, 0xff

    const/16 v12, 0x2a

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/16 v15, 0xe3

    const/4 v5, 0x5

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_11

    .line 2
    sget v3, Lk0/nt;->a:I

    const/16 v4, 0x13d

    if-ne v3, v4, :cond_c

    if-eq v2, v8, :cond_0

    if-ne v2, v7, :cond_5

    :cond_0
    if-nez v1, :cond_5

    if-ne v2, v8, :cond_2

    .line 3
    sget v1, Lk0/ta;->r:I

    if-ne v1, v11, :cond_1

    .line 4
    sput v16, Lk0/ta;->r:I

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 5
    sput v1, Lk0/ta;->r:I

    goto :goto_0

    :cond_2
    if-ne v2, v7, :cond_4

    .line 6
    sget v1, Lk0/ta;->r:I

    if-nez v1, :cond_3

    .line 7
    sput v11, Lk0/ta;->r:I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 8
    sput v1, Lk0/ta;->r:I

    :cond_4
    :goto_0
    new-array v1, v5, [I

    aput v15, v1, v16

    aput v18, v1, v17

    aput v6, v1, v18

    .line 9
    iget v2, v0, Lk0/ta;->q:I

    aput v2, v1, v14

    sget v2, Lk0/ta;->r:I

    int-to-byte v2, v2

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_5
    if-eq v2, v10, :cond_6

    if-ne v2, v9, :cond_b

    :cond_6
    if-nez v1, :cond_b

    if-ne v2, v10, :cond_8

    .line 10
    sget v1, Lk0/ta;->s:I

    if-ne v1, v11, :cond_7

    .line 11
    sput v16, Lk0/ta;->s:I

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 12
    sput v1, Lk0/ta;->s:I

    goto :goto_1

    :cond_8
    if-ne v2, v9, :cond_a

    .line 13
    sget v1, Lk0/ta;->s:I

    if-nez v1, :cond_9

    .line 14
    sput v11, Lk0/ta;->s:I

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 15
    sput v1, Lk0/ta;->s:I

    :cond_a
    :goto_1
    new-array v1, v5, [I

    aput v15, v1, v16

    aput v18, v1, v17

    aput v6, v1, v18

    .line 16
    iget v2, v0, Lk0/ta;->p:I

    aput v2, v1, v14

    sget v2, Lk0/ta;->s:I

    int-to-byte v2, v2

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_b
    new-array v3, v5, [I

    aput v15, v3, v16

    aput v18, v3, v17

    aput v12, v3, v18

    int-to-byte v2, v2

    aput v2, v3, v14

    int-to-byte v1, v1

    aput v1, v3, v13

    .line 17
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_c
    if-eq v2, v10, :cond_10

    if-ne v2, v8, :cond_d

    goto :goto_3

    :cond_d
    if-eq v2, v9, :cond_f

    if-ne v2, v7, :cond_e

    goto :goto_2

    :cond_e
    new-array v3, v5, [I

    aput v15, v3, v16

    aput v18, v3, v17

    aput v12, v3, v18

    int-to-byte v2, v2

    aput v2, v3, v14

    int-to-byte v1, v1

    aput v1, v3, v13

    .line 18
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_f
    :goto_2
    new-array v2, v5, [I

    aput v15, v2, v16

    aput v18, v2, v17

    aput v12, v2, v18

    const/16 v3, 0x40

    aput v3, v2, v14

    int-to-byte v1, v1

    aput v1, v2, v13

    .line 19
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_10
    :goto_3
    new-array v2, v5, [I

    aput v15, v2, v16

    aput v18, v2, v17

    aput v12, v2, v18

    const/16 v3, 0x41

    aput v3, v2, v14

    int-to-byte v1, v1

    aput v1, v2, v13

    .line 20
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 21
    :cond_11
    sget v3, Lk0/nt;->a:I

    const v4, 0x1013d

    if-ne v3, v4, :cond_14

    if-ne v2, v10, :cond_12

    new-array v2, v5, [I

    aput v15, v2, v16

    aput v18, v2, v17

    aput v12, v2, v18

    const/16 v3, 0x41

    aput v3, v2, v14

    int-to-byte v1, v1

    aput v1, v2, v13

    .line 22
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_12
    if-ne v2, v9, :cond_13

    new-array v2, v5, [I

    aput v15, v2, v16

    aput v18, v2, v17

    aput v12, v2, v18

    const/16 v3, 0x40

    aput v3, v2, v14

    int-to-byte v1, v1

    aput v1, v2, v13

    .line 23
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_13
    new-array v3, v5, [I

    aput v15, v3, v16

    aput v18, v3, v17

    aput v12, v3, v18

    int-to-byte v2, v2

    aput v2, v3, v14

    int-to-byte v1, v1

    aput v1, v3, v13

    .line 24
    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_14
    if-eq v2, v8, :cond_15

    if-ne v2, v7, :cond_1a

    :cond_15
    if-nez v1, :cond_1a

    if-ne v2, v8, :cond_17

    .line 25
    sget v1, Lk0/ta;->r:I

    if-ne v1, v11, :cond_16

    .line 26
    sput v16, Lk0/ta;->r:I

    goto :goto_4

    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 27
    sput v1, Lk0/ta;->r:I

    goto :goto_4

    :cond_17
    if-ne v2, v7, :cond_19

    .line 28
    sget v1, Lk0/ta;->r:I

    if-nez v1, :cond_18

    .line 29
    sput v11, Lk0/ta;->r:I

    goto :goto_4

    :cond_18
    add-int/lit8 v1, v1, -0x1

    .line 30
    sput v1, Lk0/ta;->r:I

    :cond_19
    :goto_4
    new-array v1, v5, [I

    aput v15, v1, v16

    aput v18, v1, v17

    aput v6, v1, v18

    .line 31
    iget v2, v0, Lk0/ta;->q:I

    aput v2, v1, v14

    sget v2, Lk0/ta;->r:I

    int-to-byte v2, v2

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_6

    :cond_1a
    if-eq v2, v10, :cond_1b

    if-ne v2, v9, :cond_20

    :cond_1b
    if-nez v1, :cond_20

    if-ne v2, v10, :cond_1d

    .line 32
    sget v1, Lk0/ta;->s:I

    if-ne v1, v11, :cond_1c

    .line 33
    sput v16, Lk0/ta;->s:I

    goto :goto_5

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 34
    sput v1, Lk0/ta;->s:I

    goto :goto_5

    :cond_1d
    if-ne v2, v9, :cond_1f

    .line 35
    sget v1, Lk0/ta;->s:I

    if-nez v1, :cond_1e

    .line 36
    sput v11, Lk0/ta;->s:I

    goto :goto_5

    :cond_1e
    add-int/lit8 v1, v1, -0x1

    .line 37
    sput v1, Lk0/ta;->s:I

    :cond_1f
    :goto_5
    new-array v1, v5, [I

    aput v15, v1, v16

    aput v18, v1, v17

    aput v6, v1, v18

    .line 38
    iget v2, v0, Lk0/ta;->p:I

    aput v2, v1, v14

    sget v2, Lk0/ta;->s:I

    int-to-byte v2, v2

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_6

    :cond_20
    new-array v3, v5, [I

    aput v15, v3, v16

    aput v18, v3, v17

    aput v12, v3, v18

    int-to-byte v2, v2

    aput v2, v3, v14

    int-to-byte v1, v1

    aput v1, v3, v13

    .line 39
    invoke-static {v3}, Lz/k;->s([I)V

    :goto_6
    return-void
.end method

.method public final h3(III)V
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 1
    sget v3, Lk0/nt;->a:I

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/16 v7, 0x2c

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v10, 0xe3

    const/4 v11, 0x5

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/16 v14, 0x8

    const v15, 0x1013d

    if-eq v3, v15, :cond_1

    const v15, 0x2013d

    if-eq v3, v15, :cond_1

    const v15, 0x3013d

    if-eq v3, v15, :cond_1

    const v15, 0x5013d

    if-eq v3, v15, :cond_1

    const v15, 0x4013d

    if-eq v3, v15, :cond_1

    const v15, 0x6013d

    if-eq v3, v15, :cond_1

    const v15, 0x8013d

    if-eq v3, v15, :cond_1

    const v15, 0x7013d

    if-ne v3, v15, :cond_0

    goto :goto_0

    :cond_0
    new-array v3, v14, [I

    aput v10, v3, v13

    aput v11, v3, v9

    aput v7, v3, v8

    int-to-byte v0, v0

    aput v0, v3, v6

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput v0, v3, v5

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    aput v0, v3, v11

    shr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput v0, v3, v12

    and-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    aput v0, v3, v4

    .line 2
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "/ "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ln1/b;->u(Ljava/lang/String;)V

    const/16 v3, 0x9

    new-array v3, v3, [I

    aput v10, v3, v13

    aput v12, v3, v9

    aput v7, v3, v8

    int-to-byte v0, v0

    aput v0, v3, v6

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput v0, v3, v5

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    aput v0, v3, v11

    shr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput v0, v3, v12

    and-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    aput v0, v3, v4

    const/16 v0, 0x8

    aput v13, v3, v0

    .line 4
    invoke-static {v3}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method

.method public final i3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final j3(I)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x24

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    const/4 v1, 0x7

    aput v1, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
