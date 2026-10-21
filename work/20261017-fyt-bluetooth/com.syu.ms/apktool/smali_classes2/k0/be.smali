.class public Lk0/be;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static final r:[I

.field public static final s:[I

.field public static t:I = 0xa

.field public static u:I = 0xa

.field public static v:I = 0xa

.field public static w:I


# instance fields
.field public final b:[I

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:J

.field public l:I

.field public m:Lo1/g0;

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lk0/be;->r:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 2
    sput-object v0, Lk0/be;->s:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/be;->b:[I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lk0/be;->d:Z

    .line 4
    iput v0, p0, Lk0/be;->f:I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_1

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v4, 0x3

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v5, 0x4

    aput-object v0, v1, v5

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v6, 0x5

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v6, 0x6

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/4 v6, 0x7

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v6, 0x8

    aput-object v0, v1, v6

    iput-object v1, p0, Lk0/be;->g:[[I

    .line 6
    new-instance v0, Lk0/be$a;

    invoke-direct {v0, p0}, Lk0/be$a;-><init>(Lk0/be;)V

    iput-object v0, p0, Lk0/be;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/be$b;

    invoke-direct {v0, p0}, Lk0/be$b;-><init>(Lk0/be;)V

    iput-object v0, p0, Lk0/be;->i:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/be$c;

    invoke-direct {v0, p0}, Lk0/be$c;-><init>(Lk0/be;)V

    iput-object v0, p0, Lk0/be;->j:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lk0/be;->k:J

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lk0/be;->l:I

    .line 11
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x20

    invoke-direct {v0, v1, v6}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/be;->m:Lo1/g0;

    .line 12
    iput v3, p0, Lk0/be;->n:I

    .line 13
    iput v2, p0, Lk0/be;->o:I

    .line 14
    iput v4, p0, Lk0/be;->p:I

    .line 15
    iput v5, p0, Lk0/be;->q:I

    return-void

    nop

    :array_0
    .array-data 4
        0x258
        0x64
        0x78
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0x17
        0xc
    .end array-data
.end method

.method public static synthetic d3(Lk0/be;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/be;->c3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/be;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/be;->k:J

    return-wide v0
.end method

.method public static synthetic f3(Lk0/be;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/be;->k:J

    return-wide p1
.end method

.method public static synthetic g3(Lk0/be;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/be;->l:I

    return p0
.end method

.method public static synthetic h3(Lk0/be;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/be;->l:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->j:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v3, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v3, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v0, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v3, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v3, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    :cond_0
    iget-object v0, p0, Lk0/be;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v3, p0, Lk0/be;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const/4 v0, 0x3

    .line 16
    invoke-virtual {p0, v0, v2}, Lk0/be;->i3(II)V

    const/4 v0, 0x4

    .line 17
    invoke-virtual {p0, v0, v2}, Lk0/be;->i3(II)V

    const/4 v3, 0x7

    .line 18
    invoke-virtual {p0, v3, v2}, Lk0/be;->i3(II)V

    .line 19
    iget-object v3, p0, Lk0/be;->m:Lo1/g0;

    invoke-virtual {v3, v0, v2}, Lo1/g0;->b(II)I

    move-result v0

    sput v0, Lk0/be;->w:I

    const/16 v3, 0x9d

    new-array v1, v1, [I

    aput v0, v1, v2

    .line 20
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x7f

    const/4 v4, 0x2

    if-eq v2, v3, :cond_34

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0x10

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v2, :pswitch_data_0

    const/16 v10, 0xa

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_15

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    add-int/lit8 v8, p2, 0x4

    .line 4
    aget-byte v12, v1, v8

    add-int/lit8 v15, p2, 0x5

    .line 5
    aget-byte v16, v1, v15

    add-int/lit8 v9, p2, 0x6

    .line 6
    aget-byte v9, v1, v9

    new-array v3, v14, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v3, v13

    .line 7
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v14

    aput v10, v3, v13

    .line 8
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v14

    aput v6, v3, v13

    .line 9
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v14

    aput v5, v3, v13

    const/16 v5, 0xd

    .line 10
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v14

    aput v5, v3, v13

    const/16 v5, 0xe

    .line 11
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    and-int/2addr v2, v14

    aput v2, v3, v13

    .line 12
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v14, [I

    shr-int/lit8 v5, v4, 0x7

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v14, [I

    shr-int/lit8 v5, v4, 0x6

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v14, [I

    shr-int/lit8 v5, v4, 0x5

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v14, [I

    and-int/lit8 v5, v4, 0xf

    aput v5, v3, v13

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x40

    new-array v3, v14, [I

    shr-int/2addr v4, v11

    and-int/2addr v4, v14

    aput v4, v3, v13

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 18
    invoke-static {v2, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    aget-byte v12, v1, v15

    .line 20
    aget-byte v16, v1, v8

    :cond_0
    move/from16 v1, v16

    and-int/lit16 v2, v12, 0xff

    if-eqz v2, :cond_2

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x1b

    new-array v4, v14, [I

    aput v2, v4, v13

    .line 21
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x1b

    new-array v3, v14, [I

    const/4 v4, -0x3

    aput v4, v3, v13

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1b

    new-array v3, v14, [I

    const/4 v4, -0x2

    aput v4, v3, v13

    .line 23
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_4

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1c

    new-array v3, v14, [I

    aput v1, v3, v13

    .line 24
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x1c

    new-array v2, v14, [I

    const/4 v3, -0x3

    aput v3, v2, v13

    .line 25
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x1c

    new-array v2, v14, [I

    const/4 v3, -0x2

    aput v3, v2, v13

    .line 26
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0x41

    new-array v2, v14, [I

    shr-int/lit8 v3, v9, 0x7

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 27
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v14, [I

    and-int/lit8 v3, v9, 0x1

    aput v3, v2, v13

    .line 28
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-gez v2, :cond_5

    move v4, v13

    goto :goto_2

    :cond_5
    if-le v2, v4, :cond_6

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    const/16 v2, 0x99

    new-array v3, v14, [I

    aput v4, v3, v13

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-gez v2, :cond_7

    move v2, v13

    goto :goto_3

    :cond_7
    if-le v2, v10, :cond_8

    move v2, v10

    .line 32
    :cond_8
    :goto_3
    invoke-virtual {v0, v2}, Lk0/be;->k3(I)V

    const/16 v3, 0x9a

    new-array v4, v14, [I

    aput v2, v4, v13

    .line 33
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 34
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-gez v2, :cond_9

    move v2, v13

    goto :goto_4

    :cond_9
    if-le v2, v10, :cond_a

    move v2, v10

    .line 35
    :cond_a
    :goto_4
    invoke-virtual {v0, v2}, Lk0/be;->m3(I)V

    const/16 v3, 0x9b

    new-array v4, v14, [I

    aput v2, v4, v13

    .line 36
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 37
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-gez v1, :cond_b

    move v10, v13

    goto :goto_5

    :cond_b
    if-le v1, v10, :cond_c

    goto :goto_5

    :cond_c
    move v10, v1

    .line 38
    :goto_5
    invoke-virtual {v0, v10}, Lk0/be;->n3(I)V

    const/16 v1, 0x9c

    new-array v2, v14, [I

    aput v10, v2, v13

    .line 39
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 41
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 42
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 43
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x6

    .line 44
    aget-byte v1, v1, v7

    const/16 v7, 0x78

    new-array v8, v14, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v12

    aput v9, v8, v13

    .line 45
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x77

    new-array v8, v14, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v12

    aput v9, v8, v13

    .line 46
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x79

    new-array v8, v14, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v8, v13

    .line 47
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v7, v14, [I

    shr-int/lit8 v8, v3, 0x4

    and-int/lit8 v8, v8, 0x7

    aput v8, v7, v13

    .line 48
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v7, v14, [I

    shr-int/lit8 v8, v3, 0x2

    and-int/2addr v8, v12

    aput v8, v7, v13

    .line 49
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v7, v14, [I

    and-int/2addr v3, v12

    aput v3, v7, v13

    .line 50
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v14, [I

    shr-int/lit8 v7, v5, 0x7

    and-int/2addr v7, v14

    aput v7, v3, v13

    .line 51
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v14, [I

    shr-int/2addr v5, v11

    and-int/2addr v5, v12

    aput v5, v3, v13

    .line 52
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v14, [I

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 53
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v3, v6, 0x6

    and-int/2addr v3, v14

    aput v3, v2, v13

    const/16 v3, 0x7f

    .line 54
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v14, [I

    shr-int/lit8 v5, v6, 0x5

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 55
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v14, [I

    shr-int/lit8 v5, v6, 0x4

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 56
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v14, [I

    shr-int/lit8 v5, v6, 0x3

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 57
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v14, [I

    shr-int/lit8 v5, v6, 0x2

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 58
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v14, [I

    and-int/lit8 v5, v6, 0x3

    aput v5, v3, v13

    .line 59
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v14, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v14, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v14, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v12

    aput v5, v3, v13

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v14, [I

    shr-int/lit8 v5, v1, 0x3

    and-int/2addr v5, v14

    aput v5, v3, v13

    .line 63
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v14, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v14

    aput v1, v3, v13

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    const/high16 v3, 0xff0000

    const v5, 0xff00

    if-ne v2, v14, :cond_f

    const/16 v2, 0x62

    new-array v4, v14, [I

    add-int/lit8 v8, p2, 0x3

    .line 66
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v14, [I

    add-int/lit8 v8, p2, 0x4

    .line 67
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v14, [I

    add-int/lit8 v8, p2, 0x6

    .line 68
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v14, [I

    add-int/lit8 v8, p2, 0x8

    .line 69
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v14, [I

    add-int/lit8 v8, p2, 0xa

    .line 70
    aget-byte v8, v1, v8

    shl-int/2addr v8, v7

    and-int/2addr v3, v8

    add-int/lit8 v8, p2, 0xb

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v5

    or-int/2addr v3, v8

    add-int/lit8 v8, p2, 0xc

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    aput v3, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0xd

    .line 71
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xf

    .line 72
    aget-byte v2, v1, v2

    const/16 v3, 0x68

    new-array v4, v14, [I

    and-int/lit8 v5, v2, 0x3

    aput v5, v4, v13

    .line 73
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v14, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v12

    aput v5, v4, v13

    .line 74
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v14, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v12

    aput v5, v4, v13

    .line 75
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v4, v14, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v14

    aput v5, v4, v13

    .line 76
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v14, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v14

    aput v2, v4, v13

    .line 77
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x10

    .line 78
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-gez v1, :cond_d

    move v6, v13

    goto :goto_6

    :cond_d
    if-le v1, v6, :cond_e

    goto :goto_6

    :cond_e
    move v6, v1

    :goto_6
    const/16 v1, 0x6d

    new-array v2, v14, [I

    .line 79
    iget-object v3, v0, Lk0/be;->b:[I

    aget v3, v3, v6

    aput v3, v2, v13

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_f
    if-ne v2, v4, :cond_35

    const/16 v2, 0x6e

    new-array v4, v14, [I

    add-int/lit8 v8, p2, 0x3

    .line 80
    aget-byte v8, v1, v8

    shl-int/2addr v8, v7

    and-int/2addr v8, v3

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v14, [I

    add-int/lit8 v8, p2, 0x6

    .line 81
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v14, [I

    add-int/lit8 v8, p2, 0x8

    .line 82
    aget-byte v8, v1, v8

    shl-int/2addr v8, v7

    and-int/2addr v8, v3

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v14, [I

    add-int/lit8 v8, p2, 0xb

    .line 83
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0xc

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    aput v8, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v14, [I

    add-int/lit8 v8, p2, 0xd

    .line 84
    aget-byte v8, v1, v8

    shl-int/lit8 v7, v8, 0x10

    and-int/2addr v3, v7

    add-int/lit8 v7, p2, 0xe

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v5

    or-int/2addr v3, v7

    add-int/lit8 v7, p2, 0xf

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    aput v3, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x10

    .line 85
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x11

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x12

    .line 86
    aget-byte v2, v1, v2

    const/16 v3, 0x68

    new-array v4, v14, [I

    and-int/lit8 v5, v2, 0x3

    aput v5, v4, v13

    .line 87
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v14, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v12

    aput v5, v4, v13

    .line 88
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v14, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v12

    aput v5, v4, v13

    .line 89
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v4, v14, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v14

    aput v5, v4, v13

    .line 90
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v14, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v14

    aput v2, v4, v13

    .line 91
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x13

    .line 92
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-gez v1, :cond_10

    move v6, v13

    goto :goto_7

    :cond_10
    if-le v1, v6, :cond_11

    goto :goto_7

    :cond_11
    move v6, v1

    :goto_7
    const/16 v1, 0x6d

    new-array v2, v14, [I

    .line 93
    iget-object v3, v0, Lk0/be;->b:[I

    aget v3, v3, v6

    aput v3, v2, v13

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 94
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 95
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 96
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 97
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x6

    .line 98
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x7

    .line 99
    aget-byte v1, v1, v8

    and-int/lit8 v2, v2, 0xf

    sub-int/2addr v2, v14

    .line 100
    sget-object v8, Lk0/nt;->g:[I

    const/16 v9, 0x8b

    aget v11, v8, v9

    if-eq v11, v2, :cond_12

    .line 101
    aput v2, v8, v9

    .line 102
    sget-object v11, Lk0/nt;->f:[Lo1/x;

    new-array v15, v14, [I

    aput v2, v15, v13

    invoke-static {v11, v9, v15, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_12
    and-int/lit16 v2, v3, 0xff

    if-gez v2, :cond_13

    move v3, v13

    goto :goto_8

    :cond_13
    const/16 v3, 0x28

    if-le v2, v3, :cond_14

    const/16 v3, 0x28

    goto :goto_8

    :cond_14
    move v3, v2

    :goto_8
    const/16 v9, 0x90

    .line 103
    aget v9, v8, v9

    if-eq v9, v3, :cond_15

    const/16 v9, 0x90

    .line 104
    aput v3, v8, v9

    .line 105
    sget-object v8, Lk0/nt;->f:[Lo1/x;

    new-array v11, v14, [I

    aput v3, v11, v13

    invoke-static {v8, v9, v11, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_15
    and-int/lit16 v1, v1, 0xff

    if-gez v1, :cond_16

    move v1, v13

    goto :goto_9

    :cond_16
    sub-int/2addr v3, v14

    if-le v1, v3, :cond_17

    move v1, v3

    :cond_17
    :goto_9
    and-int/lit8 v3, v7, 0xf

    if-eqz v3, :cond_18

    move v3, v14

    :cond_18
    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    if-nez v2, :cond_19

    mul-int/lit8 v5, v5, 0xa

    .line 106
    :cond_19
    sget-object v2, Lk0/be;->s:[I

    aget v6, v2, v1

    if-eq v6, v5, :cond_35

    .line 107
    aput v5, v2, v1

    .line 108
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v6, 0x8f

    new-array v7, v12, [I

    aput v1, v7, v13

    aput v5, v7, v14

    aput v3, v7, v4

    invoke-static {v2, v6, v7, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_15

    .line 109
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_35

    add-int/lit8 v2, p2, 0x3

    .line 110
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->c1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 111
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ll0/c0;->c1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 112
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->c1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 113
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->c1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_15

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x12fc

    invoke-static {v2, v1, v14, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_15

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 115
    aget-byte v2, v1, v2

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v14

    if-nez v2, :cond_1a

    goto :goto_a

    :cond_1a
    move v5, v9

    .line 116
    :goto_a
    sget-object v3, Lk0/nt;->g:[I

    const/16 v6, 0x8e

    aget v6, v3, v6

    if-eq v6, v5, :cond_1b

    const/16 v6, 0x8e

    .line 117
    aput v5, v3, v6

    .line 118
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v7, v14, [I

    aput v5, v7, v13

    invoke-static {v3, v6, v7, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_1b
    move v3, v13

    :goto_b
    if-ge v3, v5, :cond_35

    add-int/lit8 v6, p2, 0x3

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    .line 119
    aget-byte v7, v1, v6

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v14

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v7

    if-nez v2, :cond_1c

    mul-int/lit8 v6, v6, 0xa

    .line 120
    :cond_1c
    sget-object v7, Lk0/nt;->f:[Lo1/x;

    const/16 v8, 0x8c

    new-array v9, v4, [I

    aput v3, v9, v13

    aput v6, v9, v14

    invoke-static {v7, v8, v9, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 121
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 122
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 123
    aget-byte v1, v1, v4

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v14

    if-nez v4, :cond_1d

    move v4, v13

    goto :goto_c

    :cond_1d
    if-ne v4, v7, :cond_1e

    const/16 v4, 0x2710

    .line 124
    :cond_1e
    :goto_c
    sget-object v5, Lk0/nt;->g:[I

    const/16 v6, 0x8a

    aget v6, v5, v6

    if-eq v6, v4, :cond_1f

    const/16 v6, 0x8a

    .line 125
    aput v4, v5, v6

    .line 126
    sget-object v6, Lk0/nt;->f:[Lo1/x;

    const/16 v7, 0x8a

    new-array v8, v14, [I

    aput v4, v8, v13

    invoke-static {v6, v7, v8, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_1f
    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v14

    if-nez v6, :cond_20

    move v6, v13

    goto :goto_d

    :cond_20
    move v6, v14

    :goto_d
    const/16 v7, 0x93

    .line 127
    aget v7, v5, v7

    if-eq v7, v6, :cond_21

    const/16 v7, 0x93

    .line 128
    aput v6, v5, v7

    .line 129
    sget-object v7, Lk0/nt;->f:[Lo1/x;

    const/16 v8, 0x93

    new-array v9, v14, [I

    aput v6, v9, v13

    invoke-static {v7, v8, v9, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_21
    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v14

    if-nez v6, :cond_22

    move v6, v13

    goto :goto_e

    :cond_22
    move v6, v14

    :goto_e
    const/16 v7, 0x91

    .line 130
    aget v7, v5, v7

    if-eq v7, v6, :cond_23

    const/16 v7, 0x91

    .line 131
    aput v6, v5, v7

    .line 132
    sget-object v7, Lk0/nt;->f:[Lo1/x;

    const/16 v8, 0x91

    new-array v9, v14, [I

    aput v6, v9, v13

    invoke-static {v7, v8, v9, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_23
    shr-int/2addr v2, v11

    and-int/2addr v2, v14

    if-nez v2, :cond_24

    move v2, v13

    goto :goto_f

    :cond_24
    move v2, v14

    :goto_f
    const/16 v6, 0x92

    .line 133
    aget v6, v5, v6

    if-eq v6, v2, :cond_25

    const/16 v6, 0x92

    .line 134
    aput v2, v5, v6

    .line 135
    sget-object v6, Lk0/nt;->f:[Lo1/x;

    const/16 v7, 0x92

    new-array v8, v14, [I

    aput v2, v8, v13

    invoke-static {v6, v7, v8, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_25
    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    if-nez v4, :cond_26

    mul-int/lit8 v1, v1, 0xa

    :cond_26
    const/16 v2, 0x89

    .line 136
    aget v2, v5, v2

    if-eq v2, v1, :cond_35

    const/16 v2, 0x89

    .line 137
    aput v1, v5, v2

    .line 138
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x89

    new-array v4, v14, [I

    aput v1, v4, v13

    invoke-static {v2, v3, v4, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 139
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 140
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 141
    aget-byte v1, v1, v5

    const-string v5, "persist.syu.reversefrontdoor"

    .line 142
    invoke-static {v5, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_27

    new-array v5, v14, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v14

    aput v6, v5, v13

    .line 143
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v14, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v14

    aput v6, v5, v13

    .line 144
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_27
    new-array v5, v14, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v14

    aput v6, v5, v13

    .line 145
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v14, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v14

    aput v6, v5, v13

    .line 146
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_10
    new-array v5, v14, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v14

    aput v6, v5, v13

    .line 147
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v14, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v14

    aput v6, v5, v13

    .line 148
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v14, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v14

    aput v6, v5, v13

    .line 149
    invoke-static {v8, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v14, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v14

    aput v2, v5, v13

    .line 150
    invoke-static {v13, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v3, 0xf

    if-eq v2, v14, :cond_2a

    if-eq v2, v4, :cond_29

    if-eq v2, v12, :cond_28

    goto :goto_11

    :cond_28
    const/16 v2, 0x3f5

    new-array v4, v14, [I

    aput v13, v4, v13

    .line 151
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_29
    const/16 v2, 0x3f5

    new-array v5, v14, [I

    aput v4, v5, v13

    .line 152
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_2a
    const/16 v2, 0x3f5

    new-array v4, v14, [I

    aput v14, v4, v13

    .line 153
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 154
    :goto_11
    sget v2, Lk0/be;->w:I

    if-ne v2, v14, :cond_2c

    shr-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v14, :cond_2b

    .line 155
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 156
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_12

    .line 157
    :cond_2b
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 158
    invoke-static {}, Lk0/qt;->f()V

    :cond_2c
    :goto_12
    const/16 v2, 0x76

    new-array v3, v14, [I

    aput v1, v3, v13

    .line 159
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 160
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 161
    aget-byte v1, v1, v3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_2f

    if-ne v1, v14, :cond_2d

    .line 162
    iput-boolean v14, v0, Lk0/be;->c:Z

    goto/16 :goto_15

    :cond_2d
    if-nez v1, :cond_35

    .line 163
    iget-boolean v1, v0, Lk0/be;->c:Z

    if-eqz v1, :cond_35

    .line 164
    iput-boolean v13, v0, Lk0/be;->c:Z

    .line 165
    sget v1, Lk0/be;->w:I

    if-ne v1, v14, :cond_35

    .line 166
    iget-boolean v1, v0, Lk0/be;->d:Z

    xor-int/2addr v1, v14

    iput-boolean v1, v0, Lk0/be;->d:Z

    if-eqz v1, :cond_2e

    .line 167
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 168
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_15

    .line 169
    :cond_2e
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 170
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_15

    :cond_2f
    const/16 v3, 0x18

    if-ne v2, v3, :cond_30

    goto :goto_15

    .line 171
    :cond_30
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_35

    and-int/lit16 v2, v2, 0xff

    .line 172
    iput v2, v0, Lk0/be;->f:I

    move v2, v13

    .line 173
    :goto_13
    iget-object v3, v0, Lk0/be;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_32

    .line 174
    iget v4, v0, Lk0/be;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v13

    if-ne v4, v5, :cond_31

    if-eqz v4, :cond_32

    .line 175
    iput v2, v0, Lk0/be;->e:I

    goto :goto_14

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_32
    :goto_14
    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_33

    .line 176
    array-length v1, v3

    if-ge v2, v1, :cond_35

    .line 177
    aget-object v1, v3, v2

    aget v1, v1, v14

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto :goto_15

    .line 178
    :cond_33
    array-length v1, v3

    if-gt v2, v1, :cond_35

    .line 179
    iget v1, v0, Lk0/be;->e:I

    aget-object v1, v3, v1

    aget v1, v1, v14

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    goto :goto_15

    .line 180
    :cond_34
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_35
    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/be;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/be;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/be;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x9e

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
    .locals 10

    const/16 p3, 0xa

    const/4 p4, 0x0

    if-eqz p1, :cond_3c

    const/16 v0, 0xf

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x3ed

    const/16 v1, 0xe3

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq p1, v0, :cond_39

    if-eq p1, v5, :cond_36

    if-eq p1, v3, :cond_33

    if-eq p1, v2, :cond_30

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2d

    const/4 v6, 0x6

    if-eq p1, v6, :cond_2a

    const/16 v7, 0xc

    const/16 v8, 0xb

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const/16 p3, 0x8

    const/16 v9, 0x83

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    goto/16 :goto_15

    .line 1
    :pswitch_0
    invoke-virtual {p0, p2, v5}, Lk0/be;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_3f

    new-array p1, v0, [I

    aput v1, p1, p4

    const/16 p3, 0x8c

    aput p3, p1, v4

    aput v5, p1, v5

    .line 2
    aget p3, p2, p4

    aput p3, p1, v3

    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    .line 3
    :pswitch_1
    invoke-virtual {p0, p2, v5}, Lk0/be;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_3f

    new-array p1, v0, [I

    aput v1, p1, p4

    const/16 p3, 0x8f

    aput p3, p1, v4

    aput v5, p1, v5

    .line 4
    aget p3, p2, p4

    aput p3, p1, v3

    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    .line 5
    :pswitch_2
    invoke-virtual {p0, p2, v5}, Lk0/be;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_3f

    new-array p1, v0, [I

    aput v1, p1, p4

    aput v9, p1, v4

    aput v5, p1, v5

    .line 6
    aget p3, p2, p4

    aput p3, p1, v3

    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_3
    new-array p1, v0, [I

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_4
    if-eqz p2, :cond_3f

    .line 8
    invoke-virtual {p0, p2, v5}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 9
    aget p1, p2, p4

    const/16 p3, 0xd1

    const/16 v6, 0x8d

    if-ne p1, p3, :cond_0

    new-array p1, v0, [I

    aput v1, p1, p4

    aput v6, p1, v4

    aput v5, p1, v5

    .line 10
    aget p2, p2, v4

    add-int/2addr p2, v4

    aput p2, p1, v3

    aput p4, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_0
    new-array p1, v0, [I

    aput v1, p1, p4

    aput v6, p1, v4

    aput v5, p1, v5

    .line 11
    aget p3, p2, p4

    aput p3, p1, v3

    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_5
    if-eqz p2, :cond_3f

    .line 12
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 13
    aget p1, p2, p4

    if-gez p1, :cond_1

    .line 14
    aput p4, p2, p4

    goto :goto_0

    .line 15
    :cond_1
    aget p1, p2, p4

    const/16 p3, 0x7e

    if-le p1, p3, :cond_2

    .line 16
    aput p3, p2, p4

    :cond_2
    :goto_0
    new-array p1, v0, [I

    aput v1, p1, p4

    aput v9, p1, v4

    aput v5, p1, v5

    aput v8, p1, v3

    .line 17
    aget p2, p2, p4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_6
    if-eqz p2, :cond_3f

    .line 18
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 19
    aget p1, p2, p4

    if-eqz p1, :cond_3

    .line 20
    aput v4, p2, p4

    goto :goto_1

    .line 21
    :cond_3
    aput p4, p2, p4

    :goto_1
    new-array p1, v0, [I

    aput v1, p1, p4

    aput v9, p1, v4

    aput v5, p1, v5

    aput v7, p1, v3

    .line 22
    aget p2, p2, p4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_7
    if-eqz p2, :cond_3f

    .line 23
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 24
    aget p1, p2, p4

    if-gez p1, :cond_4

    .line 25
    aput p4, p2, p4

    goto :goto_2

    .line 26
    :cond_4
    aget p1, p2, p4

    if-le p1, v8, :cond_5

    .line 27
    aput v8, p2, p4

    :cond_5
    :goto_2
    new-array p1, v0, [I

    aput v1, p1, p4

    aput v9, p1, v4

    aput v5, p1, v5

    aput v6, p1, v3

    .line 28
    aget p2, p2, p4

    add-int/2addr p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_8
    if-eqz p2, :cond_3f

    .line 29
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 30
    aget p1, p2, p4

    if-eqz p1, :cond_6

    .line 31
    aput v3, p2, p4

    goto :goto_3

    .line 32
    :cond_6
    aput v5, p2, p4

    :goto_3
    new-array p1, v0, [I

    aput v1, p1, p4

    aput v9, p1, v4

    aput v5, p1, v5

    .line 33
    aget p2, p2, p4

    aput p2, p1, v3

    aput p4, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_9
    if-eqz p2, :cond_3f

    .line 34
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 35
    aget p1, p2, p4

    if-gez p1, :cond_7

    .line 36
    aput p4, p2, p4

    goto :goto_4

    .line 37
    :cond_7
    aget p1, p2, p4

    if-le p1, v8, :cond_8

    .line 38
    aput v8, p2, p4

    :cond_8
    :goto_4
    new-array p1, v0, [I

    aput v1, p1, p4

    aput v9, p1, v4

    aput v5, p1, v5

    const/4 p3, 0x7

    aput p3, p1, v3

    .line 39
    aget p2, p2, p4

    add-int/2addr p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_a
    if-eqz p2, :cond_3f

    .line 40
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 41
    aget p1, p2, p4

    if-eqz p1, :cond_9

    new-array p1, v0, [I

    .line 42
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_9
    new-array p1, v0, [I

    .line 43
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_b
    if-eqz p2, :cond_3f

    .line 44
    array-length p1, p2

    if-lez p1, :cond_3f

    new-array p1, v0, [I

    .line 45
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_c
    if-eqz p2, :cond_3f

    .line 46
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 47
    aget p1, p2, p4

    if-ne p1, v5, :cond_a

    .line 48
    aput v0, p2, p4

    goto :goto_5

    .line 49
    :cond_a
    aget p1, p2, p4

    if-ne p1, v4, :cond_b

    .line 50
    aput v2, p2, p4

    goto :goto_5

    .line 51
    :cond_b
    aput p3, p2, p4

    :goto_5
    new-array p1, v0, [I

    aput v1, p1, p4

    aput v9, p1, v4

    aput v5, p1, v5

    .line 52
    aget p2, p2, p4

    aput p2, p1, v3

    aput p4, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_d
    if-eqz p2, :cond_3f

    .line 53
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 54
    aget p1, p2, p4

    if-eqz p1, :cond_c

    .line 55
    aput p3, p2, p4

    goto :goto_6

    :cond_c
    const/16 p1, 0x9

    .line 56
    aput p1, p2, p4

    :goto_6
    new-array p1, v0, [I

    aput v1, p1, p4

    aput v9, p1, v4

    aput v5, p1, v5

    .line 57
    aget p2, p2, p4

    aput p2, p1, v3

    aput p4, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :pswitch_e
    if-eqz p2, :cond_3f

    .line 58
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 59
    aget p1, p2, p4

    if-eqz p1, :cond_d

    .line 60
    aput v4, p2, p4

    .line 61
    :cond_d
    aget p1, p2, p4

    invoke-virtual {p0, v6, p1}, Lk0/be;->a3(II)V

    .line 62
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/be;->l3(I)V

    goto/16 :goto_15

    :pswitch_f
    if-eqz p2, :cond_3f

    .line 63
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 64
    aget p1, p2, p4

    if-eqz p1, :cond_e

    .line 65
    aput v4, p2, p4

    :cond_e
    const/16 p1, 0x1a

    .line 66
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_10
    if-eqz p2, :cond_3f

    .line 67
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 68
    aget p1, p2, p4

    if-eqz p1, :cond_f

    .line 69
    aput v4, p2, p4

    :cond_f
    const/16 p1, 0x1e

    .line 70
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_11
    if-eqz p2, :cond_3f

    .line 71
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 72
    aget p1, p2, p4

    if-gez p1, :cond_10

    .line 73
    aput p4, p2, p4

    goto :goto_7

    .line 74
    :cond_10
    aget p1, p2, p4

    if-le p1, v5, :cond_11

    .line 75
    aput v5, p2, p4

    :cond_11
    :goto_7
    const/16 p1, 0x1d

    .line 76
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_12
    if-eqz p2, :cond_3f

    .line 77
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 78
    aget p1, p2, p4

    if-eqz p1, :cond_12

    .line 79
    aput v4, p2, p4

    :cond_12
    const/16 p1, 0x1c

    .line 80
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_13
    if-eqz p2, :cond_3f

    .line 81
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 82
    aget p1, p2, p4

    if-eqz p1, :cond_13

    .line 83
    aput v4, p2, p4

    :cond_13
    const/16 p1, 0x1f

    .line 84
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_14
    if-eqz p2, :cond_3f

    .line 85
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 86
    aget p1, p2, p4

    if-gez p1, :cond_14

    .line 87
    aput p4, p2, p4

    goto :goto_8

    .line 88
    :cond_14
    aget p1, p2, p4

    if-le p1, v5, :cond_15

    .line 89
    aput v5, p2, p4

    :cond_15
    :goto_8
    const/16 p1, 0x1b

    .line 90
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_15
    if-eqz p2, :cond_3f

    .line 91
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 92
    aget p1, p2, p4

    if-eqz p1, :cond_16

    .line 93
    aput v4, p2, p4

    :cond_16
    const/16 p1, 0x19

    .line 94
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_16
    if-eqz p2, :cond_3f

    .line 95
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 96
    aget p1, p2, p4

    if-eqz p1, :cond_17

    .line 97
    aput v4, p2, p4

    :cond_17
    const/16 p1, 0x18

    .line 98
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_17
    if-eqz p2, :cond_3f

    .line 99
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 100
    aget p1, p2, p4

    if-eqz p1, :cond_18

    .line 101
    aput v4, p2, p4

    :cond_18
    const/16 p1, 0x16

    .line 102
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_18
    if-eqz p2, :cond_3f

    .line 103
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 104
    aget p1, p2, p4

    if-gez p1, :cond_19

    .line 105
    aput p4, p2, p4

    goto :goto_9

    .line 106
    :cond_19
    aget p1, p2, p4

    if-le p1, p3, :cond_1a

    .line 107
    aput p3, p2, p4

    .line 108
    :cond_1a
    :goto_9
    aget p1, p2, p4

    invoke-virtual {p0, v2, p1}, Lk0/be;->a3(II)V

    goto/16 :goto_15

    :pswitch_19
    if-eqz p2, :cond_3f

    .line 109
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 110
    aget p1, p2, p4

    if-gez p1, :cond_1b

    .line 111
    aput p4, p2, p4

    goto :goto_a

    .line 112
    :cond_1b
    aget p1, p2, p4

    if-le p1, p3, :cond_1c

    .line 113
    aput p3, p2, p4

    .line 114
    :cond_1c
    :goto_a
    aget p1, p2, p4

    invoke-virtual {p0, v3, p1}, Lk0/be;->a3(II)V

    goto/16 :goto_15

    :pswitch_1a
    if-eqz p2, :cond_3f

    .line 115
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 116
    aget p1, p2, p4

    if-gez p1, :cond_1d

    .line 117
    aput p4, p2, p4

    goto :goto_b

    .line 118
    :cond_1d
    aget p1, p2, p4

    if-le p1, p3, :cond_1e

    .line 119
    aput p3, p2, p4

    .line 120
    :cond_1e
    :goto_b
    aget p1, p2, p4

    invoke-virtual {p0, v5, p1}, Lk0/be;->a3(II)V

    goto/16 :goto_15

    :pswitch_1b
    if-eqz p2, :cond_3f

    .line 121
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 122
    aget p1, p2, p4

    if-gez p1, :cond_1f

    .line 123
    aput p4, p2, p4

    goto :goto_c

    .line 124
    :cond_1f
    aget p1, p2, p4

    if-le p1, v5, :cond_20

    .line 125
    aput v5, p2, p4

    .line 126
    :cond_20
    :goto_c
    aget p1, p2, p4

    invoke-virtual {p0, v4, p1}, Lk0/be;->a3(II)V

    goto/16 :goto_15

    :pswitch_1c
    if-eqz p2, :cond_3f

    .line 127
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 128
    aget p1, p2, p4

    if-gez p1, :cond_21

    .line 129
    aput p4, p2, p4

    goto :goto_d

    .line 130
    :cond_21
    aget p1, p2, p4

    if-le p1, v3, :cond_22

    .line 131
    aput v3, p2, p4

    :cond_22
    :goto_d
    const/16 p1, 0x15

    .line 132
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_1d
    if-eqz p2, :cond_3f

    .line 133
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 134
    aget p1, p2, p4

    if-eqz p1, :cond_23

    .line 135
    aput v4, p2, p4

    :cond_23
    const/16 p1, 0x13

    .line 136
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_1e
    if-eqz p2, :cond_3f

    .line 137
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 138
    aget p1, p2, p4

    if-eqz p1, :cond_24

    .line 139
    aput v4, p2, p4

    :cond_24
    const/16 p1, 0x12

    .line 140
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_1f
    if-eqz p2, :cond_3f

    .line 141
    array-length p1, p2

    if-lez p1, :cond_3f

    const/16 p1, 0x11

    .line 142
    invoke-virtual {p0, p1, p4}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_20
    if-eqz p2, :cond_3f

    .line 143
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 144
    aget p1, p2, p4

    if-eqz p1, :cond_25

    .line 145
    aput v4, p2, p4

    :cond_25
    const/16 p1, 0xd

    .line 146
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_21
    if-eqz p2, :cond_3f

    .line 147
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 148
    aget p1, p2, p4

    if-eqz p1, :cond_26

    .line 149
    aput v4, p2, p4

    .line 150
    :cond_26
    aget p1, p2, p4

    invoke-virtual {p0, v7, p1}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_22
    if-eqz p2, :cond_3f

    .line 151
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 152
    aget p1, p2, p4

    if-gez p1, :cond_27

    .line 153
    aput p4, p2, p4

    goto :goto_e

    .line 154
    :cond_27
    aget p1, p2, p4

    if-le p1, v5, :cond_28

    .line 155
    aput v5, p2, p4

    .line 156
    :cond_28
    :goto_e
    aget p1, p2, p4

    invoke-virtual {p0, v8, p1}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :pswitch_23
    if-eqz p2, :cond_3f

    .line 157
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 158
    aget p1, p2, p4

    if-eqz p1, :cond_29

    .line 159
    aput v4, p2, p4

    .line 160
    :cond_29
    aget p1, p2, p4

    invoke-virtual {p0, p3, p1}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :cond_2a
    if-eqz p2, :cond_3f

    .line 161
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 162
    aget p1, p2, p4

    if-gez p1, :cond_2b

    .line 163
    aput p4, p2, p4

    goto :goto_f

    .line 164
    :cond_2b
    aget p1, p2, p4

    if-le p1, v2, :cond_2c

    .line 165
    aput v2, p2, p4

    .line 166
    :cond_2c
    :goto_f
    aget p1, p2, p4

    invoke-virtual {p0, v6, p1}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :cond_2d
    if-eqz p2, :cond_3f

    .line 167
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 168
    aget p1, p2, p4

    if-gez p1, :cond_2e

    .line 169
    aput p4, p2, p4

    goto :goto_10

    .line 170
    :cond_2e
    aget p1, p2, p4

    if-le p1, v3, :cond_2f

    .line 171
    aput v3, p2, p4

    .line 172
    :cond_2f
    :goto_10
    aget p1, p2, p4

    invoke-virtual {p0, v0, p1}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :cond_30
    if-eqz p2, :cond_3f

    .line 173
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 174
    aget p1, p2, p4

    if-gez p1, :cond_31

    .line 175
    aput p4, p2, p4

    goto :goto_11

    .line 176
    :cond_31
    aget p1, p2, p4

    if-le p1, v5, :cond_32

    .line 177
    aput v5, p2, p4

    .line 178
    :cond_32
    :goto_11
    aget p1, p2, p4

    invoke-virtual {p0, v2, p1}, Lk0/be;->b3(II)V

    goto/16 :goto_15

    :cond_33
    if-eqz p2, :cond_3f

    .line 179
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 180
    aget p1, p2, p4

    if-gez p1, :cond_34

    .line 181
    aput p4, p2, p4

    goto :goto_12

    .line 182
    :cond_34
    aget p1, p2, p4

    if-le p1, v5, :cond_35

    .line 183
    aput v5, p2, p4

    .line 184
    :cond_35
    :goto_12
    aget p1, p2, p4

    invoke-virtual {p0, v3, p1}, Lk0/be;->b3(II)V

    goto :goto_15

    :cond_36
    if-eqz p2, :cond_3f

    .line 185
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 186
    aget p1, p2, p4

    if-gez p1, :cond_37

    .line 187
    aput p4, p2, p4

    goto :goto_13

    .line 188
    :cond_37
    aget p1, p2, p4

    if-le p1, v5, :cond_38

    .line 189
    aput v5, p2, p4

    .line 190
    :cond_38
    :goto_13
    aget p1, p2, p4

    invoke-virtual {p0, v5, p1}, Lk0/be;->b3(II)V

    goto :goto_15

    :cond_39
    if-eqz p2, :cond_3f

    .line 191
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 192
    aget p1, p2, p4

    if-nez p1, :cond_3a

    .line 193
    aput v3, p2, p4

    :cond_3a
    new-array p1, v2, [I

    aput v1, p1, p4

    const/16 p3, 0x8a

    aput p3, p1, v4

    aput v4, p1, v5

    .line 194
    aget p2, p2, p4

    aput p2, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_15

    :cond_3b
    if-eqz p2, :cond_3f

    .line 195
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 196
    invoke-virtual {p0, v0, p4}, Lk0/be;->b3(II)V

    goto :goto_15

    :cond_3c
    if-eqz p2, :cond_3f

    .line 197
    array-length p1, p2

    if-lez p1, :cond_3f

    .line 198
    aget p1, p2, p4

    if-gez p1, :cond_3d

    .line 199
    aput p4, p2, p4

    goto :goto_14

    .line 200
    :cond_3d
    aget p1, p2, p4

    if-le p1, p3, :cond_3e

    .line 201
    aput p3, p2, p4

    .line 202
    :cond_3e
    :goto_14
    aget p1, p2, p4

    invoke-virtual {p0, p4, p1}, Lk0/be;->b3(II)V

    :cond_3f
    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x15
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x50
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x8d
        0x2
        0x8
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x2
        0xa
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x2
        0xa
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public final a3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8c

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8f

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-byte p1, p1

    const/16 v0, 0x17

    .line 1
    invoke-virtual {p0, v0, p1}, Lk0/be;->b3(II)V

    return-void
.end method

.method public final i3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8d

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final j3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/be;->t:I

    .line 2
    iget-object p1, p0, Lk0/be;->m:Lo1/g0;

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/be;->t:I

    if-eq p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lk0/be;->m:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final l3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/be;->w:I

    .line 2
    iget-object v0, p0, Lk0/be;->m:Lo1/g0;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    sget v3, Lk0/be;->w:I

    if-eq v0, v3, :cond_0

    .line 3
    iget-object v0, p0, Lk0/be;->m:Lo1/g0;

    invoke-virtual {v0, v1, v3}, Lo1/g0;->g(II)V

    :cond_0
    const/16 v0, 0x9d

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v2

    .line 4
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    return-void
.end method

.method public final m3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/be;->v:I

    .line 2
    iget-object p1, p0, Lk0/be;->m:Lo1/g0;

    const/4 v0, 0x3

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/be;->v:I

    if-eq p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lk0/be;->m:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final n3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/be;->u:I

    .line 2
    iget-object p1, p0, Lk0/be;->m:Lo1/g0;

    const/4 v0, 0x2

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/be;->u:I

    if-eq p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lk0/be;->m:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
