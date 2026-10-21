.class public Lk0/ya;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:J

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:I

.field public s:Z

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ya;->b:I

    .line 3
    iput v0, p0, Lk0/ya;->d:I

    const/16 v1, 0x18

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ya;->e:[[I

    .line 5
    new-instance v1, Lk0/ya$a;

    invoke-direct {v1, p0}, Lk0/ya$a;-><init>(Lk0/ya;)V

    iput-object v1, p0, Lk0/ya;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/ya$b;

    invoke-direct {v1, p0}, Lk0/ya$b;-><init>(Lk0/ya;)V

    iput-object v1, p0, Lk0/ya;->g:Ljava/lang/Runnable;

    .line 7
    iput v0, p0, Lk0/ya;->h:I

    .line 8
    new-instance v1, Lk0/ya$c;

    invoke-direct {v1, p0}, Lk0/ya$c;-><init>(Lk0/ya;)V

    iput-object v1, p0, Lk0/ya;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lk0/ya$d;

    invoke-direct {v1, p0}, Lk0/ya$d;-><init>(Lk0/ya;)V

    iput-object v1, p0, Lk0/ya;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/ya$e;

    invoke-direct {v1, p0}, Lk0/ya$e;-><init>(Lk0/ya;)V

    iput-object v1, p0, Lk0/ya;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lk0/ya$f;

    invoke-direct {v1, p0}, Lk0/ya$f;-><init>(Lk0/ya;)V

    iput-object v1, p0, Lk0/ya;->l:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 12
    iput-wide v1, p0, Lk0/ya;->m:J

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lk0/ya;->n:I

    .line 14
    new-instance v2, Lk0/ya$g;

    invoke-direct {v2, p0}, Lk0/ya$g;-><init>(Lk0/ya;)V

    iput-object v2, p0, Lk0/ya;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v2, Lk0/ya$h;

    invoke-direct {v2, p0}, Lk0/ya$h;-><init>(Lk0/ya;)V

    iput-object v2, p0, Lk0/ya;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v2, Lk0/ya$i;

    invoke-direct {v2, p0}, Lk0/ya$i;-><init>(Lk0/ya;)V

    iput-object v2, p0, Lk0/ya;->q:Ljava/lang/Runnable;

    .line 17
    iput v1, p0, Lk0/ya;->r:I

    .line 18
    iput-boolean v0, p0, Lk0/ya;->s:Z

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lk0/ya;->t:Ljava/lang/String;

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x60
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x64
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x66
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x62
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x67
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x65
        0x21
    .end array-data

    :array_10
    .array-data 4
        0x63
        0x21
    .end array-data

    :array_11
    .array-data 4
        0x61
        0x20
    .end array-data

    :array_12
    .array-data 4
        0x74
        0x21
    .end array-data

    :array_13
    .array-data 4
        0x75
        0x20
    .end array-data

    :array_14
    .array-data 4
        0x71
        0x6
    .end array-data

    :array_15
    .array-data 4
        0x72
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x73
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x70
        0x10
    .end array-data
.end method

.method public static synthetic f3(Lk0/ya;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/ya;->a3()V

    return-void
.end method

.method public static synthetic g3(Lk0/ya;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/ya;->c3()V

    return-void
.end method

.method public static synthetic h3(Lk0/ya;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ya;->v3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/ya;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/ya;->m:J

    return-wide v0
.end method

.method public static synthetic j3(Lk0/ya;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/ya;->m:J

    return-wide p1
.end method

.method public static synthetic k3(Lk0/ya;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ya;->n:I

    return p0
.end method

.method public static synthetic l3(Lk0/ya;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ya;->n:I

    return p1
.end method

.method public static synthetic m3(Lk0/ya;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/ya;->u3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic n3(Lk0/ya;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ya;->r:I

    return p0
.end method

.method public static synthetic o3(Lk0/ya;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ya;->r:I

    return p1
.end method

.method public static synthetic p3(Lk0/ya;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ya;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic q3(Lk0/ya;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ya;->t:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic r3(Lk0/ya;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/ya;->w3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic s3(Lk0/ya;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/ya;->s:Z

    return p0
.end method

.method public static synthetic t3(Lk0/ya;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/ya;->s:Z

    return p1
.end method


# virtual methods
.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/ya;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x1

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    const-string v3, "com.syu.canbus"

    .line 7
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    iput v2, v0, Lk0/mt;->e:I

    .line 9
    iput v2, v0, Lk0/mt;->f:I

    .line 10
    iput v1, v0, Lk0/mt;->g:I

    .line 11
    iput v2, v0, Lk0/mt;->i:I

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 14
    :cond_0
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ya;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/ya;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/ya;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ya;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    iget-object v0, p0, Lk0/ya;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 19
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/ya;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/ya;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ya;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ya;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    iget-object v0, p0, Lk0/ya;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 24
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ya;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, -0x6f

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_19

    const/16 v1, -0x6d

    const/16 v4, 0x6a

    const/16 v5, 0x68

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eq v0, v1, :cond_18

    const/16 v1, 0x29

    const/4 v8, 0x3

    if-eq v0, v1, :cond_17

    const/16 v1, 0x55

    const/16 v9, 0x9

    const/16 v10, 0xff

    if-eq v0, v1, :cond_13

    const v1, 0xff00

    if-eq v0, v5, :cond_12

    if-eq v0, v4, :cond_11

    const/16 v1, 0x74

    if-eq v0, v1, :cond_10

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_f

    const/16 v1, 0x30

    if-eq v0, v1, :cond_e

    const/16 p3, 0xd

    const/16 v1, 0x12

    const/4 v4, 0x5

    const/4 v5, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/2addr p2, v2

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v3

    aput p3, p2, v7

    .line 4
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v3

    aput p3, p2, v7

    .line 5
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v3

    aput p3, p2, v7

    .line 6
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v3

    aput p3, p2, v7

    .line 7
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v3

    aput p3, p2, v7

    .line 8
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v3

    aput p3, p2, v7

    .line 9
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/2addr p1, v8

    and-int/2addr p1, v3

    aput p1, p2, v7

    .line 10
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 11
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte v0, p1, p3

    and-int/2addr v0, v10

    add-int/lit8 v1, p2, 0x3

    .line 13
    aget-byte v2, p1, v1

    and-int/2addr v2, v10

    add-int/lit8 v6, p2, 0x4

    .line 14
    aget-byte v8, p1, v6

    and-int/2addr v8, v10

    add-int/2addr p2, v4

    .line 15
    aget-byte v4, p1, p2

    and-int/2addr v4, v10

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-nez v8, :cond_1

    if-nez v4, :cond_1

    .line 16
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v7, Ll0/c0;->g:I

    if-ne v7, v0, :cond_2

    sget v7, Ll0/c0;->h:I

    if-ne v7, v2, :cond_2

    sget v7, Ll0/c0;->i:I

    if-ne v7, v8, :cond_2

    sget v7, Ll0/c0;->j:I

    if-eq v7, v4, :cond_3

    .line 18
    :cond_2
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_3

    .line 19
    invoke-static {v3}, Lu0/d;->C2(I)V

    .line 20
    sput v5, Ll0/c0;->k:I

    .line 21
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v0, Ll0/c0;->g:I

    .line 23
    sput v2, Ll0/c0;->h:I

    .line 24
    sput v8, Ll0/c0;->i:I

    .line 25
    sput v4, Ll0/c0;->j:I

    .line 26
    aget-byte p3, p1, p3

    and-int/2addr p3, v10

    invoke-virtual {p0, p3}, Lk0/ya;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 27
    aget-byte p3, p1, v1

    and-int/2addr p3, v10

    invoke-virtual {p0, p3}, Lk0/ya;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 28
    aget-byte p3, p1, v6

    and-int/2addr p3, v10

    invoke-virtual {p0, p3}, Lk0/ya;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 29
    aget-byte p1, p1, p2

    and-int/2addr p1, v10

    invoke-virtual {p0, p1}, Lk0/ya;->d3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    .line 30
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/lit8 p3, p2, 0x2

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v10

    invoke-virtual {p0, p3}, Lk0/ya;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v10

    invoke-virtual {p0, p3}, Lk0/ya;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 33
    aget-byte p3, p1, p3

    and-int/2addr p3, v10

    invoke-virtual {p0, p3}, Lk0/ya;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v4

    .line 34
    aget-byte p1, p1, p2

    and-int/2addr p1, v10

    invoke-virtual {p0, p1}, Lk0/ya;->d3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 35
    aget-byte v0, p1, v0

    new-array v4, v3, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v3

    aput v5, v4, v7

    .line 36
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v5, v3, [I

    shr-int/lit8 v6, v0, 0x6

    and-int/2addr v6, v3

    aput v6, v5, v7

    .line 37
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v5, v3, [I

    shr-int/lit8 v6, v0, 0x5

    and-int/2addr v6, v3

    aput v6, v5, v7

    .line 38
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v5, v3, [I

    shr-int/lit8 v6, v0, 0x4

    and-int/2addr v6, v3

    aput v6, v5, v7

    .line 39
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v3, [I

    shr-int/lit8 v5, v0, 0x3

    and-int/2addr v5, v3

    aput v5, v4, v7

    .line 40
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v4, v3, [I

    shr-int/lit8 v5, v0, 0x2

    and-int/2addr v5, v3

    aput v5, v4, v7

    .line 41
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    new-array p3, v3, [I

    shr-int/2addr v0, v3

    and-int/2addr v0, v3

    aput v0, p3, v7

    const/16 v0, 0xf

    .line 42
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 43
    aget-byte p3, p1, p3

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v3

    aput v5, v4, v7

    .line 44
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v3

    aput v5, v4, v7

    .line 45
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/lit8 v6, v5, 0x1

    aput v6, v4, v7

    .line 46
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x4d

    new-array v4, v3, [I

    and-int/lit8 v5, v5, 0x7

    aput v5, v4, v7

    .line 47
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v4, v3, [I

    and-int/2addr p3, v0

    aput p3, v4, v7

    .line 48
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 49
    invoke-static {p3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/16 v0, 0x1b

    if-eqz p3, :cond_4

    new-array p3, v3, [I

    add-int/lit8 v1, p2, 0x5

    .line 50
    aget-byte v1, p1, v1

    and-int/2addr v1, v10

    aput v1, p3, v7

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1c

    new-array v0, v3, [I

    add-int/lit8 v1, p2, 0x4

    .line 51
    aget-byte v1, p1, v1

    and-int/2addr v1, v10

    aput v1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    new-array p3, v3, [I

    add-int/lit8 v1, p2, 0x4

    .line 52
    aget-byte v1, p1, v1

    and-int/2addr v1, v10

    aput v1, p3, v7

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1c

    new-array v0, v3, [I

    add-int/lit8 v1, p2, 0x5

    .line 53
    aget-byte v1, p1, v1

    and-int/2addr v1, v10

    aput v1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 p3, p2, 0x6

    .line 54
    aget-byte p3, p1, p3

    const/16 v0, 0x25

    new-array v1, v3, [I

    shr-int/lit8 v4, p3, 0x6

    and-int/2addr v4, v8

    aput v4, v1, v7

    .line 55
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x41

    new-array v1, v3, [I

    shr-int/lit8 v4, p3, 0x4

    and-int/2addr v4, v3

    aput v4, v1, v7

    .line 56
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v1, v3, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v3

    aput p3, v1, v7

    .line 57
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x7

    .line 58
    aget-byte p1, p1, p2

    add-int/lit16 p1, p1, 0x3e8

    .line 59
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    .line 60
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    add-int/lit8 v0, p2, 0x2

    .line 61
    aget-byte v0, p1, v0

    add-int/2addr p2, v8

    .line 62
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    .line 63
    iput p2, p0, Lk0/ya;->d:I

    move p2, v7

    .line 64
    :goto_3
    iget-object v0, p0, Lk0/ya;->e:[[I

    array-length v5, v0

    if-ge p2, v5, :cond_6

    .line 65
    iget v5, p0, Lk0/ya;->d:I

    aget-object v11, v0, p2

    aget v11, v11, v7

    if-ne v5, v11, :cond_5

    if-eqz v5, :cond_6

    .line 66
    iput p2, p0, Lk0/ya;->c:I

    goto :goto_4

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 67
    :cond_6
    :goto_4
    iget v5, p0, Lk0/ya;->d:I

    if-eq v5, v9, :cond_c

    if-eq v5, v6, :cond_9

    and-int/2addr p1, v10

    if-ne p1, v3, :cond_7

    .line 68
    array-length p1, v0

    if-ge p2, p1, :cond_1b

    .line 69
    aget-object p1, v0, p2

    aget p1, p1, v3

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_7
    if-nez p1, :cond_1b

    .line 70
    iget p1, p0, Lk0/ya;->c:I

    array-length p2, v0

    if-ge p1, p2, :cond_8

    if-eq p1, v10, :cond_8

    .line 71
    aget-object p1, v0, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 72
    :cond_8
    iput v10, p0, Lk0/ya;->c:I

    goto/16 :goto_7

    :cond_9
    and-int/2addr p1, v10

    if-ne p1, v3, :cond_1b

    .line 73
    sget p1, Lk0/nt;->c:I

    const/16 p2, 0x1a

    if-eq p1, v2, :cond_a

    .line 74
    invoke-static {p2, v7}, Ll0/b0;->l0(II)V

    .line 75
    invoke-static {p2, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 76
    :cond_a
    sget p1, Lh0/c;->E:I

    if-eq p1, v8, :cond_b

    if-eq p1, v4, :cond_b

    .line 77
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 78
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 79
    :cond_b
    invoke-static {p2, v7}, Ll0/b0;->l0(II)V

    .line 80
    invoke-static {p2, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_c
    and-int/2addr p1, v10

    if-ne p1, v3, :cond_1b

    .line 81
    sget p1, Lk0/nt;->c:I

    if-eq p1, v2, :cond_d

    .line 82
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 83
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 84
    :cond_d
    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    .line 85
    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 86
    :cond_e
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 87
    :cond_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/2addr p2, v2

    .line 88
    aget-byte p1, p1, p2

    and-int/2addr p1, v10

    invoke-virtual {p0, p1}, Lk0/ya;->e3(I)V

    goto/16 :goto_7

    :cond_10
    const/16 p3, 0x6d

    new-array v0, v3, [I

    add-int/2addr p2, v8

    .line 89
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v8

    aput p1, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_11
    const/16 p3, 0x62

    new-array v0, v3, [I

    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v4, p1, v2

    and-int/2addr v4, v10

    add-int/2addr p2, v8

    aget-byte v5, p1, p2

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v1

    add-int/2addr v4, v5

    aput v4, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x407

    new-array v0, v3, [I

    .line 91
    aget-byte v2, p1, v2

    and-int/2addr v2, v10

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    and-int/2addr p1, v1

    add-int/2addr v2, p1

    aput v2, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_12
    const/16 p3, 0x63

    new-array v0, v3, [I

    add-int/lit8 v2, p2, 0x2

    .line 92
    aget-byte v4, p1, v2

    and-int/2addr v4, v10

    add-int/2addr p2, v8

    aget-byte v5, p1, p2

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v1

    add-int/2addr v4, v5

    aput v4, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x408

    new-array v0, v3, [I

    .line 93
    aget-byte v2, p1, v2

    and-int/2addr v2, v10

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    and-int/2addr p1, v1

    add-int/2addr v2, p1

    aput v2, v0, v7

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 94
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/2addr p2, v9

    .line 95
    aget-byte p1, p1, p2

    and-int/2addr p1, v10

    if-ne p1, v10, :cond_14

    goto/16 :goto_7

    :cond_14
    const/16 p2, 0x28

    if-le p1, p2, :cond_16

    const/16 p3, 0x5a

    if-le p1, p3, :cond_15

    const/16 p1, 0x32

    goto :goto_5

    :cond_15
    sub-int/2addr p1, p2

    :goto_5
    mul-int/2addr p1, v6

    add-int/lit16 p1, p1, 0x3e8

    goto :goto_6

    :cond_16
    sub-int/2addr p2, p1

    mul-int/2addr p2, v6

    rsub-int p1, p2, 0x3e8

    .line 96
    :goto_6
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :cond_17
    add-int/lit8 p3, p2, 0x2

    .line 97
    aget-byte p3, p1, p3

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    const/16 p2, 0x14c8

    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_18
    add-int/lit8 p3, p2, 0x2

    .line 98
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 99
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 100
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x5

    .line 101
    aget-byte v2, p1, v2

    add-int/lit8 v8, p2, 0x6

    .line 102
    aget-byte v8, p1, v8

    add-int/lit8 v9, p2, 0x7

    .line 103
    aget-byte v9, p1, v9

    add-int/lit8 v10, p2, 0x8

    .line 104
    aget-byte v10, p1, v10

    add-int/lit8 v11, p2, 0x9

    .line 105
    aget-byte v11, p1, v11

    add-int/2addr p2, v6

    .line 106
    aget-byte p1, p1, p2

    const/16 p2, 0x64

    new-array v6, v3, [I

    aput p3, v6, v7

    .line 107
    invoke-static {p2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x65

    new-array p3, v3, [I

    aput v0, p3, v7

    .line 108
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x66

    new-array p3, v3, [I

    aput v1, p3, v7

    .line 109
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x67

    new-array p3, v3, [I

    aput v2, p3, v7

    .line 110
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    aput v8, p2, v7

    .line 111
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x69

    new-array p3, v3, [I

    aput v9, p3, v7

    .line 112
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    aput v10, p2, v7

    .line 113
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6b

    new-array p3, v3, [I

    aput v11, p3, v7

    .line 114
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x6c

    new-array p3, v3, [I

    aput p1, p3, v7

    .line 115
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 116
    :cond_19
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_1b

    add-int/2addr p2, v2

    .line 117
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_1a

    .line 118
    invoke-static {}, Lo1/u;->j()I

    goto :goto_7

    .line 119
    :cond_1a
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.syu.aux"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 120
    invoke-static {}, Lo1/u;->k()V

    :cond_1b
    :goto_7
    return-void

    nop

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
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ya;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ya;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/ya;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/ya;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ya;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/ya;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/ya;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/ya;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ya;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ya;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/ya;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ya;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/ya;->j:Ljava/lang/Runnable;

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
    .locals 6

    const/4 p3, 0x4

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p1, v3, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v1, :cond_2

    const/16 v5, 0x3eb

    if-eq p1, v5, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_5

    .line 1
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, -0x3a

    aput p4, p1, v3

    aput v4, p1, v4

    aput v4, p1, v1

    .line 2
    aget p2, p2, v2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    int-to-byte p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, -0x1c

    aput p4, p1, v3

    aput v4, p1, v4

    .line 4
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, -0x20

    aput p4, p1, v3

    aput v4, p1, v4

    .line 6
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, -0x7d

    aput p4, p1, v3

    aput v4, p1, v4

    .line 8
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final a3()V
    .locals 14

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-virtual {p0, v1}, Lk0/ya;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/16 v9, 0x9

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    if-eq v5, v10, :cond_1

    if-eq v5, v4, :cond_0

    if-eq v5, v9, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 4
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v8

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 5
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto/16 :goto_1

    .line 7
    :cond_1
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_2

    aput v3, v1, v10

    .line 8
    sget v2, Lo0/e;->B:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 9
    sget v2, Lo0/e;->C:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 10
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v6

    .line 11
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 12
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto :goto_1

    .line 13
    :cond_2
    sget v2, Lo0/e;->C:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 14
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v8

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 15
    sget v2, Lo0/e;->r:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 16
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto :goto_1

    .line 17
    :cond_3
    sget v5, Lw0/d;->i:I

    .line 18
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 19
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_4

    aput v2, v1, v10

    goto :goto_0

    :cond_4
    const v13, 0x10001

    if-ne v12, v13, :cond_5

    const/4 v12, 0x2

    aput v12, v1, v10

    goto :goto_0

    :cond_5
    const v13, 0x10002

    if-ne v12, v13, :cond_6

    aput v3, v1, v10

    goto :goto_0

    :cond_6
    const/16 v13, 0x10

    if-nez v12, :cond_7

    aput v13, v1, v10

    goto :goto_0

    :cond_7
    if-ne v12, v2, :cond_8

    aput v13, v1, v10

    :cond_8
    :goto_0
    and-int/lit16 v10, v5, 0xff

    aput v10, v1, v7

    shr-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v8

    .line 20
    rem-int/2addr v11, v8

    add-int/2addr v11, v2

    aput v11, v1, v6

    aput v3, v1, v4

    aput v3, v1, v9

    :goto_1
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_9

    add-int/lit8 v4, v3, 0x1

    .line 21
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 22
    :cond_9
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3([I)V
    .locals 8

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x10

    const/16 v3, 0xb

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v6, p1, v7

    .line 4
    aput v6, p1, v1

    goto :goto_0

    .line 5
    :pswitch_1
    aput v4, p1, v7

    .line 6
    aput v2, p1, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 7
    aput v0, p1, v7

    const/16 v0, 0x12

    .line 8
    aput v0, p1, v1

    goto :goto_0

    .line 9
    :pswitch_3
    aput v1, p1, v7

    .line 10
    aput v6, p1, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 11
    aput v0, p1, v7

    const/16 v0, 0x30

    .line 12
    aput v0, p1, v1

    goto :goto_0

    .line 13
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    .line 14
    aput v7, p1, v7

    .line 15
    aput v2, p1, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x11

    if-ne v0, v7, :cond_2

    .line 16
    aput v4, p1, v7

    .line 17
    aput v2, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 18
    aput v4, p1, v7

    .line 19
    aput v2, p1, v1

    goto :goto_0

    .line 20
    :pswitch_6
    aput v3, p1, v7

    .line 21
    aput v6, p1, v1

    goto :goto_0

    .line 22
    :pswitch_7
    aput v3, p1, v7

    .line 23
    aput v6, p1, v1

    goto :goto_0

    .line 24
    :pswitch_8
    aput v5, p1, v7

    .line 25
    aput v5, p1, v1

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x80

    aput v2, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x24

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    :cond_4
    :goto_0
    return v0
.end method

.method public final e3(I)V
    .locals 4

    const/16 v0, 0x14d

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1
    :pswitch_1
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 2
    :pswitch_2
    sget p1, Lh0/c;->E:I

    if-ne p1, v1, :cond_0

    .line 3
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v3}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/16 v0, 0x214

    invoke-virtual {p1, v0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    .line 6
    :pswitch_4
    invoke-static {}, Lo1/u;->Z0()I

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 8
    :pswitch_6
    invoke-static {}, Lo1/u;->j()I

    goto :goto_0

    .line 9
    :pswitch_7
    sget p1, Lk0/nt;->a:I

    if-ne p1, v0, :cond_1

    .line 10
    invoke-static {}, Lo1/u;->q()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lo1/u;->j()I

    goto :goto_0

    .line 12
    :pswitch_8
    sget p1, Lk0/nt;->a:I

    if-ne p1, v0, :cond_2

    .line 13
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lo1/u;->q()V

    goto :goto_0

    :pswitch_9
    if-eq p1, v1, :cond_3

    .line 15
    invoke-static {}, Lo1/u;->E()I

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 17
    :pswitch_a
    invoke-static {}, Lo1/u;->x0()V

    if-ne p1, v2, :cond_4

    new-array p1, v2, [I

    aput v3, p1, v3

    .line 18
    invoke-static {v3, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    const/high16 v1, 0x10000

    if-ne p1, v0, :cond_5

    new-array p1, v2, [I

    aput v1, p1, v3

    .line 19
    invoke-static {v3, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    new-array p1, v2, [I

    const v0, 0x10001

    aput v0, p1, v3

    .line 20
    invoke-static {v3, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    new-array p1, v2, [I

    aput v1, p1, v3

    .line 21
    invoke-static {v3, p1}, Lw0/f;->J(I[I)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final u3(BLjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_1

    .line 3
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    shl-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 4
    aput-byte v8, v2, v7

    add-int/2addr v7, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 p2, v1, 0xff

    add-int/lit8 p2, p2, 0x5

    .line 6
    new-array p2, p2, [I

    const/16 v0, -0x1d

    .line 7
    aput v0, p2, v3

    .line 8
    aput p1, p2, v5

    const/4 p1, 0x2

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    .line 9
    aput v0, p2, p1

    const/4 p1, 0x3

    const/16 v0, 0x11

    .line 10
    aput v0, p2, p1

    const/4 p1, 0x4

    :goto_1
    if-ge v3, v1, :cond_2

    add-int v0, p1, v3

    .line 11
    aget-byte v4, v2, v3

    aput v4, p2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method

.method public final v3(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, -0x1e

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final w3(ILjava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x5

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v1, v4

    const/16 v3, -0x3b

    const/4 v5, 0x1

    .line 4
    aput v3, v1, v5

    .line 5
    array-length v3, v0

    const/4 v6, 0x2

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput v3, v1, v6

    const/4 v3, 0x3

    int-to-byte p1, p1

    .line 6
    aput p1, v1, v3

    const/4 p1, 0x4

    .line 7
    aput v5, v1, p1

    .line 8
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_1

    add-int p1, v2, v4

    .line 9
    aget-char v3, v0, v4

    int-to-byte v3, v3

    aput v3, v1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
