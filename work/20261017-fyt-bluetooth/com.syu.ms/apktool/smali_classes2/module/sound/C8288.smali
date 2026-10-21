.class public Lmodule/sound/C8288;
.super Lmodule/sound/AudioDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/sound/C8288$STATE;,
        Lmodule/sound/C8288$CHANNLE;,
        Lmodule/sound/C8288$SBID;
    }
.end annotation


# instance fields
.field public final I0:Z

.field public final J0:Ljava/lang/String;

.field public final K0:[I

.field public L0:[I

.field public final M0:[I

.field public final N0:[I

.field public final O0:[I

.field public final P0:[I

.field public final Q0:[I

.field public final R0:[I

.field public final S0:[I

.field public final T0:[I

.field public U0:[I

.field public V0:Lo1/e0;

.field public W0:Landroid/media/AudioManager;

.field public X0:Landroid/util/SparseIntArray;

.field public Y0:Landroid/util/SparseIntArray;

.field public Z0:Landroid/util/SparseIntArray;

.field public a1:Ljava/lang/Runnable;

.field public b1:I

.field public final c1:Ljava/lang/Runnable;

.field public d1:Ljava/lang/Runnable;

.field public e1:Ljava/lang/Runnable;

.field public f1:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lo1/e0;)V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x1

    .line 1
    invoke-direct {v0, v1, v2}, Lmodule/sound/AudioDevice;-><init>(II)V

    const/4 v3, 0x0

    .line 2
    iput-boolean v3, v0, Lmodule/sound/C8288;->I0:Z

    const-string v4, "C8288"

    .line 3
    iput-object v4, v0, Lmodule/sound/C8288;->J0:Ljava/lang/String;

    new-array v4, v1, [I

    .line 4
    fill-array-data v4, :array_0

    iput-object v4, v0, Lmodule/sound/C8288;->K0:[I

    new-array v4, v1, [I

    const/16 v5, 0x10

    .line 5
    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    aput v6, v4, v3

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    aput v6, v4, v2

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    const/4 v7, 0x2

    aput v6, v4, v7

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    const/4 v8, 0x3

    aput v6, v4, v8

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    const/4 v9, 0x4

    aput v6, v4, v9

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    const/4 v10, 0x5

    aput v6, v4, v10

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    const/4 v11, 0x6

    aput v6, v4, v11

    iput-object v4, v0, Lmodule/sound/C8288;->L0:[I

    new-array v4, v1, [I

    .line 6
    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    aput v6, v4, v3

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    aput v6, v4, v2

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    aput v6, v4, v7

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    aput v6, v4, v8

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    aput v6, v4, v9

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    aput v6, v4, v10

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v6

    aput v6, v4, v11

    iput-object v4, v0, Lmodule/sound/C8288;->M0:[I

    new-array v6, v1, [I

    const/16 v12, 0x15

    .line 7
    invoke-static {v12}, Lmodule/sound/C8288;->D1(I)I

    move-result v13

    aput v13, v6, v3

    const/16 v13, 0x12

    invoke-static {v13}, Lmodule/sound/C8288;->D1(I)I

    move-result v14

    aput v14, v6, v2

    const/16 v14, 0xc

    invoke-static {v14}, Lmodule/sound/C8288;->D1(I)I

    move-result v15

    aput v15, v6, v7

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v15

    aput v15, v6, v8

    const/16 v15, 0x14

    invoke-static {v15}, Lmodule/sound/C8288;->D1(I)I

    move-result v16

    aput v16, v6, v9

    const/16 v16, 0x18

    invoke-static/range {v16 .. v16}, Lmodule/sound/C8288;->D1(I)I

    move-result v17

    aput v17, v6, v10

    const/16 v17, 0x1a

    invoke-static/range {v17 .. v17}, Lmodule/sound/C8288;->D1(I)I

    move-result v18

    aput v18, v6, v11

    iput-object v6, v0, Lmodule/sound/C8288;->N0:[I

    new-array v12, v1, [I

    const/16 v19, 0xe

    .line 8
    invoke-static/range {v19 .. v19}, Lmodule/sound/C8288;->D1(I)I

    move-result v20

    aput v20, v12, v3

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v20

    aput v20, v12, v2

    invoke-static/range {v19 .. v19}, Lmodule/sound/C8288;->D1(I)I

    move-result v19

    aput v19, v12, v7

    const/16 v19, 0xf

    invoke-static/range {v19 .. v19}, Lmodule/sound/C8288;->D1(I)I

    move-result v20

    aput v20, v12, v8

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v20

    aput v20, v12, v9

    invoke-static/range {v19 .. v19}, Lmodule/sound/C8288;->D1(I)I

    move-result v19

    aput v19, v12, v10

    const/16 v19, 0xd

    invoke-static/range {v19 .. v19}, Lmodule/sound/C8288;->D1(I)I

    move-result v19

    aput v19, v12, v11

    iput-object v12, v0, Lmodule/sound/C8288;->O0:[I

    new-array v14, v1, [I

    .line 9
    invoke-static {v13}, Lmodule/sound/C8288;->D1(I)I

    move-result v20

    aput v20, v14, v3

    const/16 v20, 0x11

    invoke-static/range {v20 .. v20}, Lmodule/sound/C8288;->D1(I)I

    move-result v21

    aput v21, v14, v2

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v21

    aput v21, v14, v7

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v21

    aput v21, v14, v8

    invoke-static/range {v20 .. v20}, Lmodule/sound/C8288;->D1(I)I

    move-result v20

    aput v20, v14, v9

    invoke-static {v13}, Lmodule/sound/C8288;->D1(I)I

    move-result v20

    aput v20, v14, v10

    const/16 v20, 0x13

    invoke-static/range {v20 .. v20}, Lmodule/sound/C8288;->D1(I)I

    move-result v21

    aput v21, v14, v11

    iput-object v14, v0, Lmodule/sound/C8288;->P0:[I

    new-array v11, v1, [I

    const/16 v22, 0x16

    .line 10
    invoke-static/range {v22 .. v22}, Lmodule/sound/C8288;->D1(I)I

    move-result v23

    aput v23, v11, v3

    invoke-static {v15}, Lmodule/sound/C8288;->D1(I)I

    move-result v23

    aput v23, v11, v2

    invoke-static {v13}, Lmodule/sound/C8288;->D1(I)I

    move-result v23

    aput v23, v11, v7

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v23

    aput v23, v11, v8

    invoke-static {v13}, Lmodule/sound/C8288;->D1(I)I

    move-result v13

    aput v13, v11, v9

    invoke-static {v15}, Lmodule/sound/C8288;->D1(I)I

    move-result v13

    aput v13, v11, v10

    invoke-static/range {v22 .. v22}, Lmodule/sound/C8288;->D1(I)I

    move-result v13

    const/4 v15, 0x6

    aput v13, v11, v15

    iput-object v11, v0, Lmodule/sound/C8288;->Q0:[I

    new-array v13, v1, [I

    .line 11
    invoke-static/range {v17 .. v17}, Lmodule/sound/C8288;->D1(I)I

    move-result v15

    aput v15, v13, v3

    const/16 v15, 0x19

    invoke-static {v15}, Lmodule/sound/C8288;->D1(I)I

    move-result v23

    aput v23, v13, v2

    invoke-static/range {v22 .. v22}, Lmodule/sound/C8288;->D1(I)I

    move-result v23

    aput v23, v13, v7

    invoke-static {v15}, Lmodule/sound/C8288;->D1(I)I

    move-result v23

    aput v23, v13, v8

    invoke-static/range {v22 .. v22}, Lmodule/sound/C8288;->D1(I)I

    move-result v23

    aput v23, v13, v9

    invoke-static/range {v20 .. v20}, Lmodule/sound/C8288;->D1(I)I

    move-result v23

    aput v23, v13, v10

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v23

    const/16 v21, 0x6

    aput v23, v13, v21

    iput-object v13, v0, Lmodule/sound/C8288;->R0:[I

    new-array v15, v1, [I

    .line 12
    invoke-static/range {v16 .. v16}, Lmodule/sound/C8288;->D1(I)I

    move-result v16

    aput v16, v15, v3

    invoke-static/range {v22 .. v22}, Lmodule/sound/C8288;->D1(I)I

    move-result v16

    aput v16, v15, v2

    invoke-static/range {v20 .. v20}, Lmodule/sound/C8288;->D1(I)I

    move-result v16

    aput v16, v15, v7

    const/16 v16, 0xc

    invoke-static/range {v16 .. v16}, Lmodule/sound/C8288;->D1(I)I

    move-result v19

    aput v19, v15, v8

    const/16 v18, 0x15

    invoke-static/range {v18 .. v18}, Lmodule/sound/C8288;->D1(I)I

    move-result v18

    aput v18, v15, v9

    invoke-static/range {v16 .. v16}, Lmodule/sound/C8288;->D1(I)I

    move-result v16

    aput v16, v15, v10

    invoke-static/range {v17 .. v17}, Lmodule/sound/C8288;->D1(I)I

    move-result v16

    const/16 v18, 0x6

    aput v16, v15, v18

    iput-object v15, v0, Lmodule/sound/C8288;->S0:[I

    new-array v10, v1, [I

    .line 13
    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v5

    aput v5, v10, v3

    invoke-static/range {v20 .. v20}, Lmodule/sound/C8288;->D1(I)I

    move-result v5

    aput v5, v10, v2

    invoke-static/range {v22 .. v22}, Lmodule/sound/C8288;->D1(I)I

    move-result v5

    aput v5, v10, v7

    const/16 v5, 0x19

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v18

    aput v18, v10, v8

    const/16 v18, 0x1c

    invoke-static/range {v18 .. v18}, Lmodule/sound/C8288;->D1(I)I

    move-result v18

    aput v18, v10, v9

    invoke-static {v5}, Lmodule/sound/C8288;->D1(I)I

    move-result v5

    const/16 v16, 0x5

    aput v5, v10, v16

    invoke-static/range {v17 .. v17}, Lmodule/sound/C8288;->D1(I)I

    move-result v5

    const/16 v17, 0x6

    aput v5, v10, v17

    iput-object v10, v0, Lmodule/sound/C8288;->T0:[I

    const/16 v5, 0x25

    new-array v5, v5, [I

    .line 14
    fill-array-data v5, :array_1

    iput-object v5, v0, Lmodule/sound/C8288;->U0:[I

    const/4 v5, 0x0

    .line 15
    iput-object v5, v0, Lmodule/sound/C8288;->W0:Landroid/media/AudioManager;

    .line 16
    iput-object v5, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    .line 17
    iput-object v5, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    .line 18
    iput-object v5, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    .line 19
    new-instance v5, Lmodule/sound/C8288$a;

    invoke-direct {v5, v0}, Lmodule/sound/C8288$a;-><init>(Lmodule/sound/C8288;)V

    iput-object v5, v0, Lmodule/sound/C8288;->a1:Ljava/lang/Runnable;

    .line 20
    iput v3, v0, Lmodule/sound/C8288;->b1:I

    .line 21
    new-instance v5, Lmodule/sound/C8288$b;

    invoke-direct {v5, v0}, Lmodule/sound/C8288$b;-><init>(Lmodule/sound/C8288;)V

    iput-object v5, v0, Lmodule/sound/C8288;->c1:Ljava/lang/Runnable;

    .line 22
    new-instance v5, Lmodule/sound/C8288$c;

    invoke-direct {v5, v0}, Lmodule/sound/C8288$c;-><init>(Lmodule/sound/C8288;)V

    iput-object v5, v0, Lmodule/sound/C8288;->d1:Ljava/lang/Runnable;

    .line 23
    new-instance v5, Lmodule/sound/C8288$d;

    invoke-direct {v5, v0}, Lmodule/sound/C8288$d;-><init>(Lmodule/sound/C8288;)V

    iput-object v5, v0, Lmodule/sound/C8288;->e1:Ljava/lang/Runnable;

    .line 24
    new-instance v5, Lmodule/sound/C8288$e;

    invoke-direct {v5, v0}, Lmodule/sound/C8288$e;-><init>(Lmodule/sound/C8288;)V

    iput-object v5, v0, Lmodule/sound/C8288;->f1:Ljava/lang/Runnable;

    .line 25
    iget-object v5, v0, Lmodule/sound/C8288;->L0:[I

    invoke-virtual {v0, v3, v5}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 26
    invoke-virtual {v0, v2, v4}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 27
    invoke-virtual {v0, v7, v6}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 28
    invoke-virtual {v0, v8, v12}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 29
    invoke-virtual {v0, v9, v14}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x5

    .line 30
    invoke-virtual {v0, v2, v11}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x6

    .line 31
    invoke-virtual {v0, v2, v13}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 32
    invoke-virtual {v0, v1, v15}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/16 v1, 0x8

    .line 33
    invoke-virtual {v0, v1, v10}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 34
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v1

    iput-object v1, v0, Lmodule/sound/C8288;->W0:Landroid/media/AudioManager;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/C8288;->G1()V

    move-object/from16 v1, p1

    .line 36
    iput-object v1, v0, Lmodule/sound/C8288;->V0:Lo1/e0;

    .line 37
    iget-object v1, v0, Lmodule/sound/C8288;->U0:[I

    invoke-virtual {v0, v1}, Lmodule/sound/C8288;->x([I)V

    return-void

    :array_0
    .array-data 4
        0x6
        0x6
        0x0
        0x0
        0x3
        0x5
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xf
        0x19
        0x37
        0x4b
        0x5a
        0x64
        0x6b
        0x72
        0x78
        0x7d
        0x82
        0x86
        0x87
        0x8b
        0x8f
        0x93
        0x97
        0x9b
        0xa0
        0xa5
        0xa9
        0xad
        0xb1
        0xb5
        0xb7
        0xb8
        0xb9
        0xba
        0xbb
        0xbc
        0xbd
        0xbe
        0xbf
        0xc0
        0xc1
        0xc2
    .end array-data
.end method

.method public static D1(I)I
    .locals 1

    .line 1
    sget v0, Ly0/f;->f0:I

    mul-int/2addr p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static J1(I)I
    .locals 1

    .line 1
    sget v0, Ly0/f;->f0:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr p0, v0

    .line 2
    sget v0, Ly0/f;->f0:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public A1(IZ)V
    .locals 1

    if-ltz p1, :cond_2

    .line 1
    sget-object p2, Lmodule/sound/AudioDevice;->G0:[I

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lmodule/sound/AudioDevice;->g:I

    :cond_1
    const/4 p2, 0x3

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput v0, p2, v0

    const/4 v0, 0x1

    aput v0, p2, v0

    const/4 v0, 0x2

    aput p1, p2, v0

    .line 3
    invoke-virtual {p0, p2}, Lmodule/sound/C8288;->L1([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public E1(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    if-gez v1, :cond_0

    .line 2
    sget-object v1, Lmodule/sound/C8288$STATE;->n:Lmodule/sound/C8288$STATE;

    iget v1, v1, Lmodule/sound/C8288$STATE;->a:I

    .line 3
    :cond_0
    sget v3, Lh0/c;->G:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0x10

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v3, :cond_1

    new-array v3, v8, [I

    aput v10, v3, v10

    aput v6, v3, v9

    const/16 v11, 0x1b

    aput v11, v3, v7

    .line 4
    sget-object v11, Lmodule/sound/C8288$CHANNLE;->k:Lmodule/sound/C8288$CHANNLE;

    iget v11, v11, Lmodule/sound/C8288$CHANNLE;->a:I

    aput v11, v3, v5

    sget-object v11, Lmodule/video/V8288$CHANNEL;->b:Lmodule/video/V8288$CHANNEL;

    iget v11, v11, Lmodule/video/V8288$CHANNEL;->a:I

    aput v11, v3, v4

    invoke-virtual {v0, v3}, Lmodule/sound/C8288;->L1([I)V

    .line 5
    :cond_1
    sget v3, Lu0/b;->o4:I

    const/4 v11, 0x6

    if-ne v3, v11, :cond_2

    move v2, v8

    .line 6
    :cond_2
    iget-object v3, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    sget-object v3, Lmodule/sound/C8288$STATE;->m:Lmodule/sound/C8288$STATE;

    iget v3, v3, Lmodule/sound/C8288$STATE;->a:I

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 7
    :goto_0
    iget-object v11, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_4

    sget-object v11, Lmodule/video/V8288$CHANNEL;->b:Lmodule/video/V8288$CHANNEL;

    iget v11, v11, Lmodule/video/V8288$CHANNEL;->a:I

    goto :goto_1

    :cond_4
    iget-object v11, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 8
    :goto_1
    sget-object v12, Lmodule/sound/C8288$CHANNLE;->i:Lmodule/sound/C8288$CHANNLE;

    iget v12, v12, Lmodule/sound/C8288$CHANNLE;->a:I

    if-ne v1, v12, :cond_5

    move v12, v9

    goto :goto_2

    :cond_5
    move v12, v10

    .line 9
    :goto_2
    sget-object v13, Ln0/j4;->d:Ln0/c4;

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ln0/c4;->l3()Z

    move-result v13

    if-eqz v13, :cond_6

    move v13, v9

    move v12, v10

    goto :goto_3

    :cond_6
    move v13, v10

    :goto_3
    if-nez v13, :cond_7

    if-ne v2, v9, :cond_7

    .line 10
    sget-object v14, Lg/e;->a:Lg/g;

    if-eqz v14, :cond_7

    check-cast v14, Lchip/Chip;

    .line 11
    invoke-virtual {v14}, Lchip/Chip;->M()Z

    move-result v14

    if-eqz v14, :cond_7

    move v13, v9

    move v12, v10

    .line 12
    :cond_7
    iget-boolean v14, v0, Lmodule/sound/AudioDevice;->w:Z

    if-eqz v14, :cond_a

    if-ne v2, v7, :cond_8

    move v12, v10

    goto :goto_4

    :cond_8
    if-nez v12, :cond_9

    xor-int/lit8 v12, v13, 0x1

    .line 13
    :cond_9
    :goto_4
    const-class v13, Landroid/media/AudioManager;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lmodule/sound/C8288;->W0:Landroid/media/AudioManager;

    new-array v15, v9, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v10

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v4, v10

    const-string v12, "setAudioSwitch2iis"

    invoke-static {v13, v14, v12, v15, v4}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    new-array v4, v8, [I

    aput v10, v4, v10

    aput v6, v4, v9

    aput v3, v4, v7

    aput v1, v4, v5

    const/4 v1, 0x4

    aput v11, v4, v1

    .line 14
    invoke-virtual {v0, v4}, Lmodule/sound/C8288;->L1([I)V

    .line 15
    sget-object v1, Ly0/f;->z0:[I

    aget v1, v1, v2

    if-ltz v1, :cond_b

    const/16 v2, 0x30

    if-ge v1, v2, :cond_b

    .line 16
    sget-object v2, Ly0/f;->w0:[I

    aget v2, v2, v1

    invoke-virtual {v0, v1, v2}, Lmodule/sound/C8288;->m(II)V

    :cond_b
    return-void
.end method

.method public F()V
    .locals 5

    .line 1
    sget-object v0, Lmodule/sound/C8288$CHANNLE;->f:Lmodule/sound/C8288$CHANNLE;

    iget v1, v0, Lmodule/sound/C8288$CHANNLE;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 2
    sget-object v1, Lmodule/sound/C8288$CHANNLE;->m:Lmodule/sound/C8288$CHANNLE;

    iget v1, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 3
    sget-object v1, Lmodule/sound/C8288$CHANNLE;->l:Lmodule/sound/C8288$CHANNLE;

    iget v1, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 4
    sget-object v1, Lmodule/sound/C8288$CHANNLE;->g:Lmodule/sound/C8288$CHANNLE;

    iget v1, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 5
    sget-object v1, Lmodule/sound/C8288$CHANNLE;->c:Lmodule/sound/C8288$CHANNLE;

    iget v2, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 6
    sget-object v2, Lmodule/sound/C8288$CHANNLE;->d:Lmodule/sound/C8288$CHANNLE;

    iget v2, v2, Lmodule/sound/C8288$CHANNLE;->a:I

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 7
    sget-object v2, Lmodule/sound/C8288$CHANNLE;->e:Lmodule/sound/C8288$CHANNLE;

    iget v2, v2, Lmodule/sound/C8288$CHANNLE;->a:I

    const/4 v3, 0x7

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 8
    sget-object v2, Lmodule/sound/C8288$CHANNLE;->i:Lmodule/sound/C8288$CHANNLE;

    iget v3, v2, Lmodule/sound/C8288$CHANNLE;->a:I

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 9
    iget v3, v2, Lmodule/sound/C8288$CHANNLE;->a:I

    const/16 v4, 0x9

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 10
    iget v3, v2, Lmodule/sound/C8288$CHANNLE;->a:I

    const/16 v4, 0xa

    invoke-virtual {p0, v4, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 11
    iget v0, v0, Lmodule/sound/C8288$CHANNLE;->a:I

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 12
    iget v0, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 13
    iget v0, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    const/16 v3, 0xd

    invoke-virtual {p0, v3, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 14
    iget v0, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 15
    iget v0, v2, Lmodule/sound/C8288$CHANNLE;->a:I

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 16
    iget v0, v2, Lmodule/sound/C8288$CHANNLE;->a:I

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    return-void
.end method

.method public F1([II)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lmodule/sound/C8288;->K1(I)[I

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G1()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    .line 3
    :cond_0
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    sget-object v2, Lmodule/sound/C8288$STATE;->c:Lmodule/sound/C8288$STATE;

    iget v3, v2, Lmodule/sound/C8288$STATE;->a:I

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/sound/C8288$STATE;->q:Lmodule/sound/C8288$STATE;

    iget v3, v3, Lmodule/sound/C8288$STATE;->a:I

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/sound/C8288$STATE;->k:Lmodule/sound/C8288$STATE;

    iget v3, v3, Lmodule/sound/C8288$STATE;->a:I

    const/4 v6, 0x3

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/sound/C8288$STATE;->b:Lmodule/sound/C8288$STATE;

    iget v3, v3, Lmodule/sound/C8288$STATE;->a:I

    const/4 v7, 0x4

    invoke-virtual {v1, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/sound/C8288$STATE;->a:I

    const/4 v8, 0x5

    invoke-virtual {v1, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/sound/C8288$STATE;->d:Lmodule/sound/C8288$STATE;

    iget v3, v3, Lmodule/sound/C8288$STATE;->a:I

    const/4 v9, 0x6

    invoke-virtual {v1, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/sound/C8288$STATE;->j:Lmodule/sound/C8288$STATE;

    iget v3, v3, Lmodule/sound/C8288$STATE;->a:I

    const/4 v10, 0x7

    invoke-virtual {v1, v10, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/sound/C8288$STATE;->n:Lmodule/sound/C8288$STATE;

    iget v11, v3, Lmodule/sound/C8288$STATE;->a:I

    const/16 v12, 0x8

    invoke-virtual {v1, v12, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    iget v11, v3, Lmodule/sound/C8288$STATE;->a:I

    const/16 v13, 0x9

    invoke-virtual {v1, v13, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    iget v11, v3, Lmodule/sound/C8288$STATE;->a:I

    const/16 v14, 0xa

    invoke-virtual {v1, v14, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    iget v11, v2, Lmodule/sound/C8288$STATE;->a:I

    const/16 v15, 0xb

    invoke-virtual {v1, v15, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    iget v11, v2, Lmodule/sound/C8288$STATE;->a:I

    const/16 v15, 0xc

    invoke-virtual {v1, v15, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    iget v2, v2, Lmodule/sound/C8288$STATE;->a:I

    const/16 v11, 0xe

    invoke-virtual {v1, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    iget v2, v3, Lmodule/sound/C8288$STATE;->a:I

    const/16 v11, 0xf

    invoke-virtual {v1, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    iget-object v1, v0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    iget v2, v3, Lmodule/sound/C8288$STATE;->a:I

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    if-nez v1, :cond_1

    .line 19
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    .line 20
    :cond_1
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    sget-object v2, Lmodule/video/V8288$CHANNEL;->b:Lmodule/video/V8288$CHANNEL;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/video/V8288$CHANNEL;->e:Lmodule/video/V8288$CHANNEL;

    iget v3, v3, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v10, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v12, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v13, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    const/16 v14, 0xb

    invoke-virtual {v1, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v15, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    const/16 v3, 0xd

    iget v14, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/video/V8288$CHANNEL;->d:Lmodule/video/V8288$CHANNEL;

    iget v3, v3, Lmodule/video/V8288$CHANNEL;->a:I

    const/16 v14, 0xe

    invoke-virtual {v1, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v3, v2, Lmodule/video/V8288$CHANNEL;->a:I

    invoke-virtual {v1, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    iget-object v1, v0, Lmodule/sound/C8288;->Z0:Landroid/util/SparseIntArray;

    iget v2, v2, Lmodule/video/V8288$CHANNEL;->a:I

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    if-nez v1, :cond_2

    .line 37
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    .line 38
    :cond_2
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    sget-object v3, Lmodule/sound/C8288$SBID;->f:Lmodule/sound/C8288$SBID;

    iget v3, v3, Lmodule/sound/C8288$SBID;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    sget-object v2, Lmodule/sound/C8288$SBID;->h:Lmodule/sound/C8288$SBID;

    iget v3, v2, Lmodule/sound/C8288$SBID;->a:I

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/sound/C8288$SBID;->b:Lmodule/sound/C8288$SBID;

    iget v3, v3, Lmodule/sound/C8288$SBID;->a:I

    invoke-virtual {v1, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/sound/C8288$SBID;->g:Lmodule/sound/C8288$SBID;

    iget v3, v3, Lmodule/sound/C8288$SBID;->a:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    sget-object v3, Lmodule/sound/C8288$SBID;->c:Lmodule/sound/C8288$SBID;

    iget v4, v3, Lmodule/sound/C8288$SBID;->a:I

    invoke-virtual {v1, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    sget-object v4, Lmodule/sound/C8288$SBID;->d:Lmodule/sound/C8288$SBID;

    iget v4, v4, Lmodule/sound/C8288$SBID;->a:I

    invoke-virtual {v1, v12, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    sget-object v4, Lmodule/sound/C8288$SBID;->e:Lmodule/sound/C8288$SBID;

    iget v4, v4, Lmodule/sound/C8288$SBID;->a:I

    invoke-virtual {v1, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    sget-object v4, Lmodule/sound/C8288$SBID;->i:Lmodule/sound/C8288$SBID;

    iget v4, v4, Lmodule/sound/C8288$SBID;->a:I

    invoke-virtual {v1, v9, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    iget v2, v2, Lmodule/sound/C8288$SBID;->a:I

    invoke-virtual {v1, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    iget v2, v3, Lmodule/sound/C8288$SBID;->a:I

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    iget v2, v3, Lmodule/sound/C8288$SBID;->a:I

    invoke-virtual {v1, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    iget-object v1, v0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    iget v2, v3, Lmodule/sound/C8288$SBID;->a:I

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public H1([I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmodule/sound/C8288;->K0:[I

    array-length v0, v0

    if-eqz p1, :cond_3

    .line 2
    array-length v1, p1

    if-eq v1, v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4
    aget v4, p1, v3

    iget-boolean v5, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lmodule/sound/C8288;->K0:[I

    aget v5, v5, v3

    :goto_1
    invoke-virtual {p0, v4, v5}, Lmodule/sound/C8288;->I1(II)I

    move-result v4

    invoke-static {v4}, Lmodule/sound/C8288;->J1(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    new-array p1, p1, [I

    aput v2, p1, v2

    const/16 v0, 0xa2

    const/4 v3, 0x1

    aput v0, p1, v3

    const/4 v0, 0x2

    aput v2, p1, v0

    .line 5
    aget v2, v1, v2

    const/4 v4, 0x3

    aput v2, p1, v4

    aget v2, v1, v3

    const/4 v3, 0x4

    aput v2, p1, v3

    aget v0, v1, v0

    const/4 v2, 0x5

    aput v0, p1, v2

    aget v0, v1, v4

    const/4 v4, 0x6

    aput v0, p1, v4

    const/4 v0, 0x7

    aget v3, v1, v3

    aput v3, p1, v0

    const/16 v0, 0x8

    aget v2, v1, v2

    aput v2, p1, v0

    const/16 v0, 0x9

    aget v1, v1, v4

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lmodule/sound/C8288;->L1([I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final I1(II)I
    .locals 0

    add-int/2addr p1, p2

    const/16 p2, 0x14

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    move p1, p2

    :cond_1
    :goto_0
    return p1
.end method

.method public K1(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/sound/C8288;->M0:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->X(I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public varargs L1([I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p1

    add-int/lit8 v1, v0, 0x5

    .line 2
    new-array v1, v1, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 3
    aput-byte v2, v1, v3

    const/16 v2, 0x55

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v1, v2

    const/4 v2, 0x3

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    move v2, v3

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x4

    .line 5
    aget v5, p1, v3

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 6
    aget v4, p1, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x4

    not-int p1, v2

    int-to-byte p1, p1

    .line 7
    aput-byte p1, v1, v0

    .line 8
    iget-object p1, p0, Lmodule/sound/C8288;->V0:Lo1/e0;

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    return-void
.end method

.method public M(II)V
    .locals 3

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, p1

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    .line 3
    :cond_0
    aput p2, v1, v0

    .line 4
    invoke-virtual {p0, v1}, Lmodule/sound/C8288;->H1([I)V

    .line 5
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->M(II)V

    return-void
.end method

.method public U(ILy/b;)Z
    .locals 7

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    new-array v0, v2, [I

    .line 1
    iget v3, p0, Lmodule/sound/AudioDevice;->k:I

    aput v3, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v3, v1

    .line 3
    :goto_0
    iget v4, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v1

    .line 4
    aget v5, v0, v3

    invoke-virtual {p0, v3}, Lmodule/sound/AudioDevice;->x0(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v2

    invoke-virtual {p0, p2, p1, v4}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->U(ILy/b;)Z

    move-result v1

    :goto_3
    return v1
.end method

.method public W0()V
    .locals 3

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->W0()V

    .line 2
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/C8288;->w0(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lmodule/sound/C8288;->j([I)V

    .line 4
    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/C8288;->a(I)V

    .line 5
    sget v0, Ly0/f;->C0:I

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->y1(I)V

    .line 6
    sget-object v0, Ly0/g;->b:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->a1:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Ly0/g;->f:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->f1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Ly0/g;->h:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->f1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Ly0/g;->g:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->e1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->d1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->d1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->k:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->d1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->y:Z

    .line 2
    sget v1, Lh0/c;->G:I

    if-ne v1, v0, :cond_0

    const/4 p1, 0x2

    .line 3
    :cond_0
    sget v1, Lu0/b;->E:I

    if-ltz v1, :cond_1

    move p1, v1

    .line 4
    :cond_1
    iget v1, p0, Lmodule/sound/AudioDevice;->l:I

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 5
    :goto_0
    iput p1, p0, Lmodule/sound/AudioDevice;->l:I

    .line 6
    invoke-virtual {p0, p1}, Lmodule/sound/C8288;->E1(I)V

    .line 7
    iget-object v3, p0, Lmodule/sound/C8288;->X0:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sget-object v4, Lmodule/sound/C8288$STATE;->b:Lmodule/sound/C8288$STATE;

    iget v4, v4, Lmodule/sound/C8288$STATE;->a:I

    if-eq v3, v4, :cond_3

    .line 8
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v3

    new-instance v4, Lmodule/sound/C8288$f;

    invoke-direct {v4, p0, p1}, Lmodule/sound/C8288$f;-><init>(Lmodule/sound/C8288;I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    if-eqz v1, :cond_6

    .line 9
    sget v1, Lu0/b;->D:I

    .line 10
    iget-object v3, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    and-int/lit8 p1, p1, 0xf

    if-ltz v1, :cond_4

    const/16 v3, 0x14

    if-ge v1, v3, :cond_4

    .line 11
    sget-object v1, Lmodule/sound/C8288$CHANNLE;->l:Lmodule/sound/C8288$CHANNLE;

    iget v1, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    if-eq p1, v1, :cond_5

    sget-object v1, Lmodule/sound/C8288$CHANNLE;->m:Lmodule/sound/C8288$CHANNLE;

    iget v1, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    if-eq p1, v1, :cond_5

    sget-object v1, Lmodule/sound/C8288$CHANNLE;->j:Lmodule/sound/C8288$CHANNLE;

    iget v1, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    if-eq p1, v1, :cond_5

    sget-object v1, Lmodule/sound/C8288$CHANNLE;->b:Lmodule/sound/C8288$CHANNLE;

    iget v1, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    if-eq p1, v1, :cond_5

    sget-object v1, Lmodule/sound/C8288$CHANNLE;->i:Lmodule/sound/C8288$CHANNLE;

    iget v1, v1, Lmodule/sound/C8288$CHANNLE;->a:I

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    :goto_1
    const-wide/16 v3, 0xc8

    .line 12
    invoke-static {v3, v4}, La/i;->a0(J)V

    .line 13
    invoke-static {v0}, Lo1/q0;->i(I)V

    .line 14
    :cond_6
    iput-boolean v2, p0, Lmodule/sound/AudioDevice;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c1()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->f()V

    .line 2
    sget-object v0, Ly0/g;->b:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->a1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->f:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->f1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->h:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->f1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->g:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->e1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->d1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->d1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->k:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C8288;->d1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j([I)V
    .locals 9

    .line 1
    sget v0, Ly0/f;->L0:I

    const/16 v1, 0x10

    rsub-int/lit8 v0, v0, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lo1/o0;->a(III)I

    move-result v0

    .line 2
    sget v3, Ly0/f;->M0:I

    rsub-int/lit8 v3, v3, 0x10

    invoke-static {v3, v2, v1}, Lo1/o0;->a(III)I

    move-result v3

    .line 3
    sget v4, Lh0/c;->G:I

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    sget-boolean v4, Lu0/b;->j2:Z

    if-eqz v4, :cond_0

    .line 4
    sget-object v0, Ln0/j4;->d:Ln0/c4;

    invoke-virtual {v0}, Ln0/c4;->L2()[I

    move-result-object v0

    .line 5
    aget v3, v0, v2

    rsub-int/lit8 v3, v3, 0x10

    .line 6
    aget v0, v0, v5

    rsub-int/lit8 v0, v0, 0x10

    move v8, v3

    move v3, v0

    move v0, v8

    .line 7
    :cond_0
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    rsub-int/lit8 v6, v0, 0x10

    .line 8
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v1, v3

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 10
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x6

    new-array v3, v3, [I

    aput v2, v3, v2

    const/16 v2, 0xa1

    aput v2, v3, v5

    const/4 v2, 0x2

    aput v4, v3, v2

    const/4 v2, 0x3

    aput v7, v3, v2

    const/4 v2, 0x4

    aput v0, v3, v2

    const/4 v0, 0x5

    aput v1, v3, v0

    .line 11
    invoke-virtual {p0, v3}, Lmodule/sound/C8288;->L1([I)V

    .line 12
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->j([I)V

    return-void
.end method

.method public j0(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(II)V
    .locals 5

    if-ltz p1, :cond_0

    const/16 v0, 0x30

    if-ge p1, v0, :cond_0

    .line 1
    sget v0, Lu0/b;->D:I

    .line 2
    sget-object v1, Ly0/f;->y0:[I

    aget v1, v1, p1

    if-ltz v0, :cond_0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 3
    sget-object v2, Ly0/f;->z0:[I

    aget v0, v2, v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0xa

    .line 4
    invoke-static {p2, v0, v2}, Lo1/o0;->a(III)I

    move-result p2

    .line 5
    iget-object v3, p0, Lmodule/sound/C8288;->Y0:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    mul-int/2addr p2, v2

    .line 6
    div-int/2addr p2, v1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "reg : %2X, param: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "C8288"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    new-array v2, v2, [I

    aput v0, v2, v0

    const/16 v0, 0xa5

    aput v0, v2, v4

    aput p1, v2, v1

    const/4 p1, 0x3

    aput p2, v2, p1

    .line 8
    invoke-virtual {p0, v2}, Lmodule/sound/C8288;->L1([I)V

    :cond_0
    return-void
.end method

.method public m0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->m0()V

    return-void
.end method

.method public p0()I
    .locals 1

    const/16 v0, 0xd2

    return v0
.end method

.method public q0()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public r0(I)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Lcom/syu/jni/ToolsJni;->cmd_2_soundMix(I)I

    return-void
.end method

.method public w0(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/C8288;->K1(I)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {p0, v1, p1}, Lmodule/sound/C8288;->F1([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lmodule/sound/AudioDevice;->j:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p1, p0}, Ly0/h;->H([I[I[IILmodule/sound/AudioDevice;)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lmodule/sound/C8288;->H1([I)V

    return-void
.end method

.method public x([I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->x([I)V

    const/16 p1, 0x27

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput v0, p1, v0

    const/4 v1, 0x1

    const/16 v2, 0xaa

    aput v2, p1, v1

    .line 2
    sget-object v1, Lmodule/sound/AudioDevice;->G0:[I

    const/4 v2, 0x2

    const/16 v3, 0x25

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DVD"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, p1}, Lmodule/sound/C8288;->L1([I)V

    return-void
.end method
