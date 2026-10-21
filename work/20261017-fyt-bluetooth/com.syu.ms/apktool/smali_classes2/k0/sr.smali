.class public Lk0/sr;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static w:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Lo1/g0;

.field public final j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:J

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:I

.field public u:Z

.field public v:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/sr;->b:I

    .line 3
    iput v0, p0, Lk0/sr;->d:I

    const/16 v1, 0x1b

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

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    iput-object v1, p0, Lk0/sr;->e:[[I

    .line 5
    iput v0, p0, Lk0/sr;->f:I

    .line 6
    new-instance v1, Lk0/sr$a;

    invoke-direct {v1, p0}, Lk0/sr$a;-><init>(Lk0/sr;)V

    iput-object v1, p0, Lk0/sr;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/sr$b;

    invoke-direct {v1, p0}, Lk0/sr$b;-><init>(Lk0/sr;)V

    iput-object v1, p0, Lk0/sr;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-direct {v1, v3, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/sr;->i:Lo1/g0;

    .line 9
    iput v2, p0, Lk0/sr;->j:I

    .line 10
    iput v0, p0, Lk0/sr;->k:I

    .line 11
    new-instance v1, Lk0/sr$c;

    invoke-direct {v1, p0}, Lk0/sr$c;-><init>(Lk0/sr;)V

    iput-object v1, p0, Lk0/sr;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/sr$d;

    invoke-direct {v1, p0}, Lk0/sr$d;-><init>(Lk0/sr;)V

    iput-object v1, p0, Lk0/sr;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lk0/sr$e;

    invoke-direct {v1, p0}, Lk0/sr$e;-><init>(Lk0/sr;)V

    iput-object v1, p0, Lk0/sr;->n:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 14
    iput-wide v1, p0, Lk0/sr;->o:J

    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lk0/sr;->p:I

    .line 16
    new-instance v2, Lk0/sr$f;

    invoke-direct {v2, p0}, Lk0/sr$f;-><init>(Lk0/sr;)V

    iput-object v2, p0, Lk0/sr;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v2, Lk0/sr$g;

    invoke-direct {v2, p0}, Lk0/sr$g;-><init>(Lk0/sr;)V

    iput-object v2, p0, Lk0/sr;->r:Ljava/lang/Runnable;

    .line 18
    new-instance v2, Lk0/sr$h;

    invoke-direct {v2, p0}, Lk0/sr$h;-><init>(Lk0/sr;)V

    iput-object v2, p0, Lk0/sr;->s:Ljava/lang/Runnable;

    .line 19
    iput v1, p0, Lk0/sr;->t:I

    .line 20
    iput-boolean v0, p0, Lk0/sr;->u:Z

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lk0/sr;->v:Ljava/lang/String;

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
        0x17
        0x15
    .end array-data

    :array_a
    .array-data 4
        0x18
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x36
    .end array-data

    :array_c
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_d
    .array-data 4
        0x60
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x64
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x66
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x62
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x67
        0x20
    .end array-data

    :array_12
    .array-data 4
        0x65
        0x21
    .end array-data

    :array_13
    .array-data 4
        0x63
        0x21
    .end array-data

    :array_14
    .array-data 4
        0x61
        0x20
    .end array-data

    :array_15
    .array-data 4
        0x70
        0x10
    .end array-data

    :array_16
    .array-data 4
        0x71
        0x6
    .end array-data

    :array_17
    .array-data 4
        0x72
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x73
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x74
        0x1f
    .end array-data

    :array_1a
    .array-data 4
        0x75
        0x1e
    .end array-data
.end method

.method public static synthetic e3(Lk0/sr;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/sr;->a3()V

    return-void
.end method

.method public static synthetic f3(Lk0/sr;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/sr;->c3()V

    return-void
.end method

.method public static synthetic g3(Lk0/sr;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/sr;->u:Z

    return p0
.end method

.method public static synthetic h3(Lk0/sr;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/sr;->u:Z

    return p1
.end method

.method public static synthetic i3(Lk0/sr;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/sr;->i:Lo1/g0;

    return-object p0
.end method

.method public static synthetic j3(Lk0/sr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sr;->w3(I)V

    return-void
.end method

.method public static synthetic k3(Lk0/sr;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/sr;->o:J

    return-wide v0
.end method

.method public static synthetic l3(Lk0/sr;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/sr;->o:J

    return-wide p1
.end method

.method public static synthetic m3(Lk0/sr;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sr;->p:I

    return p0
.end method

.method public static synthetic n3(Lk0/sr;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/sr;->p:I

    return p1
.end method

.method public static synthetic o3(Lk0/sr;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/sr;->u3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic p3(Lk0/sr;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/sr;->t:I

    return p0
.end method

.method public static synthetic q3(Lk0/sr;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/sr;->t:I

    return p1
.end method

.method public static synthetic r3(Lk0/sr;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/sr;->v:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s3(Lk0/sr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sr;->v:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic t3(Lk0/sr;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/sr;->x3(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/sr;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/sr;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->e:I

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x1

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    sget v1, Lk0/nt;->a:I

    const v3, 0x3501c6

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput v2, v0, Lk0/mt;->i:I

    .line 11
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/sr;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/sr;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/sr;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/sr;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/sr;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/sr;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 17
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/sr;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/sr;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/sr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/sr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6f

    const/16 v4, 0xc

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_1b

    const/16 v3, -0x6d

    const/16 v10, 0x6a

    const/16 v11, 0x68

    const/16 v12, 0xa

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x29

    const/4 v13, 0x3

    if-eq v2, v3, :cond_19

    if-eq v2, v11, :cond_18

    if-eq v2, v10, :cond_17

    const/16 v3, 0x74

    const/4 v10, 0x5

    const/4 v11, 0x4

    if-eq v2, v3, :cond_16

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_15

    const/16 v3, 0x30

    if-eq v2, v3, :cond_14

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 4
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 5
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 6
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 7
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 8
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 9
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 10
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v4, p2, 0x3

    .line 12
    aget-byte v5, v1, v4

    and-int/2addr v5, v7

    add-int/lit8 v6, p2, 0x4

    .line 13
    aget-byte v12, v1, v6

    and-int/2addr v12, v7

    add-int/lit8 v10, p2, 0x5

    .line 14
    aget-byte v13, v1, v10

    and-int/2addr v13, v7

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-nez v12, :cond_1

    if-nez v13, :cond_1

    .line 15
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 16
    :cond_1
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_2

    sget v8, Ll0/c0;->h:I

    if-ne v8, v5, :cond_2

    sget v8, Ll0/c0;->i:I

    if-ne v8, v12, :cond_2

    sget v8, Ll0/c0;->j:I

    if-eq v8, v13, :cond_3

    .line 17
    :cond_2
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_3

    .line 18
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 19
    sput v11, Ll0/c0;->k:I

    .line 20
    sget-object v8, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v8}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 21
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 22
    sput v5, Ll0/c0;->h:I

    .line 23
    sput v12, Ll0/c0;->i:I

    .line 24
    sput v13, Ll0/c0;->j:I

    .line 25
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 26
    aget-byte v2, v1, v4

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 27
    aget-byte v2, v1, v6

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 28
    aget-byte v1, v1, v10

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 32
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v2, v1, v2

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 34
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v9

    aput v6, v5, v8

    .line 35
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 36
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v8

    const/16 v4, 0x10

    .line 37
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v9

    aput v6, v5, v8

    .line 38
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v9

    aput v6, v5, v8

    .line 39
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v9

    aput v2, v3, v8

    const/16 v2, 0xf

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x3

    .line 41
    aget-byte v3, v1, v3

    new-array v5, v9, [I

    shr-int/lit8 v6, v3, 0x7

    and-int/2addr v6, v9

    aput v6, v5, v8

    const/16 v6, 0x12

    .line 42
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v11, v9, [I

    shr-int/lit8 v14, v3, 0x6

    and-int/2addr v14, v9

    aput v14, v11, v8

    .line 43
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v11, v9, [I

    shr-int/lit8 v14, v3, 0x5

    and-int/2addr v14, v9

    aput v14, v11, v8

    .line 44
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v5, p2, 0x6

    .line 45
    aget-byte v5, v1, v5

    new-array v11, v9, [I

    shr-int/lit8 v14, v5, 0x6

    and-int/2addr v13, v14

    aput v13, v11, v8

    const/16 v13, 0x25

    .line 46
    invoke-static {v13, v11}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x41

    new-array v14, v9, [I

    shr-int/lit8 v15, v5, 0x4

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 47
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x35

    new-array v14, v9, [I

    shr-int/lit8 v15, v5, 0x2

    and-int/2addr v15, v9

    aput v15, v14, v8

    .line 48
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x15

    new-array v14, v9, [I

    and-int/2addr v4, v5

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    aput v2, v14, v8

    .line 49
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 50
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v4, p2, 0x5

    .line 51
    aget-byte v5, v1, v4

    and-int/2addr v5, v7

    const-string v11, "persist.fyt.reversetemp"

    .line 52
    invoke-static {v11, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 53
    aget-byte v3, v1, v4

    and-int/2addr v3, v7

    .line 54
    aget-byte v2, v1, v2

    and-int/lit16 v5, v2, 0xff

    :cond_4
    const/4 v2, -0x1

    const/16 v4, 0x1b

    if-eqz v3, :cond_8

    const/16 v11, 0x7f

    if-eq v3, v11, :cond_7

    if-eq v3, v7, :cond_6

    .line 55
    sget-object v11, Lk0/nt;->g:[I

    aget v11, v11, v13

    if-ne v11, v9, :cond_5

    new-array v11, v9, [I

    mul-int/2addr v3, v12

    aput v3, v11, v8

    .line 56
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v11, v9, [I

    mul-int/2addr v3, v10

    aput v3, v11, v8

    .line 57
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v3, v9, [I

    aput v2, v3, v8

    .line 58
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v3, v9, [I

    const/4 v11, -0x3

    aput v11, v3, v8

    .line 59
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v3, v9, [I

    const/4 v11, -0x2

    aput v11, v3, v8

    .line 60
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v3, 0x1c

    if-eqz v5, :cond_c

    const/16 v4, 0x7f

    if-eq v5, v4, :cond_b

    if-eq v5, v7, :cond_a

    .line 61
    sget-object v4, Lk0/nt;->g:[I

    aget v4, v4, v13

    if-ne v4, v9, :cond_9

    new-array v4, v9, [I

    mul-int/2addr v5, v12

    aput v5, v4, v8

    .line 62
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v4, v9, [I

    mul-int/2addr v5, v10

    aput v5, v4, v8

    .line 63
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v4, v9, [I

    aput v2, v4, v8

    .line 64
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v4, v9, [I

    const/4 v5, -0x3

    aput v5, v4, v8

    .line 65
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v4, v9, [I

    const/4 v5, -0x2

    aput v5, v4, v8

    .line 66
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v3, p2, 0x7

    .line 67
    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    const-string v3, "persist.fyt.temperature"

    .line 68
    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v9, :cond_e

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_d

    rsub-int v1, v1, 0x100

    mul-int/2addr v1, v6

    rsub-int v1, v1, 0x528

    goto :goto_4

    :cond_d
    mul-int/2addr v1, v6

    add-int/lit16 v1, v1, 0x528

    .line 69
    :goto_4
    div-int/2addr v1, v12

    mul-int/2addr v1, v12

    const/high16 v3, 0x10000000

    or-int/2addr v1, v3

    and-int/2addr v1, v2

    goto :goto_5

    :cond_e
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_f

    rsub-int v1, v1, 0x100

    mul-int/2addr v1, v12

    rsub-int v1, v1, 0x3e8

    goto :goto_5

    :cond_f
    and-int/2addr v1, v7

    mul-int/2addr v1, v12

    add-int/lit16 v1, v1, 0x3e8

    .line 70
    :goto_5
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 72
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 73
    iput v2, v0, Lk0/sr;->d:I

    move v2, v8

    .line 74
    :goto_6
    iget-object v3, v0, Lk0/sr;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_11

    .line 75
    iget v4, v0, Lk0/sr;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_10

    if-eqz v4, :cond_11

    .line 76
    iput v2, v0, Lk0/sr;->c:I

    goto :goto_7

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    :goto_7
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_12

    .line 77
    array-length v1, v3

    if-ge v2, v1, :cond_1e

    .line 78
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_12
    if-nez v1, :cond_1e

    .line 79
    iget v1, v0, Lk0/sr;->c:I

    array-length v2, v3

    if-ge v1, v2, :cond_13

    if-eq v1, v7, :cond_13

    .line 80
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 81
    :cond_13
    iput v7, v0, Lk0/sr;->c:I

    goto/16 :goto_9

    .line 82
    :cond_14
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 83
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk0/sr;->d3(I)V

    goto/16 :goto_9

    :cond_16
    const/16 v2, 0x6b

    new-array v4, v9, [I

    add-int/lit8 v7, p2, 0x2

    .line 84
    aget-byte v12, v1, v7

    shr-int/2addr v12, v11

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v9, [I

    .line 85
    aget-byte v12, v1, v7

    shr-int/2addr v12, v13

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v9, [I

    .line 86
    aget-byte v12, v1, v7

    shr-int/2addr v12, v6

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v9, [I

    .line 87
    aget-byte v12, v1, v7

    shr-int/2addr v12, v9

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v9, [I

    .line 88
    aget-byte v7, v1, v7

    shr-int/2addr v7, v8

    and-int/2addr v7, v9

    aput v7, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v9, [I

    add-int/lit8 v7, p2, 0x3

    .line 89
    aget-byte v12, v1, v7

    shr-int/2addr v12, v8

    and-int/lit8 v12, v12, 0x7

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v9, [I

    .line 90
    aget-byte v12, v1, v7

    shr-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x7

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v9, [I

    .line 91
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v13

    aput v7, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v9, [I

    add-int/lit8 v7, p2, 0x4

    .line 92
    aget-byte v12, v1, v7

    shr-int/2addr v12, v8

    and-int/2addr v12, v13

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 93
    aget-byte v4, v1, v7

    shr-int/2addr v4, v6

    and-int/2addr v4, v13

    aput v4, v2, v8

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v9, [I

    .line 94
    aget-byte v4, v1, v7

    shr-int/2addr v4, v11

    and-int/2addr v4, v13

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v9, [I

    .line 95
    aget-byte v4, v1, v7

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 96
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v9, [I

    .line 97
    aget-byte v1, v1, v4

    shr-int/2addr v1, v13

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_17
    const/16 v2, 0x407

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 98
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    shl-int/lit8 v1, v1, 0x8

    const v5, 0xff00

    and-int/2addr v1, v5

    add-int/2addr v4, v1

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_18
    const/16 v2, 0x408

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 99
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    shl-int/lit8 v1, v1, 0x8

    const v5, 0xff00

    and-int/2addr v1, v5

    add-int/2addr v4, v1

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 100
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    const/16 v3, 0x16c0

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 101
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 102
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 103
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 104
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 105
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x7

    .line 106
    aget-byte v7, v1, v7

    add-int/lit8 v13, p2, 0x8

    .line 107
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x9

    .line 108
    aget-byte v14, v1, v14

    add-int/lit8 v12, p2, 0xa

    .line 109
    aget-byte v1, v1, v12

    const/16 v12, 0x62

    new-array v15, v9, [I

    aput v2, v15, v8

    .line 110
    invoke-static {v12, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v12, v9, [I

    aput v3, v12, v8

    .line 111
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    aput v4, v3, v8

    .line 112
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    aput v5, v3, v8

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    aput v6, v3, v8

    .line 114
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    aput v7, v3, v8

    .line 115
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    aput v13, v2, v8

    .line 116
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    aput v14, v3, v8

    .line 117
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    aput v1, v2, v8

    .line 118
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 119
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    .line 120
    iget v2, v0, Lk0/sr;->f:I

    if-eq v2, v1, :cond_1e

    if-ne v1, v9, :cond_1c

    .line 121
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 122
    invoke-virtual/range {p0 .. p0}, Lk0/sr;->v3()V

    .line 123
    sget v2, Ly0/f;->i:I

    if-eq v2, v9, :cond_1d

    .line 124
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    .line 125
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_1c
    if-nez v1, :cond_1d

    .line 126
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 127
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 128
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    .line 129
    sget v2, Ly0/f;->i:I

    if-ne v2, v9, :cond_1d

    .line 130
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    .line 131
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    .line 132
    :cond_1d
    :goto_8
    iput v1, v0, Lk0/sr;->f:I

    :cond_1e
    :goto_9
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
    iget-object v0, p0, Lk0/sr;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/sr;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/sr;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/sr;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/sr;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/sr;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/sr;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/sr;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/sr;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/sr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/sr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/sr;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/sr;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7a

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

    const/4 p4, 0x4

    const/16 v0, 0xe3

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v1, :cond_2

    const/16 v5, 0x3eb

    if-eq p1, v5, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_7

    .line 1
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, -0x3a

    aput p3, p1, v3

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

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4
    aget p1, p2, v2

    const/16 v5, 0xf

    if-ne p1, v5, :cond_3

    .line 5
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/sr;->w3(I)V

    goto :goto_1

    :cond_3
    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, -0x1c

    aput p3, p1, v3

    aput v4, p1, v4

    .line 6
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    new-array p1, p4, [I

    aput v0, p1, v2

    const/16 p3, -0x70

    aput p3, p1, v3

    aput v3, p1, v4

    .line 8
    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 9
    :cond_5
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, -0x7d

    aput p3, p1, v3

    aput v4, p1, v4

    .line 10
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 11
    :cond_6
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, -0x20

    aput p3, p1, v3

    aput v4, p1, v4

    .line 12
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_7
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
    invoke-virtual {p0, v1}, Lk0/sr;->b3([I)V

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

.method public final d3(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1c

    const/4 v2, 0x1

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

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 3
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/16 v0, 0x214

    invoke-virtual {p1, v0}, Lc/e;->c(I)Z

    goto :goto_0

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
    sget p1, Lu0/b;->D:I

    if-eq p1, v2, :cond_1

    .line 9
    invoke-static {}, Lo1/u;->x0()V

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    const/16 v2, 0x1b

    aput v2, p1, v0

    .line 10
    invoke-static {v1, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    .line 11
    :pswitch_7
    invoke-static {}, Lo1/u;->j()I

    goto :goto_0

    .line 12
    :pswitch_8
    invoke-static {}, Lo1/u;->q()V

    goto :goto_0

    .line 13
    :pswitch_9
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 14
    :pswitch_a
    invoke-static {}, Lo1/u;->E()I

    goto :goto_0

    .line 15
    :pswitch_b
    sget p1, Lu0/b;->D:I

    if-eq p1, v2, :cond_2

    .line 16
    invoke-static {}, Lo1/u;->x0()V

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    const/16 v2, 0x1d

    aput v2, p1, v0

    .line 17
    invoke-static {v1, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    .line 18
    :pswitch_c
    sget p1, Lu0/b;->D:I

    if-eq p1, v2, :cond_3

    .line 19
    invoke-static {}, Lo1/u;->x0()V

    goto :goto_0

    :cond_3
    new-array p1, v2, [I

    aput v1, p1, v0

    .line 20
    invoke-static {v1, p1}, Lw0/f;->J(I[I)V

    goto :goto_0

    .line 21
    :pswitch_d
    sget p1, Lu0/b;->D:I

    if-eq p1, v2, :cond_4

    .line 22
    invoke-static {}, Lo1/u;->x0()V

    goto :goto_0

    :cond_4
    new-array p1, v2, [I

    const/16 v2, 0x1e

    aput v2, p1, v0

    .line 23
    invoke-static {v1, p1}, Lw0/f;->J(I[I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
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

.method public final v3()V
    .locals 3

    const-string v0, "com.syu.carinfo.xp.xiandai.XiandaiSosPage"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final w3(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v0

    const/16 v3, 0xe4

    aput v3, v2, v1

    const/4 v3, 0x2

    aput v3, v2, v3

    const/4 v4, 0x3

    const/16 v5, 0xf

    aput v5, v2, v4

    const/4 v4, 0x4

    int-to-byte v5, p1

    aput v5, v2, v4

    .line 1
    invoke-static {v2}, Lz/k;->s([I)V

    .line 2
    sput p1, Lk0/sr;->w:I

    const/16 v2, 0x79

    new-array v1, v1, [I

    aput p1, v1, v0

    .line 3
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/sr;->i:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/sr;->w:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/sr;->i:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final x3(ILjava/lang/String;)V
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
