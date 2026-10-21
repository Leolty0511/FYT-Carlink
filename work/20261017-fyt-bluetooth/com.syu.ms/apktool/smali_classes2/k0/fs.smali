.class public Lk0/fs;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static s:I = 0xff

.field public static t:I = 0x14

.field public static u:I = 0x1e

.field public static v:I

.field public static w:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Lo1/g0;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;


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
    iput v0, p0, Lk0/fs;->c:I

    const/16 v1, 0x2a

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

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v6, 0xc

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v6, 0xd

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v7, 0xe

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v7, 0xf

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v7, 0x10

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v7, 0x11

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v7, 0x12

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v7, 0x13

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v7, 0x14

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v7, 0x15

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v7, 0x16

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v7, 0x17

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v8, 0x18

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v8, 0x19

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v8, 0x1a

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v8, 0x1b

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v8, 0x1c

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v8, 0x1d

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v8, 0x1e

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v8, 0x1f

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v8, 0x20

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v9, 0x21

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v9, 0x22

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v9, 0x23

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v9, 0x24

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v9, 0x25

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v9, 0x26

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v9, 0x27

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v9, 0x28

    aput-object v3, v1, v9

    new-array v2, v2, [I

    fill-array-data v2, :array_29

    const/16 v3, 0x29

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/fs;->d:[[I

    .line 4
    iput v0, p0, Lk0/fs;->e:I

    .line 5
    iput v0, p0, Lk0/fs;->f:I

    .line 6
    iput-boolean v0, p0, Lk0/fs;->g:Z

    .line 7
    iput v0, p0, Lk0/fs;->h:I

    .line 8
    iput v0, p0, Lk0/fs;->i:I

    .line 9
    new-instance v1, Lk0/fs$a;

    invoke-direct {v1, p0}, Lk0/fs$a;-><init>(Lk0/fs;)V

    iput-object v1, p0, Lk0/fs;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/fs;->k:Lo1/g0;

    .line 11
    iput v4, p0, Lk0/fs;->l:I

    .line 12
    iput v5, p0, Lk0/fs;->m:I

    .line 13
    iput v6, p0, Lk0/fs;->n:I

    .line 14
    iput v7, p0, Lk0/fs;->o:I

    .line 15
    iput v0, p0, Lk0/fs;->p:I

    .line 16
    new-instance v0, Lk0/fs$b;

    invoke-direct {v0, p0}, Lk0/fs$b;-><init>(Lk0/fs;)V

    iput-object v0, p0, Lk0/fs;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/fs$c;

    invoke-direct {v0, p0}, Lk0/fs$c;-><init>(Lk0/fs;)V

    iput-object v0, p0, Lk0/fs;->r:Ljava/lang/Runnable;

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
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x30
        0x26
    .end array-data

    :array_e
    .array-data 4
        0x31
        0x36
    .end array-data

    :array_f
    .array-data 4
        0x32
        0x9
    .end array-data

    :array_10
    .array-data 4
        0x33
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x34
        0x18
    .end array-data

    :array_12
    .array-data 4
        0x35
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x36
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x37
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x38
        0x43
    .end array-data

    :array_16
    .array-data 4
        0x39
        0x44
    .end array-data

    :array_17
    .array-data 4
        0x3a
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x3d
        0xb
    .end array-data

    :array_19
    .array-data 4
        0x3f
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x40
        0x31
    .end array-data

    :array_1b
    .array-data 4
        0x41
        0x28
    .end array-data

    :array_1c
    .array-data 4
        0x42
        0x29
    .end array-data

    :array_1d
    .array-data 4
        0x43
        0x2a
    .end array-data

    :array_1e
    .array-data 4
        0x44
        0x2b
    .end array-data

    :array_1f
    .array-data 4
        0x45
        0x2c
    .end array-data

    :array_20
    .array-data 4
        0x46
        0x2d
    .end array-data

    :array_21
    .array-data 4
        0x47
        0x2e
    .end array-data

    :array_22
    .array-data 4
        0x48
        0x2f
    .end array-data

    :array_23
    .array-data 4
        0x49
        0x30
    .end array-data

    :array_24
    .array-data 4
        0x4a
        0x32
    .end array-data

    :array_25
    .array-data 4
        0x4b
        0x33
    .end array-data

    :array_26
    .array-data 4
        0x81
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x82
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x83
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x84
        -0x1
    .end array-data
.end method

.method public static synthetic a3()I
    .locals 1

    .line 1
    sget v0, Lk0/fs;->u:I

    return v0
.end method

.method public static synthetic b3(Lk0/fs;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/fs;->k:Lo1/g0;

    return-object p0
.end method

.method public static synthetic c3(Lk0/fs;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/fs;->h3(I)V

    return-void
.end method

.method public static synthetic d3(Lk0/fs;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/fs;->j3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/fs;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/fs;->g3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/fs;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/fs;->i3(I)V

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
    iget-object v0, p0, Lk0/fs;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/fs;->q:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/fs;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    .line 9
    iput v2, v0, Lk0/mt;->i:I

    .line 10
    iput v2, v0, Lk0/mt;->l:I

    return-void
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x58

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_28

    const/16 v3, 0x30

    if-eq v2, v3, :cond_27

    const/16 v3, 0x35

    const/4 v8, 0x3

    if-eq v2, v3, :cond_26

    const/16 v10, 0x1f

    const/4 v11, 0x4

    const/4 v12, 0x5

    const/4 v13, 0x6

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    const-string v3, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 4
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 5
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 6
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 7
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 8
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 9
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 10
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 11
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    .line 12
    iget v2, v0, Lk0/fs;->e:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v5, v1, v3

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    if-ne v2, v5, :cond_1

    iget v2, v0, Lk0/fs;->f:I

    aget-byte v5, v1, v3

    shr-int/2addr v5, v11

    and-int/2addr v5, v7

    if-eq v2, v5, :cond_7

    .line 13
    :cond_1
    aget-byte v2, v1, v3

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    iput v2, v0, Lk0/fs;->e:I

    .line 14
    aget-byte v3, v1, v3

    shr-int/2addr v3, v11

    and-int/2addr v3, v7

    iput v3, v0, Lk0/fs;->f:I

    .line 15
    sget v5, Lu0/b;->r0:I

    if-nez v5, :cond_7

    if-eq v2, v7, :cond_4

    if-ne v3, v7, :cond_2

    goto/16 :goto_1

    :cond_2
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    .line 16
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Jumppage out 111  = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v0, Lk0/fs;->g:Z

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "----JumpPage.isCarUiTop() = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->a0()Z

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 17
    iget-boolean v2, v0, Lk0/fs;->g:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x62

    new-array v5, v7, [I

    aput v6, v5, v6

    .line 18
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 19
    iget v2, v0, Lk0/fs;->h:I

    invoke-static {v2}, Ly0/h;->t0(I)V

    const-wide/16 v10, 0x64

    .line 20
    invoke-static {v10, v11}, La/i;->a0(J)V

    .line 21
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Jumppage out 22222  = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lk0/fs;->g:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->a0()Z

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lo1/u;->k()V

    const-wide/16 v10, 0x15e

    .line 23
    invoke-static {v10, v11}, La/i;->a0(J)V

    const-string v2, "persist.lesc.video.ignore"

    const-string v5, "false"

    .line 24
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Jumppage out 333333  = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lk0/fs;->g:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->a0()Z

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 26
    iput-boolean v6, v0, Lk0/fs;->g:Z

    goto :goto_3

    .line 27
    :cond_4
    :goto_1
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x62

    new-array v3, v7, [I

    aput v7, v3, v6

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 29
    iput-boolean v7, v0, Lk0/fs;->g:Z

    const-string v2, "persist.lesc.video.ignore"

    const-string v3, "true"

    .line 30
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    .line 31
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 32
    invoke-static {}, Lo1/u;->z()I

    .line 33
    sget v2, Ly0/f;->x:I

    if-nez v2, :cond_5

    sget v2, Ly0/f;->c:I

    sget v3, Ly0/f;->R:I

    mul-int/2addr v2, v3

    sget v3, Ly0/f;->S:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    float-to-int v2, v2

    .line 34
    sget v3, Ly0/f;->c:I

    iput v3, v0, Lk0/fs;->h:I

    .line 35
    invoke-static {v2}, Ly0/h;->t0(I)V

    .line 36
    :cond_6
    invoke-static {v6}, Lu0/d;->C2(I)V

    :cond_7
    :goto_3
    add-int/lit8 v2, p2, 0x6

    .line 37
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_f

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 38
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 39
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 40
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v12, p2, 0x5

    .line 41
    aget-byte v13, v1, v12

    and-int/2addr v5, v13

    if-nez v3, :cond_8

    if-nez v8, :cond_8

    if-nez v10, :cond_8

    if-nez v5, :cond_8

    .line 42
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 43
    :cond_8
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_9

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_9

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_9

    sget v6, Ll0/c0;->j:I

    if-eq v6, v5, :cond_a

    .line 44
    :cond_9
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_a

    .line 45
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 46
    sput v11, Ll0/c0;->k:I

    .line 47
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 48
    :cond_a
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 49
    sput v8, Ll0/c0;->h:I

    .line 50
    sput v10, Ll0/c0;->i:I

    .line 51
    sput v5, Ll0/c0;->j:I

    .line 52
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 53
    aget-byte v2, v1, v4

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 54
    aget-byte v2, v1, v9

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 55
    aget-byte v1, v1, v12

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_f

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 56
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 57
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 58
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 59
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_f

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v11, p2, 0x3

    .line 61
    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    add-int/lit8 v14, p2, 0x4

    .line 62
    aget-byte v15, v1, v14

    and-int/2addr v15, v5

    add-int/lit8 v16, p2, 0x5

    .line 63
    aget-byte v9, v1, v16

    and-int/2addr v9, v5

    add-int/lit8 v17, p2, 0x6

    .line 64
    aget-byte v18, v1, v17

    new-array v8, v7, [I

    shr-int/lit8 v19, v2, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v6

    const/16 v3, 0xa

    .line 65
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xb

    new-array v4, v7, [I

    shr-int/lit8 v20, v2, 0x6

    and-int/lit8 v20, v20, 0x1

    aput v20, v4, v6

    .line 66
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v8, v7, [I

    shr-int/lit8 v20, v2, 0x5

    and-int/lit8 v20, v20, 0x1

    aput v20, v8, v6

    .line 67
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v8, v7, [I

    shr-int/lit8 v20, v2, 0x3

    and-int/lit8 v20, v20, 0x1

    aput v20, v8, v6

    .line 68
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v8, v7, [I

    shr-int/lit8 v20, v2, 0x2

    and-int/lit8 v20, v20, 0x1

    aput v20, v8, v6

    .line 69
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v8, v7, [I

    shr-int/lit8 v20, v2, 0x0

    and-int/lit8 v20, v20, 0x1

    aput v20, v8, v6

    .line 70
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xf

    new-array v8, v7, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v8, v6

    .line 71
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v7, [I

    shr-int/lit8 v8, v11, 0x7

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 72
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v7, [I

    shr-int/lit8 v8, v11, 0x6

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 73
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v7, [I

    shr-int/lit8 v8, v11, 0x5

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 74
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x7

    .line 75
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v4, v7, [I

    .line 76
    aget-byte v8, v1, v17

    shr-int/2addr v8, v13

    and-int/2addr v8, v7

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 77
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 78
    aget-byte v2, v1, v16

    and-int/lit16 v15, v2, 0xff

    .line 79
    aget-byte v2, v1, v14

    and-int/lit16 v9, v2, 0xff

    :cond_b
    const/4 v2, -0x1

    const/4 v4, -0x3

    const/4 v5, -0x2

    const/16 v8, 0x1b

    const/16 v11, 0x1c

    if-eqz v15, :cond_f

    if-eq v15, v10, :cond_e

    if-ltz v15, :cond_d

    if-gt v15, v11, :cond_d

    .line 80
    aget-byte v14, v1, v17

    shr-int/2addr v14, v13

    and-int/2addr v14, v7

    if-ne v14, v7, :cond_c

    new-array v14, v7, [I

    mul-int/2addr v15, v3

    add-int/lit16 v15, v15, 0x24e

    aput v15, v14, v6

    .line 81
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    new-array v14, v7, [I

    mul-int/2addr v15, v12

    add-int/lit16 v15, v15, 0x9b

    aput v15, v14, v6

    .line 82
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    new-array v14, v7, [I

    aput v2, v14, v6

    .line 83
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    new-array v14, v7, [I

    aput v4, v14, v6

    .line 84
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    new-array v14, v7, [I

    aput v5, v14, v6

    .line 85
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    :goto_5
    if-eqz v9, :cond_13

    if-eq v9, v10, :cond_12

    if-lt v9, v7, :cond_11

    if-gt v9, v11, :cond_11

    .line 86
    aget-byte v2, v1, v17

    shr-int/2addr v2, v13

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_10

    new-array v2, v7, [I

    mul-int/2addr v9, v3

    add-int/lit16 v9, v9, 0x24e

    aput v9, v2, v6

    .line 87
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_10
    new-array v2, v7, [I

    mul-int/2addr v9, v12

    add-int/lit16 v9, v9, 0x9b

    aput v9, v2, v6

    .line 88
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    new-array v3, v7, [I

    aput v2, v3, v6

    .line 89
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    new-array v2, v7, [I

    aput v4, v2, v6

    .line 90
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    new-array v2, v7, [I

    aput v5, v2, v6

    .line 91
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v2, 0x43

    new-array v3, v7, [I

    .line 92
    aget-byte v4, v1, v17

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v7, [I

    .line 93
    aget-byte v4, v1, v17

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 94
    aget-byte v3, v1, v17

    const/4 v4, 0x2

    shr-int/2addr v3, v4

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/16 v3, 0x35

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    .line 95
    aget-byte v4, v1, v17

    const/4 v8, 0x3

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 96
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 97
    aget-byte v1, v1, v4

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v8

    aput v1, v2, v6

    const/16 v1, 0x1e

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 98
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 99
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 100
    iput v2, v0, Lk0/fs;->c:I

    move v2, v6

    .line 101
    :goto_7
    iget-object v3, v0, Lk0/fs;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_15

    .line 102
    iget v4, v0, Lk0/fs;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_14

    if-eqz v4, :cond_15

    .line 103
    iput v2, v0, Lk0/fs;->b:I

    goto :goto_8

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 104
    :cond_15
    :goto_8
    iget v4, v0, Lk0/fs;->c:I

    const/16 v8, 0x36

    if-eq v4, v8, :cond_24

    const/16 v8, 0x3a

    if-eq v4, v8, :cond_20

    const/16 v8, 0x3f

    if-eq v4, v8, :cond_1c

    packed-switch v4, :pswitch_data_1

    and-int/2addr v1, v5

    if-ne v1, v7, :cond_16

    .line 105
    array-length v1, v3

    if-ge v2, v1, :cond_29

    .line 106
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_16
    if-nez v1, :cond_29

    .line 107
    iget v1, v0, Lk0/fs;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_17

    if-eq v1, v5, :cond_17

    .line 108
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 109
    :cond_17
    iput v5, v0, Lk0/fs;->b:I

    goto/16 :goto_f

    :pswitch_5
    move v2, v6

    :goto_9
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x8

    if-ge v2, v3, :cond_18

    .line 110
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 111
    :cond_18
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :pswitch_6
    move v2, v6

    :goto_a
    and-int/lit16 v3, v1, 0xff

    const/4 v4, 0x7

    if-ge v2, v3, :cond_19

    .line 112
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 113
    :cond_19
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :pswitch_7
    move v2, v6

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1a

    const/16 v3, 0x1e

    .line 114
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1a
    const/16 v3, 0x1e

    .line 115
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :pswitch_8
    move v2, v6

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1b

    .line 116
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 117
    :cond_1b
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 118
    :cond_1c
    iget v2, v0, Lk0/fs;->i:I

    if-eq v2, v1, :cond_29

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    if-ne v2, v7, :cond_1e

    .line 119
    sget v2, Lu0/b;->j:I

    if-nez v2, :cond_1d

    .line 120
    invoke-static {v7}, Lu0/d;->N(I)V

    goto :goto_d

    .line 121
    :cond_1d
    invoke-static {v6}, Lu0/d;->N(I)V

    goto :goto_d

    :cond_1e
    if-nez v1, :cond_1f

    if-ne v2, v7, :cond_1f

    .line 122
    sget v2, Lu0/b;->j:I

    if-nez v2, :cond_1f

    .line 123
    invoke-static {v7}, Lu0/d;->N(I)V

    .line 124
    :cond_1f
    :goto_d
    iput v1, v0, Lk0/fs;->i:I

    goto/16 :goto_f

    .line 125
    :cond_20
    iget v2, v0, Lk0/fs;->i:I

    if-eq v2, v1, :cond_29

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    if-ne v2, v7, :cond_22

    .line 126
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 127
    iget v2, v0, Lk0/fs;->e:I

    if-nez v2, :cond_23

    iget v2, v0, Lk0/fs;->f:I

    if-nez v2, :cond_23

    .line 128
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    .line 129
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    goto :goto_e

    .line 130
    :cond_21
    invoke-static {}, Lo1/u;->z()I

    goto :goto_e

    :cond_22
    if-nez v1, :cond_23

    if-ne v2, v7, :cond_23

    .line 131
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    .line 132
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    .line 133
    :cond_23
    :goto_e
    iput v1, v0, Lk0/fs;->i:I

    goto :goto_f

    :cond_24
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_29

    .line 134
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_25

    .line 135
    invoke-static {}, Lo1/u;->z()I

    goto :goto_f

    .line 136
    :cond_25
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    .line 137
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_26
    add-int/lit8 v2, p2, 0x2

    .line 138
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_f

    .line 139
    :cond_27
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_f

    :cond_28
    move v3, v4

    const/16 v2, 0x63

    new-array v4, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 140
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :cond_29
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x81
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/fs;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/fs;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/fs;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/fs;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x68

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

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    const/4 v5, 0x6

    if-eq p1, v3, :cond_2

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget p1, p2, v4

    if-nez p1, :cond_1

    const-string p1, "persist.lesc.video.ignore"

    .line 2
    invoke-static {p1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    sget p1, Lk0/fs;->t:I

    invoke-static {p1}, Ly0/h;->u0(I)V

    .line 4
    :cond_1
    sget p1, Lk0/nt;->U:I

    if-ne p1, v3, :cond_8

    .line 5
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v4

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_8

    .line 6
    array-length p1, p2

    if-lez p1, :cond_8

    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v4

    const/16 p3, 0xa8

    aput p3, p1, v3

    aput v1, p1, v2

    .line 7
    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v3

    aput p3, p1, p4

    aget p3, p2, v2

    aput p3, p1, v1

    aget p3, p2, v0

    aput p3, p1, v5

    const/4 p3, 0x7

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_8

    .line 8
    array-length p1, p2

    if-lez p1, :cond_8

    .line 9
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfd

    if-ne p1, v5, :cond_4

    .line 10
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/fs;->j3(I)V

    goto :goto_0

    .line 11
    :cond_4
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfc

    if-ne p1, v5, :cond_5

    .line 12
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/fs;->g3(I)V

    goto :goto_0

    .line 13
    :cond_5
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf9

    if-ne p1, v5, :cond_6

    .line 14
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/fs;->i3(I)V

    goto :goto_0

    .line 15
    :cond_6
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf4

    if-ne p1, v5, :cond_7

    .line 16
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/fs;->h3(I)V

    goto :goto_0

    :cond_7
    new-array p1, v1, [I

    aput p3, p1, v4

    const/16 p3, 0xc6

    aput p3, p1, v3

    aput v2, p1, v2

    .line 17
    aget p3, p2, v4

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final g3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x65

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/fs;->u:I

    .line 3
    iget-object p1, p0, Lk0/fs;->k:Lo1/g0;

    const/16 v0, 0xb

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/fs;->u:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/fs;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final h3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x66

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/fs;->w:I

    .line 3
    iget-object p1, p0, Lk0/fs;->k:Lo1/g0;

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/fs;->w:I

    if-eq p1, v3, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v3, Lk0/fs;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.allscreenon"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/fs;->k:Lo1/g0;

    sget v0, Lk0/fs;->w:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final i3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x67

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/fs;->v:I

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc6

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v0, v1, v0

    const/4 v0, 0x3

    const/16 v3, 0xb1

    aput v3, v1, v0

    const/4 v0, 0x4

    aput p1, v1, v0

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/fs;->k:Lo1/g0;

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/fs;->v:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/fs;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final j3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x64

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/fs;->t:I

    .line 3
    iget-object p1, p0, Lk0/fs;->k:Lo1/g0;

    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/fs;->t:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/fs;->k:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
