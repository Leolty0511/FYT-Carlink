.class public Lk0/rh;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0x3e8

.field public static B:I = 0x0

.field public static C:I = 0x3e8

.field public static D:I = 0x0

.field public static E:I = 0x3e8

.field public static F:I = 0x0

.field public static G:I = 0x0

.field public static H:I = 0x0

.field public static I:I = 0x0

.field public static y:I = 0x0

.field public static z:I = 0x1


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public n:I

.field public o:I

.field public p:[[I

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:J

.field public t:B

.field public u:Ljava/lang/Runnable;

.field public v:I

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/rh;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/rh;->c:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lk0/rh;->d:I

    const/4 v2, 0x3

    .line 5
    iput v2, p0, Lk0/rh;->e:I

    const/4 v3, 0x4

    .line 6
    iput v3, p0, Lk0/rh;->f:I

    const/4 v4, 0x5

    .line 7
    iput v4, p0, Lk0/rh;->g:I

    const/4 v5, 0x6

    .line 8
    iput v5, p0, Lk0/rh;->h:I

    const/4 v6, 0x7

    .line 9
    iput v6, p0, Lk0/rh;->i:I

    const/16 v7, 0x8

    .line 10
    iput v7, p0, Lk0/rh;->j:I

    const/16 v8, 0x9

    .line 11
    iput v8, p0, Lk0/rh;->k:I

    const/16 v9, 0xa

    .line 12
    iput v9, p0, Lk0/rh;->l:I

    const/16 v10, 0xb

    .line 13
    iput v10, p0, Lk0/rh;->m:I

    const/4 v11, 0x0

    .line 14
    iput v11, p0, Lk0/rh;->o:I

    const/16 v12, 0x17

    new-array v12, v12, [[I

    new-array v13, v1, [I

    .line 15
    fill-array-data v13, :array_0

    aput-object v13, v12, v11

    new-array v13, v1, [I

    fill-array-data v13, :array_1

    aput-object v13, v12, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    aput-object v0, v12, v1

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    aput-object v0, v12, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    aput-object v0, v12, v4

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    aput-object v0, v12, v5

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    aput-object v0, v12, v6

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    aput-object v0, v12, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    aput-object v0, v12, v8

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    aput-object v0, v12, v9

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    aput-object v0, v12, v10

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/16 v2, 0xc

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    const/16 v2, 0xd

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    const/16 v2, 0xe

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_f

    const/16 v2, 0xf

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_10

    const/16 v2, 0x10

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_11

    const/16 v2, 0x11

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_12

    const/16 v2, 0x12

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_13

    const/16 v2, 0x13

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_14

    const/16 v2, 0x14

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_15

    const/16 v2, 0x15

    aput-object v0, v12, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_16

    const/16 v1, 0x16

    aput-object v0, v12, v1

    iput-object v12, p0, Lk0/rh;->p:[[I

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lk0/rh;->q:I

    .line 17
    new-instance v1, Lk0/rh$a;

    invoke-direct {v1, p0}, Lk0/rh$a;-><init>(Lk0/rh;)V

    iput-object v1, p0, Lk0/rh;->r:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 18
    iput-wide v1, p0, Lk0/rh;->s:J

    .line 19
    iput-byte v0, p0, Lk0/rh;->t:B

    .line 20
    new-instance v0, Lk0/rh$b;

    invoke-direct {v0, p0}, Lk0/rh$b;-><init>(Lk0/rh;)V

    iput-object v0, p0, Lk0/rh;->u:Ljava/lang/Runnable;

    .line 21
    iput v11, p0, Lk0/rh;->v:I

    .line 22
    new-instance v0, Lk0/rh$c;

    invoke-direct {v0, p0}, Lk0/rh$c;-><init>(Lk0/rh;)V

    iput-object v0, p0, Lk0/rh;->w:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Lk0/rh$d;

    invoke-direct {v0, p0}, Lk0/rh$d;-><init>(Lk0/rh;)V

    iput-object v0, p0, Lk0/rh;->x:Ljava/lang/Runnable;

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
        0x8
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x9
        0xd
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x20
        0x36
    .end array-data

    :array_9
    .array-data 4
        0x21
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x22
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x23
        0x15
    .end array-data

    :array_c
    .array-data 4
        0x24
        0x22
    .end array-data

    :array_d
    .array-data 4
        0x25
        0x23
    .end array-data

    :array_e
    .array-data 4
        0x26
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x27
        0x21
    .end array-data

    :array_10
    .array-data 4
        0x28
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0x29
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x2a
        0x6
    .end array-data

    :array_13
    .array-data 4
        0xf0
        0x7
    .end array-data

    :array_14
    .array-data 4
        0xf1
        0x8
    .end array-data

    :array_15
    .array-data 4
        0xf2
        0x1f
    .end array-data

    :array_16
    .array-data 4
        0xf3
        0x1e
    .end array-data
.end method

.method public static synthetic i3(Lk0/rh;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/rh;->s:J

    return-wide v0
.end method

.method public static synthetic j3(Lk0/rh;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/rh;->s:J

    return-wide p1
.end method

.method public static synthetic k3(Lk0/rh;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lk0/rh;->t:B

    return p0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lk0/rh;->y:I

    return v0
.end method

.method public static synthetic m3(Lk0/rh;B)B
    .locals 0

    .line 1
    iput-byte p1, p0, Lk0/rh;->t:B

    return p1
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lk0/rh;->G:I

    return v0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lk0/rh;->z:I

    return v0
.end method

.method public static synthetic p3(Lk0/rh;III)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/rh;->h3(III)Z

    move-result p0

    return p0
.end method

.method public static synthetic q3(Lk0/rh;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/rh;->b:Lo1/g0;

    return-object p0
.end method

.method public static synthetic r3(Lk0/rh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rh;->e3(I)V

    return-void
.end method

.method public static synthetic s3(Lk0/rh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rh;->c3(I)V

    return-void
.end method

.method public static synthetic t3(Lk0/rh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rh;->d3(I)V

    return-void
.end method

.method public static synthetic u3(Lk0/rh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rh;->g3(I)V

    return-void
.end method

.method public static synthetic v3(Lk0/rh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rh;->f3(I)V

    return-void
.end method

.method public static synthetic w3(Lk0/rh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rh;->b3(I)V

    return-void
.end method

.method public static synthetic x3(Lk0/rh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/rh;->a3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->j:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/rh;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v0, p0, Lk0/rh;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/rh;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    aget-byte v0, v2, p2

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v8, 0x3

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_19

    const/4 v12, 0x5

    const/4 v13, 0x2

    if-eq v0, v13, :cond_17

    const/16 v14, 0x10

    if-eq v0, v14, :cond_10

    const/16 v4, 0x11

    if-eq v0, v4, :cond_f

    const/16 v14, 0x25

    if-eq v0, v14, :cond_e

    const/16 v14, 0x7d

    if-eq v0, v14, :cond_c

    const/16 v14, 0x7f

    if-eq v0, v14, :cond_b

    const v21, 0xffff

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_e

    :pswitch_0
    const/16 v0, 0x6c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v7, v2, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v8

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6d

    new-array v3, v11, [I

    .line 3
    aget-byte v7, v2, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v8

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6e

    new-array v3, v11, [I

    .line 4
    aget-byte v4, v2, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 5
    aget-byte v7, v2, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x70

    new-array v3, v11, [I

    .line 6
    aget-byte v7, v2, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x71

    new-array v3, v11, [I

    .line 7
    aget-byte v7, v2, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x72

    new-array v3, v11, [I

    .line 8
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x73

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 9
    aget-byte v6, v2, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x74

    new-array v3, v11, [I

    .line 10
    aget-byte v2, v2, v4

    shr-int/2addr v2, v8

    and-int/2addr v2, v5

    aput v2, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_1
    const/16 v0, 0x5d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 11
    aget-byte v7, v2, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x5e

    new-array v3, v11, [I

    .line 12
    aget-byte v7, v2, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x5f

    new-array v3, v11, [I

    .line 13
    aget-byte v7, v2, v4

    shr-int/2addr v7, v8

    and-int/2addr v7, v5

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x60

    new-array v3, v11, [I

    .line 14
    aget-byte v7, v2, v4

    shr-int/2addr v7, v13

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x61

    new-array v3, v11, [I

    .line 15
    aget-byte v7, v2, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x62

    new-array v3, v11, [I

    .line 16
    aget-byte v4, v2, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x63

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 17
    aget-byte v7, v2, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v8

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x64

    new-array v3, v11, [I

    .line 18
    aget-byte v7, v2, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v11

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x65

    new-array v3, v11, [I

    .line 19
    aget-byte v7, v2, v4

    shr-int/2addr v7, v8

    and-int/2addr v7, v8

    aput v7, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v3, v11, [I

    .line 20
    aget-byte v4, v2, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v8

    aput v4, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 21
    aget-byte v6, v2, v4

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x68

    new-array v3, v11, [I

    .line 22
    aget-byte v5, v2, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x69

    new-array v3, v11, [I

    .line 23
    aget-byte v5, v2, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6a

    new-array v3, v11, [I

    .line 24
    aget-byte v5, v2, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6b

    new-array v3, v11, [I

    .line 25
    aget-byte v2, v2, v4

    shr-int/2addr v2, v11

    and-int/2addr v2, v11

    aput v2, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_2
    add-int/lit8 v0, p2, 0x2

    .line 26
    aget-byte v0, v2, v0

    and-int/2addr v0, v9

    add-int/lit8 v5, p2, 0x3

    .line 27
    aget-byte v5, v2, v5

    and-int/2addr v5, v9

    add-int/lit8 v6, p2, 0x4

    .line 28
    aget-byte v6, v2, v6

    and-int/2addr v6, v9

    add-int/lit8 v8, p2, 0x5

    .line 29
    aget-byte v8, v2, v8

    and-int/2addr v8, v9

    add-int/lit8 v12, p2, 0x6

    .line 30
    aget-byte v12, v2, v12

    and-int/2addr v12, v9

    add-int/lit8 v13, p2, 0x7

    .line 31
    aget-byte v13, v2, v13

    and-int/2addr v13, v9

    add-int/lit8 v14, p2, 0x8

    .line 32
    aget-byte v14, v2, v14

    and-int/2addr v14, v9

    add-int/lit8 v16, p2, 0x9

    .line 33
    aget-byte v4, v2, v16

    and-int/2addr v4, v9

    add-int/lit8 v16, p2, 0xa

    .line 34
    aget-byte v10, v2, v16

    and-int/2addr v10, v9

    add-int/lit8 v16, p2, 0xb

    .line 35
    aget-byte v15, v2, v16

    and-int/2addr v15, v9

    add-int/lit8 v16, p2, 0xc

    .line 36
    aget-byte v7, v2, v16

    and-int/2addr v7, v9

    add-int/lit8 v16, p2, 0xd

    .line 37
    aget-byte v11, v2, v16

    and-int/2addr v11, v9

    add-int/lit8 v16, p2, 0xe

    .line 38
    aget-byte v3, v2, v16

    and-int/2addr v3, v9

    add-int/lit8 v16, p2, 0xf

    .line 39
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x10

    move/from16 v19, v1

    .line 40
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x11

    move/from16 v20, v1

    .line 41
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x12

    move/from16 p3, v1

    .line 42
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x13

    move/from16 v25, v1

    .line 43
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x14

    move/from16 v26, v1

    .line 44
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x15

    move/from16 v27, v1

    .line 45
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x16

    move/from16 v28, v1

    .line 46
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x17

    move/from16 v29, v1

    .line 47
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x18

    move/from16 v30, v1

    .line 48
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x19

    move/from16 v31, v1

    .line 49
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x1a

    move/from16 v32, v1

    .line 50
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x1b

    move/from16 v33, v1

    .line 51
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x1c

    move/from16 v34, v1

    .line 52
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x1d

    move/from16 v35, v1

    .line 53
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    add-int/lit8 v16, p2, 0x1e

    move/from16 v36, v1

    .line 54
    aget-byte v1, v2, v16

    and-int/2addr v1, v9

    const/16 v16, 0x1f

    add-int/lit8 v16, p2, 0x1f

    .line 55
    aget-byte v2, v2, v16

    and-int/2addr v2, v9

    move/from16 v16, v2

    const/4 v9, 0x1

    new-array v2, v9, [I

    const/16 v23, 0x8

    shl-int/lit8 v0, v0, 0x8

    const v22, 0xff00

    and-int v0, v0, v22

    const/16 v9, 0xff

    and-int/2addr v5, v9

    or-int/2addr v0, v5

    and-int v0, v0, v21

    const/4 v5, 0x0

    aput v0, v2, v5

    const/16 v0, 0x1d

    .line 56
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    shl-int/lit8 v6, v6, 0x8

    and-int v6, v6, v22

    and-int/2addr v8, v9

    or-int/2addr v6, v8

    and-int v6, v6, v21

    aput v6, v0, v5

    const/16 v6, 0x1c

    .line 57
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1b

    new-array v6, v2, [I

    shl-int/lit8 v8, v12, 0x8

    and-int v8, v8, v22

    and-int/lit16 v12, v13, 0xff

    or-int/2addr v8, v12

    and-int v8, v8, v21

    aput v8, v6, v5

    .line 58
    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1a

    new-array v6, v2, [I

    shl-int/lit8 v8, v14, 0x8

    and-int v8, v8, v22

    and-int/2addr v4, v9

    or-int/2addr v4, v8

    and-int v4, v4, v21

    aput v4, v6, v5

    .line 59
    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x19

    new-array v4, v2, [I

    shl-int/lit8 v6, v10, 0x8

    and-int v6, v6, v22

    and-int/lit16 v8, v15, 0xff

    or-int/2addr v6, v8

    and-int v6, v6, v21

    aput v6, v4, v5

    .line 60
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x18

    new-array v4, v2, [I

    shl-int/lit8 v6, v7, 0x8

    and-int v6, v6, v22

    and-int/lit16 v7, v11, 0xff

    or-int/2addr v6, v7

    and-int v6, v6, v21

    aput v6, v4, v5

    .line 61
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x17

    new-array v4, v2, [I

    shl-int/lit8 v3, v3, 0x8

    and-int v3, v3, v22

    move/from16 v6, v19

    and-int/2addr v6, v9

    or-int/2addr v3, v6

    and-int v3, v3, v21

    aput v3, v4, v5

    .line 62
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x16

    new-array v3, v2, [I

    shl-int/lit8 v4, v20, 0x8

    and-int v4, v4, v22

    move/from16 v6, p3

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    and-int v4, v4, v21

    aput v4, v3, v5

    .line 63
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v3, v2, [I

    shl-int/lit8 v4, v25, 0x8

    and-int v4, v4, v22

    move/from16 v6, v26

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    and-int v4, v4, v21

    aput v4, v3, v5

    .line 64
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v3, v2, [I

    shl-int/lit8 v4, v27, 0x8

    and-int v4, v4, v22

    move/from16 v6, v28

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    and-int v4, v4, v21

    aput v4, v3, v5

    .line 65
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v3, v2, [I

    shl-int/lit8 v4, v29, 0x8

    and-int v4, v4, v22

    move/from16 v6, v30

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    and-int v4, v4, v21

    aput v4, v3, v5

    .line 66
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x12

    new-array v3, v2, [I

    shl-int/lit8 v4, v31, 0x8

    and-int v4, v4, v22

    move/from16 v6, v32

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    and-int v4, v4, v21

    aput v4, v3, v5

    .line 67
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    new-array v0, v2, [I

    shl-int/lit8 v3, v33, 0x8

    and-int v3, v3, v22

    move/from16 v4, v34

    and-int/2addr v4, v9

    or-int/2addr v3, v4

    and-int v3, v3, v21

    aput v3, v0, v5

    const/16 v3, 0x11

    .line 68
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v2, [I

    shl-int/lit8 v3, v35, 0x8

    and-int v3, v3, v22

    move/from16 v4, v36

    and-int/2addr v4, v9

    or-int/2addr v3, v4

    and-int v3, v3, v21

    aput v3, v0, v5

    const/16 v3, 0x10

    .line 69
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v2, [I

    shl-int/lit8 v1, v1, 0x8

    and-int v1, v1, v22

    move/from16 v2, v16

    and-int/2addr v2, v9

    or-int/2addr v1, v2

    and-int v1, v1, v21

    aput v1, v0, v5

    const/16 v1, 0xf

    .line 70
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 71
    aget-byte v0, v2, v0

    and-int/2addr v0, v9

    add-int/lit8 v1, p2, 0x3

    .line 72
    aget-byte v1, v2, v1

    and-int/2addr v1, v9

    add-int/lit8 v3, p2, 0x4

    .line 73
    aget-byte v3, v2, v3

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x5

    .line 74
    aget-byte v4, v2, v4

    and-int/2addr v4, v9

    add-int/lit8 v6, p2, 0x6

    .line 75
    aget-byte v6, v2, v6

    and-int/2addr v6, v9

    add-int/lit8 v7, p2, 0x7

    .line 76
    aget-byte v7, v2, v7

    and-int/2addr v7, v9

    add-int/lit8 v8, p2, 0x8

    .line 77
    aget-byte v8, v2, v8

    and-int/2addr v8, v9

    add-int/lit8 v10, p2, 0x9

    .line 78
    aget-byte v10, v2, v10

    and-int/2addr v10, v9

    add-int/lit8 v11, p2, 0xa

    .line 79
    aget-byte v11, v2, v11

    and-int/2addr v11, v9

    add-int/lit8 v12, p2, 0xb

    .line 80
    aget-byte v12, v2, v12

    and-int/2addr v12, v9

    add-int/lit8 v13, p2, 0xc

    .line 81
    aget-byte v13, v2, v13

    and-int/2addr v13, v9

    add-int/lit8 v15, p2, 0xd

    .line 82
    aget-byte v15, v2, v15

    and-int/2addr v15, v9

    add-int/lit8 v17, p2, 0xe

    .line 83
    aget-byte v14, v2, v17

    and-int/2addr v14, v9

    add-int/lit8 v17, p2, 0xf

    .line 84
    aget-byte v5, v2, v17

    and-int/2addr v5, v9

    add-int/lit8 v17, p2, 0x10

    move/from16 v24, v5

    .line 85
    aget-byte v5, v2, v17

    and-int/2addr v5, v9

    const/16 v17, 0x11

    add-int/lit8 v17, p2, 0x11

    .line 86
    aget-byte v2, v2, v17

    and-int/2addr v2, v9

    move/from16 v17, v2

    const/4 v9, 0x1

    new-array v2, v9, [I

    const/16 v9, 0x8

    shl-int/2addr v0, v9

    const v18, 0xff00

    and-int v0, v0, v18

    const/16 v9, 0xff

    and-int/2addr v1, v9

    or-int/2addr v0, v1

    and-int v0, v0, v21

    const/4 v1, 0x0

    aput v0, v2, v1

    const/4 v0, 0x7

    .line 87
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const/16 v2, 0x8

    shl-int/2addr v3, v2

    and-int v3, v3, v18

    and-int/2addr v4, v9

    or-int/2addr v3, v4

    and-int v3, v3, v21

    aput v3, v0, v1

    .line 88
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    const/4 v3, 0x1

    new-array v0, v3, [I

    shl-int/lit8 v4, v6, 0x8

    and-int v4, v4, v18

    and-int/lit16 v6, v7, 0xff

    or-int/2addr v4, v6

    and-int v4, v4, v21

    aput v4, v0, v1

    const/16 v4, 0x9

    .line 89
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shl-int/lit8 v4, v8, 0x8

    and-int v4, v4, v18

    and-int/lit16 v6, v10, 0xff

    or-int/2addr v4, v6

    and-int v4, v4, v21

    aput v4, v0, v1

    const/16 v4, 0xa

    .line 90
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shl-int/lit8 v4, v11, 0x8

    and-int v4, v4, v18

    and-int/lit16 v6, v12, 0xff

    or-int/2addr v4, v6

    and-int v4, v4, v21

    aput v4, v0, v1

    const/16 v4, 0xb

    .line 91
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shl-int/lit8 v4, v13, 0x8

    and-int v4, v4, v18

    and-int/lit16 v6, v15, 0xff

    or-int/2addr v4, v6

    and-int v4, v4, v21

    aput v4, v0, v1

    const/16 v4, 0xc

    .line 92
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shl-int/lit8 v4, v14, 0x8

    and-int v4, v4, v18

    move/from16 v6, v24

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    and-int v4, v4, v21

    aput v4, v0, v1

    const/16 v4, 0xd

    .line 93
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v3, v3, [I

    shl-int/lit8 v2, v5, 0x8

    and-int v2, v2, v18

    move/from16 v4, v17

    and-int/2addr v4, v9

    or-int/2addr v2, v4

    and-int v2, v2, v21

    aput v2, v3, v1

    .line 94
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_4
    move v1, v10

    move v3, v11

    const/16 v0, 0x41

    new-array v4, v3, [I

    add-int/lit8 v5, p2, 0x2

    .line 95
    aget-byte v7, v2, v5

    const/4 v9, 0x7

    shr-int/2addr v7, v9

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x42

    new-array v4, v3, [I

    .line 96
    aget-byte v7, v2, v5

    shr-int/2addr v7, v6

    and-int/2addr v7, v9

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x43

    new-array v4, v3, [I

    .line 97
    aget-byte v7, v2, v5

    shr-int/2addr v7, v13

    and-int/2addr v7, v8

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x44

    new-array v4, v3, [I

    .line 98
    aget-byte v5, v2, v5

    shr-int/2addr v5, v1

    and-int/2addr v5, v8

    aput v5, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x45

    new-array v4, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 99
    aget-byte v7, v2, v5

    const/4 v9, 0x7

    shr-int/2addr v7, v9

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x46

    new-array v4, v3, [I

    .line 100
    aget-byte v7, v2, v5

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x47

    new-array v4, v3, [I

    .line 101
    aget-byte v7, v2, v5

    shr-int/2addr v7, v12

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x48

    new-array v4, v3, [I

    .line 102
    aget-byte v7, v2, v5

    shr-int/2addr v7, v6

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x49

    new-array v4, v3, [I

    .line 103
    aget-byte v7, v2, v5

    shr-int/2addr v7, v13

    and-int/2addr v7, v8

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4a

    new-array v4, v3, [I

    .line 104
    aget-byte v5, v2, v5

    shr-int/2addr v5, v1

    and-int/2addr v5, v8

    aput v5, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4b

    new-array v4, v3, [I

    add-int/lit8 v5, p2, 0x4

    .line 105
    aget-byte v7, v2, v5

    const/4 v9, 0x7

    shr-int/2addr v7, v9

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4c

    new-array v4, v3, [I

    .line 106
    aget-byte v7, v2, v5

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4d

    new-array v4, v3, [I

    .line 107
    aget-byte v7, v2, v5

    shr-int/2addr v7, v12

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4e

    new-array v4, v3, [I

    .line 108
    aget-byte v7, v2, v5

    shr-int/2addr v7, v6

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4f

    new-array v4, v3, [I

    .line 109
    aget-byte v7, v2, v5

    shr-int/2addr v7, v8

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x50

    new-array v4, v3, [I

    .line 110
    aget-byte v7, v2, v5

    shr-int/2addr v7, v13

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x51

    new-array v4, v3, [I

    .line 111
    aget-byte v5, v2, v5

    shr-int/2addr v5, v1

    and-int/2addr v5, v8

    aput v5, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x52

    new-array v4, v3, [I

    add-int/lit8 v5, p2, 0x5

    .line 112
    aget-byte v7, v2, v5

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v8

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x53

    new-array v4, v3, [I

    .line 113
    aget-byte v7, v2, v5

    shr-int/2addr v7, v8

    const/4 v9, 0x7

    and-int/2addr v7, v9

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x54

    new-array v4, v3, [I

    .line 114
    aget-byte v5, v2, v5

    shr-int/2addr v5, v1

    and-int/2addr v5, v9

    aput v5, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x55

    new-array v4, v3, [I

    add-int/lit8 v5, p2, 0x6

    .line 115
    aget-byte v5, v2, v5

    shr-int/2addr v5, v1

    const/16 v7, 0xff

    and-int/2addr v5, v7

    aput v5, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x56

    new-array v4, v3, [I

    add-int/lit8 v5, p2, 0x7

    .line 116
    aget-byte v5, v2, v5

    shr-int/2addr v5, v1

    and-int/2addr v5, v7

    aput v5, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x57

    new-array v4, v3, [I

    add-int/lit8 v5, p2, 0x8

    .line 117
    aget-byte v5, v2, v5

    shr-int/2addr v5, v1

    and-int/2addr v5, v7

    aput v5, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x58

    new-array v4, v3, [I

    const/16 v5, 0x9

    add-int/lit8 v5, p2, 0x9

    .line 118
    aget-byte v7, v2, v5

    const/4 v9, 0x7

    shr-int/2addr v7, v9

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x59

    new-array v4, v3, [I

    .line 119
    aget-byte v7, v2, v5

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v3

    aput v7, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x5a

    new-array v4, v3, [I

    .line 120
    aget-byte v7, v2, v5

    shr-int/lit8 v6, v7, 0x4

    and-int/2addr v6, v8

    aput v6, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x5b

    new-array v4, v3, [I

    .line 121
    aget-byte v6, v2, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v3

    aput v6, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x5c

    new-array v4, v3, [I

    .line 122
    aget-byte v2, v2, v5

    shr-int/2addr v2, v3

    and-int/2addr v2, v8

    aput v2, v4, v1

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_5
    add-int/lit8 v0, p2, 0x2

    .line 123
    aget-byte v0, v2, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    add-int/lit8 v3, p2, 0x3

    .line 124
    aget-byte v4, v2, v3

    and-int/2addr v4, v1

    .line 125
    aget-byte v5, v2, v3

    and-int/2addr v5, v1

    add-int/lit8 v7, p2, 0x4

    .line 126
    aget-byte v8, v2, v7

    and-int/2addr v8, v1

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v8, :cond_0

    const/4 v1, 0x0

    .line 127
    invoke-static {v1}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 128
    :cond_0
    sget v1, Ll0/c0;->g:I

    if-ne v1, v0, :cond_1

    sget v1, Ll0/c0;->h:I

    if-ne v1, v4, :cond_1

    sget v1, Ll0/c0;->i:I

    if-ne v1, v5, :cond_1

    sget v1, Ll0/c0;->j:I

    if-eq v1, v8, :cond_2

    .line 129
    :cond_1
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 130
    invoke-static {v1}, Lu0/d;->C2(I)V

    .line 131
    sput v6, Ll0/c0;->k:I

    .line 132
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 133
    :cond_2
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 134
    sput v4, Ll0/c0;->h:I

    .line 135
    sput v5, Ll0/c0;->i:I

    .line 136
    sput v8, Ll0/c0;->j:I

    .line 137
    aget-byte v0, v2, v3

    const/16 v1, 0xff

    and-int/2addr v0, v1

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    .line 138
    aget-byte v0, v2, v7

    and-int/2addr v0, v1

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    .line 139
    aget-byte v0, v2, v7

    and-int/2addr v0, v1

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->F2(I)V

    add-int/lit8 v0, p2, 0x5

    .line 140
    aget-byte v0, v2, v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    add-int/lit8 v0, p2, 0x6

    .line 141
    aget-byte v0, v2, v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x7

    .line 142
    aget-byte v3, v2, v0

    and-int/2addr v3, v1

    invoke-static {v3}, Ll0/c0;->E0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 143
    aget-byte v0, v2, v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    const/16 v0, 0x8

    add-int/lit8 v0, p2, 0x8

    .line 144
    aget-byte v0, v2, v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    :pswitch_6
    add-int/lit8 v0, p2, 0x2

    .line 145
    aget-byte v0, v2, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, v2, v1

    const/16 v2, 0x11f8

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_4

    :pswitch_7
    move v3, v11

    add-int/lit8 v0, p2, 0x3

    .line 146
    aget-byte v1, v2, v0

    const/16 v4, 0xf

    and-int/2addr v1, v4

    if-ne v1, v3, :cond_a

    .line 147
    aget-byte v0, v2, v0

    shr-int/2addr v0, v6

    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v13, :cond_4

    if-eq v0, v8, :cond_3

    goto :goto_1

    .line 148
    :cond_3
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v3, p3, -0x4

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_2

    .line 149
    :cond_4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v3, p3, -0x4

    const-string v4, "UTF-16LE"

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 151
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v3, p3, -0x4

    const-string v4, "UTF-16BE"

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    const-string v0, ""

    goto :goto_2

    .line 153
    :cond_6
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v3, p3, -0x4

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    :goto_2
    add-int/lit8 v1, p2, 0x2

    .line 154
    aget-byte v3, v2, v1

    if-eqz v3, :cond_9

    if-eq v3, v13, :cond_8

    if-eq v3, v8, :cond_7

    goto :goto_3

    :cond_7
    const/16 v3, 0x2a

    .line 155
    invoke-static {v3, v0}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    const/16 v3, 0x29

    .line 156
    invoke-static {v3, v0}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto :goto_3

    :cond_9
    const/16 v3, 0x28

    .line 157
    invoke-static {v3, v0}, Lk0/qt;->x0(ILjava/lang/String;)V

    :goto_3
    const/16 v0, 0x2b

    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 158
    aget-byte v1, v2, v1

    const/4 v2, 0x0

    aput v1, v3, v2

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_8
    add-int/lit8 v0, p2, 0x3

    .line 159
    aget-byte v0, v2, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    add-int/lit8 v3, p2, 0x4

    .line 160
    aget-byte v3, v2, v3

    and-int/2addr v3, v1

    add-int/lit8 v4, p2, 0x5

    .line 161
    aget-byte v4, v2, v4

    add-int/lit8 v4, p2, 0x6

    .line 162
    aget-byte v4, v2, v4

    add-int/lit8 v4, p2, 0x7

    .line 163
    aget-byte v4, v2, v4

    and-int/2addr v4, v1

    add-int/lit8 v5, p2, 0x8

    .line 164
    aget-byte v5, v2, v5

    and-int/2addr v5, v1

    add-int/lit8 v6, p2, 0x9

    .line 165
    aget-byte v6, v2, v6

    and-int/2addr v6, v1

    add-int/lit8 v7, p2, 0xa

    .line 166
    aget-byte v7, v2, v7

    and-int/2addr v7, v1

    add-int/lit8 v8, p2, 0xb

    .line 167
    aget-byte v8, v2, v8

    and-int/2addr v8, v1

    const/16 v9, 0xc

    add-int/lit8 v9, p2, 0xc

    .line 168
    aget-byte v2, v2, v9

    and-int/2addr v2, v1

    const/16 v1, 0x22

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v11, 0x0

    aput v0, v10, v11

    .line 169
    invoke-static {v1, v10}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x23

    new-array v1, v9, [I

    shr-int/lit8 v10, v3, 0x4

    const/16 v12, 0xf

    and-int/2addr v10, v12

    aput v10, v1, v11

    .line 170
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x24

    new-array v1, v9, [I

    shr-int/2addr v3, v11

    and-int/2addr v3, v12

    aput v3, v1, v11

    .line 171
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x25

    new-array v1, v9, [I

    const/16 v3, 0x8

    shl-int/2addr v4, v3

    const v10, 0xff00

    and-int/2addr v4, v10

    const/16 v12, 0xff

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    and-int v4, v4, v21

    aput v4, v1, v11

    .line 172
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x27

    new-array v1, v9, [I

    shl-int/lit8 v4, v6, 0x8

    and-int/2addr v4, v10

    and-int/lit16 v5, v7, 0xff

    or-int/2addr v4, v5

    and-int v4, v4, v21

    aput v4, v1, v11

    .line 173
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x26

    new-array v1, v9, [I

    shl-int/lit8 v3, v8, 0x8

    and-int/2addr v3, v10

    and-int/2addr v2, v12

    or-int/2addr v2, v3

    and-int v2, v2, v21

    aput v2, v1, v11

    .line 174
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :pswitch_9
    move v12, v9

    add-int/lit8 v0, p2, 0x2

    .line 175
    aget-byte v0, v2, v0

    and-int/2addr v0, v12

    add-int/lit8 v1, p2, 0x3

    .line 176
    aget-byte v1, v2, v1

    add-int/lit8 v1, p2, 0x4

    .line 177
    aget-byte v1, v2, v1

    add-int/lit8 v1, p2, 0x5

    .line 178
    aget-byte v1, v2, v1

    and-int/2addr v1, v12

    add-int/lit8 v3, p2, 0x6

    .line 179
    aget-byte v2, v2, v3

    and-int/2addr v2, v12

    const/4 v3, 0x1

    new-array v4, v3, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v8

    const/4 v6, 0x0

    aput v5, v4, v6

    const/16 v5, 0x1f

    .line 180
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x20

    new-array v5, v3, [I

    shr-int/2addr v0, v6

    const/16 v7, 0xf

    and-int/2addr v0, v7

    aput v0, v5, v6

    .line 181
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x21

    new-array v3, v3, [I

    const/16 v4, 0x8

    shl-int/2addr v1, v4

    const v4, 0xff00

    and-int/2addr v1, v4

    const/16 v4, 0xff

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    and-int v1, v1, v21

    aput v1, v3, v6

    .line 182
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    :cond_a
    :goto_4
    move-object/from16 v1, p0

    goto/16 :goto_e

    .line 183
    :cond_b
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    add-int/lit8 v0, p2, 0x2

    .line 184
    aget-byte v0, v2, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    goto :goto_4

    :cond_d
    add-int/lit8 v0, p2, 0x3

    .line 185
    aget-byte v3, v2, v0

    shr-int/2addr v3, v8

    and-int/2addr v3, v1

    aget-byte v4, v2, v0

    shr-int/2addr v4, v6

    and-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ll0/c0;->a(III)V

    .line 186
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v6, v13, [I

    const/16 v7, 0xb

    aput v7, v6, v5

    aget-byte v0, v2, v0

    const/16 v5, 0xff

    and-int/2addr v0, v5

    aput v0, v6, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v3, v4, v6, v0, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    move v5, v9

    move v1, v11

    add-int/lit8 v0, p2, 0x2

    .line 187
    aget-byte v0, v2, v0

    and-int/2addr v0, v5

    const/16 v3, 0x3c

    new-array v4, v1, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v1

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 188
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3d

    new-array v4, v1, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v1

    aput v5, v4, v6

    .line 189
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v4, v1, [I

    shr-int/lit8 v5, v0, 0x5

    and-int/2addr v5, v1

    aput v5, v4, v6

    .line 190
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3f

    new-array v4, v1, [I

    shr-int/lit8 v5, v0, 0x2

    and-int/2addr v5, v1

    aput v5, v4, v6

    .line 191
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x40

    new-array v4, v1, [I

    shr-int/2addr v0, v6

    and-int/2addr v0, v8

    aput v0, v4, v6

    .line 192
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x37

    new-array v3, v1, [I

    add-int/lit8 v4, p2, 0x3

    .line 193
    aget-byte v4, v2, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x38

    new-array v3, v1, [I

    add-int/lit8 v4, p2, 0x4

    .line 194
    aget-byte v4, v2, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x39

    new-array v3, v1, [I

    add-int/lit8 v4, p2, 0x5

    .line 195
    aget-byte v4, v2, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3a

    new-array v3, v1, [I

    add-int/lit8 v4, p2, 0x6

    .line 196
    aget-byte v4, v2, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3b

    new-array v1, v1, [I

    const/4 v3, 0x7

    add-int/lit8 v3, p2, 0x7

    .line 197
    aget-byte v2, v2, v3

    and-int/2addr v2, v5

    aput v2, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_f
    move v5, v9

    move v6, v10

    move v1, v11

    const/16 v0, 0x2d

    new-array v1, v1, [I

    add-int/lit8 v3, p2, 0x2

    .line 198
    aget-byte v2, v2, v3

    and-int/2addr v2, v5

    aput v2, v1, v6

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_10
    move v1, v11

    const/16 v0, 0x33

    new-array v3, v1, [I

    add-int/lit8 v1, p2, 0x3

    .line 199
    aget-byte v4, v2, v1

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v6, v2, v5

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    const v7, 0xff00

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v7, v2, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    or-int/2addr v4, v7

    const/4 v7, 0x0

    aput v4, v3, v7

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 200
    aget-byte v1, v2, v1

    const/16 v3, 0x10

    shl-int/2addr v1, v3

    const/high16 v3, 0xff0000

    and-int/2addr v1, v3

    aget-byte v3, v2, v5

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    aget-byte v2, v2, v6

    const/16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xa2

    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 201
    sget v0, Lk0/rh;->y:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    .line 202
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    sget v2, Lk0/rh;->F:I

    sget v4, Lk0/rh;->A:I

    add-int/2addr v4, v2

    if-le v0, v4, :cond_11

    if-eqz v2, :cond_11

    const/16 v0, 0xaa

    new-array v2, v3, [I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 203
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    const/16 v0, 0xaa

    new-array v2, v3, [I

    aput v4, v2, v4

    .line 204
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_12
    const/4 v4, 0x0

    const/16 v0, 0xaa

    new-array v2, v3, [I

    aput v4, v2, v4

    .line 205
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 206
    :goto_5
    sget v0, Lk0/rh;->B:I

    if-ne v0, v3, :cond_14

    .line 207
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    sget v2, Lk0/rh;->H:I

    sget v4, Lk0/rh;->C:I

    add-int/2addr v4, v2

    if-le v0, v4, :cond_13

    if-eqz v2, :cond_13

    const/16 v0, 0xac

    new-array v2, v3, [I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 208
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    const/4 v4, 0x0

    const/16 v0, 0xac

    new-array v2, v3, [I

    aput v4, v2, v4

    .line 209
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_14
    const/4 v4, 0x0

    const/16 v0, 0xac

    new-array v2, v3, [I

    aput v4, v2, v4

    .line 210
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 211
    :goto_6
    sget v0, Lk0/rh;->D:I

    if-ne v0, v3, :cond_16

    .line 212
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    sget v1, Lk0/rh;->I:I

    sget v2, Lk0/rh;->E:I

    add-int/2addr v2, v1

    if-le v0, v2, :cond_15

    if-eqz v1, :cond_15

    const/16 v0, 0xad

    new-array v1, v3, [I

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 213
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_15
    const/4 v4, 0x0

    const/16 v0, 0xad

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 214
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_16
    const/4 v4, 0x0

    const/16 v0, 0xad

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 215
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_17
    move v4, v10

    move v3, v11

    add-int/lit8 v0, p2, 0x2

    .line 216
    aget-byte v0, v2, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const-string v1, "persist.syu.reversefrontdoor"

    .line 217
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_18

    new-array v1, v3, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v3

    aput v5, v1, v4

    .line 218
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v3, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v3

    aput v5, v1, v4

    .line 219
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_18
    new-array v1, v3, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v3

    aput v5, v1, v4

    .line 220
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v3, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v3

    aput v5, v1, v4

    .line 221
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_7
    new-array v1, v3, [I

    shr-int/lit8 v5, v0, 0x4

    and-int/2addr v5, v3

    aput v5, v1, v4

    .line 222
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v3, [I

    shr-int/lit8 v5, v0, 0x5

    and-int/2addr v5, v3

    aput v5, v1, v4

    .line 223
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v3, [I

    shr-int/2addr v0, v8

    and-int/2addr v0, v3

    aput v0, v1, v4

    .line 224
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    move-object/from16 v1, p0

    .line 225
    iget v0, v1, Lk0/rh;->q:I

    add-int/lit8 v4, p2, 0x4

    aget-byte v5, v2, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v3

    if-eq v0, v5, :cond_26

    .line 226
    aget-byte v0, v2, v4

    shr-int/2addr v0, v6

    and-int/2addr v0, v3

    iput v0, v1, Lk0/rh;->q:I

    if-nez v0, :cond_26

    const/16 v0, 0x21c

    const/4 v2, 0x0

    .line 227
    invoke-static {v2, v2, v2, v0}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    :cond_19
    add-int/lit8 v0, p2, 0x2

    .line 228
    aget-byte v0, v2, v0

    add-int/lit8 v3, p2, 0x3

    .line 229
    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/2addr v0, v3

    .line 230
    iput v0, v1, Lk0/rh;->o:I

    const/4 v0, 0x0

    .line 231
    :goto_8
    iget-object v3, v1, Lk0/rh;->p:[[I

    array-length v4, v3

    if-ge v0, v4, :cond_1b

    .line 232
    iget v4, v1, Lk0/rh;->o:I

    aget-object v5, v3, v0

    const/4 v7, 0x0

    aget v5, v5, v7

    if-ne v4, v5, :cond_1a

    if-eqz v4, :cond_1b

    .line 233
    iput v0, v1, Lk0/rh;->n:I

    goto :goto_9

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 234
    :cond_1b
    :goto_9
    iget v4, v1, Lk0/rh;->o:I

    if-eq v4, v8, :cond_24

    if-eq v4, v6, :cond_22

    packed-switch v4, :pswitch_data_2

    const/16 v4, 0xff

    and-int/2addr v2, v4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    .line 235
    array-length v2, v3

    if-ge v0, v2, :cond_26

    .line 236
    aget-object v0, v3, v0

    aget v0, v0, v4

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_1c
    if-nez v2, :cond_26

    .line 237
    iget v0, v1, Lk0/rh;->n:I

    array-length v2, v3

    const/16 v5, 0xff

    if-ge v0, v2, :cond_1d

    if-eq v0, v5, :cond_1d

    .line 238
    aget-object v0, v3, v0

    aget v0, v0, v4

    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    .line 239
    :cond_1d
    iput v5, v1, Lk0/rh;->n:I

    goto/16 :goto_e

    :pswitch_a
    const/16 v5, 0xff

    const/4 v0, 0x0

    :goto_a
    and-int/lit16 v3, v2, 0xff

    if-ge v0, v3, :cond_1e

    const/16 v3, 0x1e

    const/4 v4, 0x0

    .line 240
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1e
    const/16 v0, 0x1e

    const/4 v3, 0x1

    .line 241
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_b
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xff

    move v0, v4

    :goto_b
    and-int/lit16 v6, v2, 0xff

    if-ge v0, v6, :cond_1f

    const/16 v6, 0x1f

    .line 242
    invoke-static {v6, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    const/16 v6, 0x1f

    .line 243
    invoke-static {v6, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_c
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xff

    move v0, v4

    :goto_c
    and-int/lit16 v6, v2, 0xff

    if-ge v0, v6, :cond_20

    const/16 v6, 0x8

    .line 244
    invoke-static {v6, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_20
    const/16 v6, 0x8

    .line 245
    invoke-static {v6, v3}, Ll0/b0;->l0(II)V

    goto :goto_e

    :pswitch_d
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xff

    move v0, v4

    :goto_d
    and-int/lit16 v6, v2, 0xff

    if-ge v0, v6, :cond_21

    const/4 v6, 0x7

    .line 246
    invoke-static {v6, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    goto :goto_d

    :cond_21
    const/4 v6, 0x7

    .line 247
    invoke-static {v6, v3}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_22
    const/4 v3, 0x1

    const/16 v5, 0xff

    and-int/lit16 v0, v2, 0xff

    if-ne v0, v3, :cond_26

    .line 248
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_23

    new-array v0, v6, [I

    .line 249
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_e

    :cond_23
    const/4 v2, 0x0

    .line 250
    invoke-static {v8, v2}, Ll0/b0;->l0(II)V

    .line 251
    invoke-static {v8, v3}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_24
    const/16 v0, 0xff

    const/4 v3, 0x1

    and-int/2addr v0, v2

    if-ne v0, v3, :cond_26

    .line 252
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_25

    new-array v0, v6, [I

    .line 253
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_e

    :cond_25
    const/4 v2, 0x0

    .line 254
    invoke-static {v6, v2}, Ll0/b0;->l0(II)V

    .line 255
    invoke-static {v6, v3}, Ll0/b0;->l0(II)V

    :cond_26
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x82
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x82
        0x1
        0x4
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/rh;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/rh;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/rh;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/rh;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb2

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

    const/4 p4, 0x4

    const/16 v0, 0xe3

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v2, :cond_9

    const/16 p3, 0x8

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget p1, p2, v3

    const/16 p4, 0xff

    if-eq p1, p4, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rh;->a3(I)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rh;->b3(I)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rh;->f3(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rh;->g3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_4
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rh;->d3(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_5
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rh;->c3(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_6
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/rh;->e3(I)V

    goto/16 :goto_0

    .line 9
    :cond_1
    aget p1, p2, v4

    const/16 p2, 0xa2

    const/16 v0, 0x2710

    if-eq p1, v4, :cond_6

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_2

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Lk0/rh;->a3(I)V

    .line 11
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, p2

    sput p1, Lk0/rh;->I:I

    .line 12
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/rh;->I:I

    if-eq p1, p3, :cond_3

    .line 13
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_3
    const/16 p1, 0xb1

    new-array p2, v4, [I

    .line 14
    sget p3, Lk0/rh;->I:I

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0, v0}, Lk0/rh;->f3(I)V

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, p2

    sput p1, Lk0/rh;->H:I

    .line 17
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    const/16 p2, 0xa

    invoke-virtual {p1, p2, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/rh;->H:I

    if-eq p1, p3, :cond_5

    .line 18
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_5
    const/16 p1, 0xb0

    new-array p2, v4, [I

    .line 19
    sget p3, Lk0/rh;->H:I

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_0

    :cond_6
    const/4 p1, 0x6

    .line 20
    invoke-virtual {p0, p1}, Lk0/rh;->c3(I)V

    .line 21
    invoke-virtual {p0, v0}, Lk0/rh;->d3(I)V

    .line 22
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, p2

    sput p1, Lk0/rh;->F:I

    .line 23
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, p3, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/rh;->F:I

    if-eq p1, p2, :cond_7

    .line 24
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, p3, p2}, Lo1/g0;->g(II)V

    :cond_7
    const/16 p1, 0xae

    new-array p2, v4, [I

    .line 25
    sget v0, Lk0/rh;->F:I

    aput v0, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 26
    new-instance p1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/text/format/Time;->setToNow()V

    .line 28
    iget p2, p1, Landroid/text/format/Time;->year:I

    add-int/lit16 p2, p2, -0x7d0

    int-to-byte p2, p2

    .line 29
    iget v0, p1, Landroid/text/format/Time;->month:I

    add-int/2addr v0, v4

    int-to-byte v0, v0

    .line 30
    iget p1, p1, Landroid/text/format/Time;->monthDay:I

    int-to-byte p1, p1

    shl-int/lit8 p2, p2, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr p2, v1

    shl-int/lit8 p3, v0, 0x8

    const v0, 0xff00

    and-int/2addr p3, v0

    or-int/2addr p2, p3

    and-int/2addr p1, p4

    or-int/2addr p1, p2

    .line 31
    sput p1, Lk0/rh;->G:I

    .line 32
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/rh;->G:I

    if-eq p1, p3, :cond_8

    .line 33
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_8
    const/16 p1, 0xaf

    new-array p2, v4, [I

    .line 34
    sget p3, Lk0/rh;->G:I

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_9
    new-array p1, p3, [I

    aput v0, p1, v3

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v2, p1, v2

    .line 35
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_a
    new-array p1, p4, [I

    aput v0, p1, v3

    const/16 p3, 0x82

    aput p3, p1, v4

    aput v4, p1, v2

    .line 36
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_b
    new-array p1, p3, [I

    aput v0, p1, v3

    const/16 p3, 0x84

    aput p3, p1, v4

    aput v2, p1, v2

    .line 37
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

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

.method public final a3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/rh;->E:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa6

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    const/4 v0, 0x7

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/rh;->E:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final b3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/rh;->D:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa9

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/rh;->D:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final c3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/rh;->z:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xa4

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/rh;->z:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final d3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/rh;->A:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa3

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    const/4 v0, 0x3

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/rh;->A:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final e3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/rh;->y:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xa7

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/rh;->y:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final f3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/rh;->C:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa5

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    const/4 v0, 0x5

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/rh;->C:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final g3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/rh;->B:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xa8

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/rh;->B:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/rh;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final h3(III)Z
    .locals 5

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p2, p2, 0xff

    const/4 v4, 0x1

    if-le v2, v0, :cond_1

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0xc

    add-int/2addr v3, v2

    add-int/2addr v1, p3

    if-le v3, v1, :cond_0

    return v4

    :cond_0
    if-ne v3, v1, :cond_3

    if-le p2, p1, :cond_3

    return v4

    :cond_1
    if-ne v2, v0, :cond_3

    add-int/2addr v1, p3

    if-le v3, v1, :cond_2

    return v4

    :cond_2
    if-ne v3, v1, :cond_3

    if-le p2, p1, :cond_3

    return v4

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
