.class public Lk0/cp;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static B:I = 0x0

.field public static C:I = 0x0

.field public static D:I = 0x0

.field public static E:I = 0x0

.field public static F:I = 0x0

.field public static G:I = 0x32

.field public static H:I = 0x80

.field public static I:I = 0x80

.field public static J:I = 0x80


# instance fields
.field public A:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public u:Lo1/g0;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/cp;->c:I

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

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v6, 0x9

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v7, 0xa

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v7, 0xb

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v7, 0xc

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v7, 0xd

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v7, 0xe

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v8, 0xf

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v8, 0x10

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v8, 0x11

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v8, 0x12

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v9, 0x13

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v10, 0x14

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v11, 0x15

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v12, 0x16

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v13, 0x17

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v13, 0x18

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v13, 0x19

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v13, 0x1a

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v13, 0x1b

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v13, 0x1c

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v13, 0x1d

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v13, 0x1e

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v13, 0x1f

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v13, 0x20

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v14, 0x21

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v14, 0x22

    aput-object v3, v1, v14

    new-array v2, v2, [I

    fill-array-data v2, :array_23

    const/16 v3, 0x23

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/cp;->d:[[I

    .line 4
    iput v0, p0, Lk0/cp;->e:I

    .line 5
    iput v0, p0, Lk0/cp;->f:I

    .line 6
    iput v0, p0, Lk0/cp;->g:I

    .line 7
    iput-boolean v0, p0, Lk0/cp;->h:Z

    .line 8
    iput v0, p0, Lk0/cp;->i:I

    .line 9
    new-instance v0, Lk0/cp$a;

    invoke-direct {v0, p0}, Lk0/cp$a;-><init>(Lk0/cp;)V

    iput-object v0, p0, Lk0/cp;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/cp$b;

    invoke-direct {v0, p0}, Lk0/cp$b;-><init>(Lk0/cp;)V

    iput-object v0, p0, Lk0/cp;->k:Ljava/lang/Runnable;

    .line 11
    iput v4, p0, Lk0/cp;->l:I

    .line 12
    iput v5, p0, Lk0/cp;->m:I

    .line 13
    iput v6, p0, Lk0/cp;->n:I

    .line 14
    iput v7, p0, Lk0/cp;->o:I

    .line 15
    iput v8, p0, Lk0/cp;->p:I

    .line 16
    iput v9, p0, Lk0/cp;->q:I

    .line 17
    iput v10, p0, Lk0/cp;->r:I

    .line 18
    iput v11, p0, Lk0/cp;->s:I

    .line 19
    iput v12, p0, Lk0/cp;->t:I

    .line 20
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/cp;->u:Lo1/g0;

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lk0/cp;->v:Ljava/lang/String;

    .line 22
    new-instance v0, Lk0/cp$c;

    invoke-direct {v0, p0}, Lk0/cp$c;-><init>(Lk0/cp;)V

    iput-object v0, p0, Lk0/cp;->w:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Lk0/cp$d;

    invoke-direct {v0, p0}, Lk0/cp$d;-><init>(Lk0/cp;)V

    iput-object v0, p0, Lk0/cp;->x:Ljava/lang/Runnable;

    .line 24
    new-instance v0, Lk0/cp$e;

    invoke-direct {v0, p0}, Lk0/cp$e;-><init>(Lk0/cp;)V

    iput-object v0, p0, Lk0/cp;->y:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Lk0/cp$f;

    invoke-direct {v0, p0}, Lk0/cp$f;-><init>(Lk0/cp;)V

    iput-object v0, p0, Lk0/cp;->z:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lk0/cp$g;

    invoke-direct {v0, p0}, Lk0/cp$g;-><init>(Lk0/cp;)V

    iput-object v0, p0, Lk0/cp;->A:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x18
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x36
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x3f
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x20
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x21
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x22
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x23
    .end array-data

    :array_a
    .array-data 4
        0x12
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x13
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_d
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_e
    .array-data 4
        0x50
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x51
        0x1a
    .end array-data

    :array_10
    .array-data 4
        0x20
        0xc
    .end array-data

    :array_11
    .array-data 4
        0x21
        0xd
    .end array-data

    :array_12
    .array-data 4
        0x30
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0x31
        0x1e
    .end array-data

    :array_14
    .array-data 4
        0x32
        0x1f
    .end array-data

    :array_15
    .array-data 4
        0x33
        0x22
    .end array-data

    :array_16
    .array-data 4
        0x34
        0x23
    .end array-data

    :array_17
    .array-data 4
        0x35
        0x20
    .end array-data

    :array_18
    .array-data 4
        0x36
        0x21
    .end array-data

    :array_19
    .array-data 4
        0x37
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x38
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x39
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x3a
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x3b
        0x6
    .end array-data

    :array_1e
    .array-data 4
        0x3c
        0x5
    .end array-data

    :array_1f
    .array-data 4
        0x3d
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x3e
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x3f
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x40
        0x3e
    .end array-data

    :array_23
    .array-data 4
        0x41
        0x5
    .end array-data
.end method

.method public static a3(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_6
    const/16 p0, 0x9

    :goto_0
    return p0

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

.method public static synthetic b3(Lk0/cp;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/cp;->u:Lo1/g0;

    return-object p0
.end method

.method public static synthetic c3(Lk0/cp;IIIII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lk0/cp;->i3(IIIII)V

    return-void
.end method

.method public static synthetic d3(Lk0/cp;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/cp;->m3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/cp;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/cp;->j3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/cp;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/cp;->v:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g3(Lk0/cp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cp;->v:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic h3(Lk0/cp;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/cp;->n3(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 7

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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iput v2, v0, Lk0/mt;->l:I

    .line 8
    sget v3, Lk0/nt;->a:I

    const v4, 0x9901c7

    const v5, 0x5601c8

    if-eq v3, v5, :cond_1

    const v6, 0x7d01c7

    if-eq v3, v6, :cond_0

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 9
    :cond_0
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 10
    :cond_1
    iput v1, v0, Lk0/mt;->i:I

    .line 11
    iput v1, v0, Lk0/mt;->l:I

    .line 12
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 14
    :cond_2
    iget-object v0, p0, Lk0/cp;->u:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 15
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/cp;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget v0, Lk0/nt;->a:I

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    .line 17
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/cp;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/cp;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lw0/e;->b:Lo1/y;

    iget-object v2, p0, Lk0/cp;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/cp;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/cp;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/cp;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    iget-object v0, p0, Lk0/cp;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x2

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1f

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eq v2, v3, :cond_17

    const/16 v10, 0x25

    const/16 v11, 0xc

    const/16 v13, 0xe

    const/16 v14, 0xd

    const/16 v15, 0xf

    if-eq v2, v8, :cond_d

    const/16 v12, 0x9

    if-eq v2, v7, :cond_8

    if-eq v2, v12, :cond_7

    const/16 v10, 0x30

    if-eq v2, v10, :cond_6

    const/16 v10, 0x7f

    const/16 v12, 0x80

    if-eq v2, v14, :cond_5

    if-eq v2, v13, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    const/16 v2, 0x76

    new-array v4, v6, [I

    add-int/lit8 v11, p2, 0x2

    .line 2
    aget-byte v13, v1, v11

    shr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v6

    aput v13, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v6, [I

    .line 3
    aget-byte v13, v1, v11

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v6

    aput v13, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v6, [I

    .line 4
    aget-byte v13, v1, v11

    shr-int/2addr v13, v7

    and-int/2addr v13, v6

    aput v13, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v6, [I

    .line 5
    aget-byte v13, v1, v11

    shr-int/2addr v13, v9

    and-int/2addr v13, v6

    aput v13, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v4, v6, [I

    .line 6
    aget-byte v13, v1, v11

    shr-int/2addr v13, v8

    and-int/2addr v13, v6

    aput v13, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v4, v6, [I

    .line 7
    aget-byte v13, v1, v11

    shr-int/2addr v13, v3

    and-int/2addr v13, v6

    aput v13, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v4, v6, [I

    .line 8
    aget-byte v13, v1, v11

    shr-int/2addr v13, v6

    and-int/2addr v13, v6

    aput v13, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v4, v6, [I

    .line 9
    aget-byte v11, v1, v11

    shr-int/2addr v11, v5

    and-int/2addr v11, v6

    aput v11, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v4, v6, [I

    add-int/lit8 v11, p2, 0x3

    .line 10
    aget-byte v13, v1, v11

    shr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v6

    aput v13, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 11
    aget-byte v4, v1, v11

    shr-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x7

    aput v4, v2, v5

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 12
    aget-byte v4, v1, v11

    shr-int/2addr v4, v3

    and-int/2addr v4, v8

    aput v4, v2, v5

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v4, v6, [I

    add-int/lit8 v10, p2, 0x4

    .line 13
    aget-byte v12, v1, v10

    and-int/2addr v12, v3

    shl-int/2addr v12, v6

    and-int/2addr v9, v12

    aget-byte v11, v1, v11

    shr-int/2addr v11, v5

    and-int/2addr v8, v11

    or-int/2addr v8, v9

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v6, [I

    .line 14
    aget-byte v8, v1, v10

    shr-int/lit8 v7, v8, 0x5

    and-int/lit8 v7, v7, 0x7

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v4, v6, [I

    .line 15
    aget-byte v1, v1, v10

    shr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0x7

    aput v1, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_1
    const/16 v2, 0x67

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 16
    aget-byte v9, v1, v7

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    .line 17
    aget-byte v9, v1, v7

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    .line 18
    aget-byte v9, v1, v7

    shr-int/lit8 v8, v9, 0x3

    and-int/lit8 v8, v8, 0x7

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v6, [I

    .line 19
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/lit8 v7, v7, 0x7

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 20
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 21
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 22
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 23
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 24
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 25
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x9

    .line 26
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xa

    .line 27
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xb

    .line 28
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0xc

    .line 29
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 31
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v5}, Lk0/qt;->a(I)V

    :goto_0
    const/16 v3, 0x75

    new-array v6, v6, [I

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    aput v1, v6, v5

    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    .line 35
    aget-byte v8, v1, v2

    and-int/2addr v8, v4

    add-int/lit8 v10, p2, 0x3

    .line 36
    aget-byte v11, v1, v10

    and-int/2addr v11, v4

    .line 37
    aget-byte v12, v1, v10

    and-int/2addr v12, v4

    if-nez v3, :cond_2

    if-nez v8, :cond_2

    if-nez v11, :cond_2

    if-nez v12, :cond_2

    .line 38
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 39
    :cond_2
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_3

    sget v5, Ll0/c0;->h:I

    if-ne v5, v8, :cond_3

    sget v5, Ll0/c0;->i:I

    if-ne v5, v11, :cond_3

    sget v5, Ll0/c0;->j:I

    if-eq v5, v12, :cond_4

    .line 40
    :cond_3
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_4

    .line 41
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 42
    sput v9, Ll0/c0;->k:I

    .line 43
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 44
    :cond_4
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 45
    sput v8, Ll0/c0;->h:I

    .line 46
    sput v11, Ll0/c0;->i:I

    .line 47
    sput v12, Ll0/c0;->j:I

    .line 48
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    invoke-static {v3}, Lk0/cp;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 49
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Lk0/cp;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 50
    aget-byte v2, v1, v10

    and-int/2addr v2, v4

    invoke-static {v2}, Lk0/cp;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 51
    aget-byte v2, v1, v10

    and-int/2addr v2, v4

    invoke-static {v2}, Lk0/cp;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 52
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    invoke-static {v3}, Lk0/cp;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    .line 53
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Lk0/cp;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 54
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    invoke-static {v3}, Lk0/cp;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    .line 55
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    invoke-static {v1}, Lk0/cp;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_13

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 56
    aget-byte v1, v1, v2

    invoke-static {v1, v5, v12, v6, v10}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_13

    .line 57
    :cond_6
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_7
    const/16 v2, 0x1d

    new-array v4, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 58
    aget-byte v7, v1, v3

    shr-int/2addr v7, v9

    and-int/2addr v7, v15

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v4, v6, [I

    .line 59
    aget-byte v1, v1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v15

    aput v1, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_c

    if-nez v1, :cond_9

    goto :goto_4

    .line 61
    :cond_9
    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v10

    if-eq v2, v6, :cond_b

    const-string v2, "persist.fyt.temperature"

    .line 62
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_a

    goto :goto_2

    :cond_a
    mul-int/2addr v1, v7

    add-int/lit16 v1, v1, 0x258

    goto :goto_3

    :cond_b
    :goto_2
    mul-int/2addr v1, v12

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    const/4 v2, -0x1

    and-int/2addr v1, v2

    .line 63
    :goto_3
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_13

    .line 64
    :cond_c
    :goto_4
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto/16 :goto_13

    :cond_d
    new-array v2, v6, [I

    add-int/lit8 v12, p2, 0x2

    .line 65
    aget-byte v16, v1, v12

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v2, v5

    const/16 v13, 0xa

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 66
    aget-byte v13, v1, v12

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v6

    aput v13, v2, v5

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 67
    aget-byte v13, v1, v12

    shr-int/lit8 v7, v13, 0x5

    and-int/2addr v7, v6

    aput v7, v2, v5

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v7, v6, [I

    .line 68
    aget-byte v11, v1, v12

    shr-int/2addr v11, v9

    and-int/2addr v11, v6

    aput v11, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x39

    new-array v7, v6, [I

    .line 69
    aget-byte v11, v1, v12

    shr-int/lit8 v8, v11, 0x3

    and-int/2addr v8, v6

    aput v8, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 70
    aget-byte v7, v1, v12

    shr-int/lit8 v3, v7, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 71
    aget-byte v3, v1, v12

    shr-int/2addr v3, v6

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 72
    aget-byte v3, v1, v12

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 73
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v15

    packed-switch v3, :pswitch_data_1

    move v3, v5

    move v7, v3

    :goto_5
    move v8, v7

    :goto_6
    move v10, v8

    goto :goto_7

    :pswitch_3
    move v7, v5

    move v8, v7

    move v10, v8

    move v3, v6

    goto :goto_7

    :pswitch_4
    move v3, v5

    move v8, v3

    move v10, v8

    move v7, v6

    goto :goto_7

    :pswitch_5
    move v3, v5

    move v7, v3

    move v10, v7

    move v8, v6

    goto :goto_7

    :pswitch_6
    move v3, v5

    move v7, v3

    move v8, v6

    goto :goto_6

    :pswitch_7
    move v3, v5

    move v7, v3

    move v8, v7

    move v10, v6

    goto :goto_7

    :pswitch_8
    move v3, v5

    move v8, v3

    move v7, v6

    move v10, v7

    goto :goto_7

    :pswitch_9
    move v3, v5

    move v7, v6

    goto :goto_5

    :pswitch_a
    move v3, v5

    move v10, v3

    move v7, v6

    move v8, v7

    :goto_7
    const/16 v11, 0x31

    new-array v12, v6, [I

    aput v3, v12, v5

    .line 74
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v11, v6, [I

    aput v7, v11, v5

    .line 75
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v7, v6, [I

    aput v8, v7, v5

    .line 76
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v7, v6, [I

    aput v10, v7, v5

    .line 77
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v7, v6, [I

    .line 78
    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v15

    aput v2, v7, v5

    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 79
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0x5

    .line 80
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    const-string v10, "persist.fyt.reversetemp"

    .line 81
    invoke-static {v10, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 82
    aget-byte v3, v1, v7

    and-int/2addr v3, v4

    .line 83
    aget-byte v2, v1, v2

    and-int/lit16 v8, v2, 0xff

    :cond_e
    const/16 v2, 0x1b

    if-eqz v3, :cond_11

    const/16 v7, 0xe

    if-eq v3, v7, :cond_10

    if-lt v3, v6, :cond_f

    if-gt v3, v14, :cond_f

    new-array v7, v6, [I

    aput v3, v7, v5

    .line 84
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_f
    new-array v3, v6, [I

    const/4 v7, -0x1

    aput v7, v3, v5

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_10
    new-array v3, v6, [I

    const/4 v7, -0x3

    aput v7, v3, v5

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    new-array v3, v6, [I

    const/4 v7, -0x2

    aput v7, v3, v5

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v2, 0x1c

    if-eqz v8, :cond_14

    const/16 v3, 0xe

    if-eq v8, v3, :cond_13

    if-lt v8, v6, :cond_12

    if-gt v8, v14, :cond_12

    new-array v3, v6, [I

    aput v8, v3, v5

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_12
    new-array v3, v6, [I

    const/4 v7, -0x1

    aput v7, v3, v5

    .line 89
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_13
    new-array v3, v6, [I

    const/4 v7, -0x3

    aput v7, v3, v5

    .line 90
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_14
    new-array v3, v6, [I

    const/4 v7, -0x2

    aput v7, v3, v5

    .line 91
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_9
    add-int/lit8 v2, p2, 0x6

    .line 92
    aget-byte v2, v1, v2

    shr-int/2addr v2, v9

    and-int/2addr v2, v15

    packed-switch v2, :pswitch_data_2

    move v2, v5

    move v3, v2

    :goto_a
    move v7, v3

    :goto_b
    move v8, v7

    goto :goto_c

    :pswitch_b
    move v3, v5

    move v7, v3

    move v8, v7

    move v2, v6

    goto :goto_c

    :pswitch_c
    move v2, v5

    move v7, v2

    move v8, v7

    move v3, v6

    goto :goto_c

    :pswitch_d
    move v2, v5

    move v3, v2

    move v8, v3

    move v7, v6

    goto :goto_c

    :pswitch_e
    move v2, v5

    move v3, v2

    move v7, v6

    goto :goto_b

    :pswitch_f
    move v2, v5

    move v3, v2

    move v7, v3

    move v8, v6

    goto :goto_c

    :pswitch_10
    move v2, v5

    move v7, v2

    move v3, v6

    move v8, v3

    goto :goto_c

    :pswitch_11
    move v2, v5

    move v3, v6

    goto :goto_a

    :pswitch_12
    move v2, v5

    move v8, v2

    move v3, v6

    move v7, v3

    :goto_c
    const/16 v9, 0x32

    new-array v10, v6, [I

    aput v2, v10, v5

    .line 93
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v9, v6, [I

    aput v3, v9, v5

    .line 94
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v6, [I

    aput v7, v3, v5

    .line 95
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v6, [I

    aput v8, v3, v5

    .line 96
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 97
    sget v2, Lk0/nt;->a:I

    const v3, 0x9901c7

    if-eq v2, v3, :cond_16

    const v3, 0x5601c8

    if-ne v2, v3, :cond_15

    goto :goto_d

    :cond_15
    const/16 v2, 0x50

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x7

    .line 98
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_16
    :goto_d
    const/16 v2, 0x37

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 99
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 100
    aget-byte v4, v1, v2

    const-string v10, "persist.syu.reversefrontdoor"

    .line 101
    invoke-static {v10, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_18

    new-array v10, v6, [I

    shr-int/lit8 v11, v4, 0x6

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 102
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v6, [I

    shr-int/lit8 v11, v4, 0x7

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 103
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_18
    new-array v10, v6, [I

    shr-int/lit8 v11, v4, 0x7

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 104
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v6, [I

    shr-int/lit8 v11, v4, 0x6

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 105
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    :goto_e
    new-array v10, v6, [I

    shr-int/lit8 v11, v4, 0x4

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 106
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    new-array v9, v6, [I

    shr-int/lit8 v10, v4, 0x5

    and-int/2addr v10, v6

    aput v10, v9, v5

    .line 107
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    new-array v9, v6, [I

    shr-int/2addr v4, v8

    and-int/2addr v4, v6

    aput v4, v9, v5

    .line 108
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    .line 109
    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aget-byte v7, v1, v2

    shr-int/lit8 v3, v7, 0x2

    and-int/2addr v3, v6

    invoke-static {v4, v3, v5}, Ll0/c0;->a(III)V

    .line 110
    iget v3, v0, Lk0/cp;->f:I

    add-int/lit8 v4, p2, 0x3

    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    if-ne v3, v7, :cond_19

    iget v3, v0, Lk0/cp;->e:I

    aget-byte v7, v1, v2

    shr-int/2addr v7, v5

    and-int/2addr v7, v6

    if-eq v3, v7, :cond_24

    .line 111
    :cond_19
    aget-byte v3, v1, v4

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v6

    iput v3, v0, Lk0/cp;->f:I

    .line 112
    aget-byte v1, v1, v2

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    iput v1, v0, Lk0/cp;->e:I

    .line 113
    sget v2, Lu0/b;->r0:I

    if-nez v2, :cond_24

    if-eq v3, v6, :cond_1c

    if-ne v1, v6, :cond_1a

    goto :goto_f

    :cond_1a
    if-nez v3, :cond_24

    if-nez v1, :cond_24

    .line 114
    iget-boolean v1, v0, Lk0/cp;->h:Z

    if-eqz v1, :cond_1b

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 115
    iget v1, v0, Lk0/cp;->g:I

    invoke-static {v1}, Ly0/h;->t0(I)V

    const-wide/16 v1, 0x64

    .line 116
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 117
    invoke-static {}, Lo1/u;->k()V

    const-wide/16 v1, 0x15e

    .line 118
    invoke-static {v1, v2}, La/i;->a0(J)V

    const-string v1, "persist.lesc.video.ignore"

    const-string v2, "false"

    .line 119
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1b
    iput-boolean v5, v0, Lk0/cp;->h:Z

    goto/16 :goto_13

    .line 121
    :cond_1c
    :goto_f
    iget-boolean v1, v0, Lk0/cp;->h:Z

    if-nez v1, :cond_1e

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 122
    iput-boolean v6, v0, Lk0/cp;->h:Z

    const-string v1, "persist.lesc.video.ignore"

    const-string v2, "true"

    .line 123
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    .line 124
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 125
    invoke-static {}, Lo1/u;->z()I

    .line 126
    sget v1, Ly0/f;->x:I

    if-nez v1, :cond_1d

    sget v1, Ly0/f;->c:I

    sget v2, Ly0/f;->R:I

    mul-int/2addr v1, v2

    sget v2, Ly0/f;->S:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    goto :goto_10

    :cond_1d
    const/4 v1, 0x0

    :goto_10
    float-to-int v1, v1

    .line 127
    sget v2, Ly0/f;->c:I

    iput v2, v0, Lk0/cp;->g:I

    .line 128
    invoke-static {v1}, Ly0/h;->t0(I)V

    .line 129
    :cond_1e
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_13

    .line 130
    :cond_1f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v2, p2, 0x2

    .line 131
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    .line 132
    iput v1, v0, Lk0/cp;->c:I

    move v2, v5

    .line 133
    :goto_11
    iget-object v3, v0, Lk0/cp;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_21

    .line 134
    iget v7, v0, Lk0/cp;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_20

    if-eqz v7, :cond_21

    .line 135
    iput v2, v0, Lk0/cp;->b:I

    goto :goto_12

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_21
    :goto_12
    if-eqz v1, :cond_22

    .line 136
    array-length v1, v3

    if-ge v2, v1, :cond_24

    .line 137
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_13

    .line 138
    :cond_22
    iget v1, v0, Lk0/cp;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_23

    if-eq v1, v4, :cond_23

    .line 139
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 140
    :cond_23
    iput v4, v0, Lk0/cp;->b:I

    :cond_24
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/cp;->u:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/cp;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/cp;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/cp;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/cp;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/cp;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/cp;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/cp;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/cp;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/cp;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x88

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

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p4, p1, v4

    const/16 p4, 0xc8

    aput p4, p1, v3

    aput p3, p1, v2

    .line 1
    aget p4, p2, v4

    aput p4, p1, v1

    aget p4, p2, v3

    aput p4, p1, v0

    aget p4, p2, v2

    aput p4, p1, p3

    const/4 p3, 0x6

    aget p4, p2, v1

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    aget p1, p2, v4

    aget p3, p2, v3

    aget v3, p2, v2

    aget v4, p2, v1

    aget v5, p2, v0

    move-object v0, p0

    move v1, p1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lk0/cp;->i3(IIIII)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    sget p1, Lk0/nt;->U:I

    if-ne p1, v3, :cond_1

    .line 4
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v4

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/cp;->l3(I)V

    .line 6
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/cp;->k3(I)V

    goto :goto_0

    .line 7
    :pswitch_4
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 p3, 0xfe

    if-ne p1, p3, :cond_0

    .line 8
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/cp;->m3(I)V

    goto :goto_0

    .line 9
    :cond_0
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 p3, 0xf9

    if-ne p1, p3, :cond_1

    .line 10
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/cp;->j3(I)V

    goto :goto_0

    :pswitch_5
    new-array p1, v0, [I

    aput p4, p1, v4

    const/16 p3, 0xc0

    aput p3, p1, v3

    aput v3, p1, v2

    .line 11
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, 0xc6

    aput p3, p1, v3

    aput v2, p1, v2

    .line 12
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array p1, v0, [I

    aput p4, p1, v4

    const/16 p3, 0x88

    aput p3, p1, v3

    aput v3, p1, v2

    .line 13
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_8
    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v2, p1, v2

    .line 14
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i3(IIIII)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x62

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p2, v1, v2

    const/16 v3, 0x63

    .line 2
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p3, v1, v2

    const/16 v3, 0x64

    .line 3
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p4, v1, v2

    const/16 v3, 0x65

    .line 4
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p5, v1, v2

    const/16 v3, 0x66

    .line 5
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0x99

    aput v3, v1, v0

    const/4 v0, 0x2

    const/4 v3, 0x5

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p1, v1, v0

    const/4 v0, 0x4

    aput p2, v1, v0

    aput p3, v1, v3

    const/4 v0, 0x6

    aput p4, v1, v0

    const/4 v0, 0x7

    aput p5, v1, v0

    .line 6
    invoke-static {v1}, Lz/k;->s([I)V

    .line 7
    sput p1, Lk0/cp;->F:I

    .line 8
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/cp;->F:I

    if-eq p1, v1, :cond_0

    .line 9
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    .line 10
    :cond_0
    sput p2, Lk0/cp;->G:I

    .line 11
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    const/16 p2, 0x13

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/cp;->G:I

    if-eq p1, v0, :cond_1

    .line 12
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    invoke-virtual {p1, p2, v0}, Lo1/g0;->g(II)V

    .line 13
    :cond_1
    sput p3, Lk0/cp;->H:I

    .line 14
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/cp;->H:I

    if-eq p1, p3, :cond_2

    .line 15
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    .line 16
    :cond_2
    sput p4, Lk0/cp;->I:I

    .line 17
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    const/16 p2, 0x15

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/cp;->I:I

    if-eq p1, p3, :cond_3

    .line 18
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    .line 19
    :cond_3
    sput p5, Lk0/cp;->J:I

    .line 20
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    const/16 p2, 0x16

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/cp;->J:I

    if-eq p1, p3, :cond_4

    .line 21
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_4
    return-void
.end method

.method public final j3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x87

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update   U_CAR_BENZ_TYPE = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zed"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sput p1, Lk0/cp;->E:I

    .line 4
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/cp;->E:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final k3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x85

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/cp;->D:I

    .line 3
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/cp;->D:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/cp;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.height"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    sget v0, Lk0/cp;->D:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final l3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x84

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/cp;->C:I

    .line 3
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/cp;->C:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/cp;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.width"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    sget v0, Lk0/cp;->C:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final m3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x86

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/cp;->B:I

    .line 3
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object p1

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lf1/o;->e(I)Lf1/q;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    instance-of v1, p1, Lf1/l;

    if-eqz v1, :cond_4

    .line 5
    sget v1, Lk0/cp;->B:I

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lf1/l;

    const/16 v0, 0xdb

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 7
    :cond_1
    check-cast p1, Lf1/l;

    const/16 v0, 0xda

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 8
    :cond_2
    check-cast p1, Lf1/l;

    const/16 v0, 0xde

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 9
    :cond_3
    check-cast p1, Lf1/l;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/cp;->B:I

    if-eq p1, v1, :cond_5

    .line 11
    iget-object p1, p0, Lk0/cp;->u:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_5
    return-void
.end method

.method public final n3(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 3
    array-length v0, p1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p1

    :goto_0
    add-int/lit8 v0, v1, 0x5

    .line 4
    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    .line 5
    aput v2, v0, v3

    const/16 v2, 0x85

    const/4 v4, 0x1

    .line 6
    aput v2, v0, v4

    add-int/lit8 v2, v1, 0x2

    const/4 v5, 0x2

    .line 7
    aput v2, v0, v5

    const/4 v2, 0x3

    .line 8
    aput v4, v0, v2

    const/4 v2, 0x4

    const/16 v4, 0xf

    if-le v1, v4, :cond_2

    add-int/lit8 v5, v1, -0xf

    and-int/2addr v4, v5

    or-int/lit16 v4, v4, 0xf0

    .line 9
    aput v4, v0, v2

    goto :goto_1

    :cond_2
    shl-int/lit8 v4, v1, 0x4

    and-int/lit16 v4, v4, 0xf0

    .line 10
    aput v4, v0, v2

    :goto_1
    if-ge v3, v1, :cond_3

    add-int/lit8 v2, v3, 0x5

    .line 11
    aget-byte v4, p1, v3

    aput v4, v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_3
    sget p1, Lu0/b;->D:I

    const/16 v1, 0xc

    if-ne p1, v1, :cond_4

    .line 13
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_4
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x7b
        0x2
        0x0
        0x0
    .end array-data
.end method
