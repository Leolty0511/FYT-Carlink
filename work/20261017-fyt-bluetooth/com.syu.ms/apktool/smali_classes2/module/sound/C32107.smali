.class public Lmodule/sound/C32107;
.super Lmodule/sound/AudioDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/sound/C32107$EQType;,
        Lmodule/sound/C32107$REG;,
        Lmodule/sound/C32107$HPF;,
        Lmodule/sound/C32107$IIR;,
        Lmodule/sound/C32107$CHANNEL;,
        Lmodule/sound/C32107$P2BFreq;,
        Lmodule/sound/C32107$P2BGain;
    }
.end annotation


# static fields
.field public static A1:I = 0xb

.field public static B1:I = 0x40

.field public static C1:I = 0x14

.field public static D1:I = 0xb

.field public static E1:I = 0x2

.field public static F1:[I = null

.field public static z1:I = 0x1d


# instance fields
.field public final I0:Ljava/lang/String;

.field public J0:I

.field public final K0:I

.field public L0:[I

.field public M0:[I

.field public final N0:[I

.field public O0:[I

.field public P0:[I

.field public Q0:[I

.field public R0:[I

.field public S0:[I

.field public final T0:[I

.field public final U0:[I

.field public final V0:[I

.field public final W0:[I

.field public final X0:[I

.field public final Y0:[I

.field public final Z0:[I

.field public final a1:[I

.field public b1:Lmodule/sound/C32107$EQType;

.field public c1:I

.field public d1:Lo1/n;

.field public e1:Z

.field public f1:Z

.field public g1:Z

.field public h1:[I

.field public i1:[I

.field public j1:[I

.field public k1:I

.field public l1:I

.field public m1:[I

.field public n1:I

.field public o1:I

.field public p1:Landroid/media/AudioManager;

.field public q1:I

.field public r1:Z

.field public s1:Ljava/lang/Boolean;

.field public t1:Ljava/lang/Integer;

.field public u1:Z

.field public v1:Z

.field public w1:Z

.field public final x1:Ljava/lang/Runnable;

.field public final y1:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/sound/C32107;->F1:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1a
        0x19
        0x18
        0x17
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
        0xf
        0xe
        0xc
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(IILo1/n;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct/range {p0 .. p2}, Lmodule/sound/AudioDevice;-><init>(II)V

    const-string v2, "c32107"

    .line 2
    iput-object v2, v0, Lmodule/sound/C32107;->I0:Ljava/lang/String;

    const/4 v2, -0x1

    .line 3
    iput v2, v0, Lmodule/sound/C32107;->J0:I

    const/16 v2, 0x1c

    .line 4
    iput v2, v0, Lmodule/sound/C32107;->K0:I

    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Lmodule/sound/C32107;->L0:[I

    const/16 v3, 0x25

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_0

    iput-object v4, v0, Lmodule/sound/C32107;->M0:[I

    new-array v3, v3, [I

    .line 7
    fill-array-data v3, :array_1

    iput-object v3, v0, Lmodule/sound/C32107;->N0:[I

    const/16 v3, 0xb

    new-array v3, v3, [I

    .line 8
    fill-array-data v3, :array_2

    iput-object v3, v0, Lmodule/sound/C32107;->O0:[I

    const/16 v3, 0x11

    new-array v3, v3, [I

    .line 9
    fill-array-data v3, :array_3

    iput-object v3, v0, Lmodule/sound/C32107;->P0:[I

    const/16 v3, 0x20

    new-array v3, v3, [I

    .line 10
    fill-array-data v3, :array_4

    iput-object v3, v0, Lmodule/sound/C32107;->Q0:[I

    const/16 v3, 0x19

    new-array v3, v3, [I

    .line 11
    fill-array-data v3, :array_5

    iput-object v3, v0, Lmodule/sound/C32107;->R0:[I

    const/16 v3, 0x30

    new-array v4, v3, [I

    .line 12
    fill-array-data v4, :array_6

    iput-object v4, v0, Lmodule/sound/C32107;->S0:[I

    new-array v4, v3, [I

    .line 13
    fill-array-data v4, :array_7

    iput-object v4, v0, Lmodule/sound/C32107;->T0:[I

    new-array v5, v3, [I

    .line 14
    fill-array-data v5, :array_8

    iput-object v5, v0, Lmodule/sound/C32107;->U0:[I

    new-array v6, v3, [I

    .line 15
    fill-array-data v6, :array_9

    iput-object v6, v0, Lmodule/sound/C32107;->V0:[I

    new-array v7, v3, [I

    .line 16
    fill-array-data v7, :array_a

    iput-object v7, v0, Lmodule/sound/C32107;->W0:[I

    new-array v8, v3, [I

    .line 17
    fill-array-data v8, :array_b

    iput-object v8, v0, Lmodule/sound/C32107;->X0:[I

    new-array v9, v3, [I

    .line 18
    fill-array-data v9, :array_c

    iput-object v9, v0, Lmodule/sound/C32107;->Y0:[I

    new-array v10, v3, [I

    .line 19
    fill-array-data v10, :array_d

    iput-object v10, v0, Lmodule/sound/C32107;->Z0:[I

    new-array v3, v3, [I

    .line 20
    fill-array-data v3, :array_e

    iput-object v3, v0, Lmodule/sound/C32107;->a1:[I

    .line 21
    sget-object v11, Lmodule/sound/C32107$EQType;->b:Lmodule/sound/C32107$EQType;

    iput-object v11, v0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    const/4 v12, 0x0

    .line 22
    iput v12, v0, Lmodule/sound/C32107;->c1:I

    .line 23
    iput-object v2, v0, Lmodule/sound/C32107;->d1:Lo1/n;

    .line 24
    iput-boolean v12, v0, Lmodule/sound/C32107;->e1:Z

    const/4 v13, 0x1

    .line 25
    iput-boolean v13, v0, Lmodule/sound/C32107;->f1:Z

    .line 26
    iput-boolean v13, v0, Lmodule/sound/C32107;->g1:Z

    const/4 v14, 0x2

    new-array v15, v14, [I

    .line 27
    fill-array-data v15, :array_f

    iput-object v15, v0, Lmodule/sound/C32107;->h1:[I

    new-array v15, v14, [I

    .line 28
    fill-array-data v15, :array_10

    iput-object v15, v0, Lmodule/sound/C32107;->i1:[I

    const/4 v15, 0x4

    new-array v14, v15, [I

    .line 29
    iput-object v14, v0, Lmodule/sound/C32107;->j1:[I

    const/16 v14, 0x8

    .line 30
    iput v14, v0, Lmodule/sound/C32107;->k1:I

    .line 31
    iput v14, v0, Lmodule/sound/C32107;->l1:I

    new-array v14, v15, [I

    .line 32
    fill-array-data v14, :array_11

    iput-object v14, v0, Lmodule/sound/C32107;->m1:[I

    .line 33
    sget v14, Lmodule/sound/C32107;->D1:I

    iput v14, v0, Lmodule/sound/C32107;->n1:I

    .line 34
    sget v14, Lmodule/sound/C32107;->E1:I

    iput v14, v0, Lmodule/sound/C32107;->o1:I

    .line 35
    iput-object v2, v0, Lmodule/sound/C32107;->p1:Landroid/media/AudioManager;

    const/4 v14, 0x6

    .line 36
    iput v14, v0, Lmodule/sound/C32107;->q1:I

    .line 37
    iput-boolean v12, v0, Lmodule/sound/C32107;->r1:Z

    .line 38
    iput-object v2, v0, Lmodule/sound/C32107;->s1:Ljava/lang/Boolean;

    .line 39
    iput-object v2, v0, Lmodule/sound/C32107;->t1:Ljava/lang/Integer;

    .line 40
    iput-boolean v13, v0, Lmodule/sound/C32107;->u1:Z

    .line 41
    iput-boolean v12, v0, Lmodule/sound/C32107;->v1:Z

    .line 42
    iput-boolean v12, v0, Lmodule/sound/C32107;->w1:Z

    .line 43
    new-instance v2, Lmodule/sound/C32107$a;

    invoke-direct {v2, v0}, Lmodule/sound/C32107$a;-><init>(Lmodule/sound/C32107;)V

    iput-object v2, v0, Lmodule/sound/C32107;->x1:Ljava/lang/Runnable;

    .line 44
    new-instance v2, Lmodule/sound/C32107$b;

    invoke-direct {v2, v0}, Lmodule/sound/C32107$b;-><init>(Lmodule/sound/C32107;)V

    iput-object v2, v0, Lmodule/sound/C32107;->y1:Ljava/lang/Runnable;

    const-string v2, "ro.syu.naviMix"

    .line 45
    invoke-static {v2, v13}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lmodule/sound/C32107;->u1:Z

    .line 46
    iget-object v2, v0, Lmodule/sound/C32107;->S0:[I

    invoke-virtual {v0, v12, v2}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 47
    invoke-virtual {v0, v13, v4}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x2

    .line 48
    invoke-virtual {v0, v2, v5}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x3

    .line 49
    invoke-virtual {v0, v2, v6}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 50
    invoke-virtual {v0, v15, v7}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x5

    .line 51
    invoke-virtual {v0, v2, v8}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 52
    invoke-virtual {v0, v14, v9}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x7

    .line 53
    invoke-virtual {v0, v2, v10}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/16 v2, 0x8

    .line 54
    invoke-virtual {v0, v2, v3}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 55
    iget-object v2, v0, Lmodule/sound/C32107;->M0:[I

    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->x([I)V

    const/16 v2, 0x18

    .line 56
    sput v2, Ly0/f;->f0:I

    .line 57
    sput v13, Ly0/f;->t:I

    .line 58
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, v0, Lmodule/sound/C32107;->p1:Landroid/media/AudioManager;

    const/16 v2, 0x10

    move/from16 v3, p1

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    sget-object v11, Lmodule/sound/C32107$EQType;->c:Lmodule/sound/C32107$EQType;

    :goto_0
    iput-object v11, v0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    if-eqz v1, :cond_1

    .line 60
    iput-object v1, v0, Lmodule/sound/C32107;->d1:Lo1/n;

    return-void

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "C32107 i2c  Device Can\'t be NULL"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x0
        0xb4
        0xa8
        0x9e
        0x96
        0x8f
        0x89
        0x83
        0x7e
        0x7a
        0x76
        0x72
        0x70
        0x6e
        0x6c
        0x6a
        0x68
        0x66
        0x64
        0x62
        0x60
        0x5e
        0x5c
        0x5a
        0x58
        0x56
        0x54
        0x52
        0x50
        0x4e
        0x4c
        0x4a
        0x48
        0x46
        0x44
        0x42
        0x40
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x9f
        0x98
        0x92
        0x8d
        0x88
        0x84
        0x80
        0x7d
        0x7a
        0x77
        0x74
        0x72
        0x70
        0x6e
        0x6c
        0x6a
        0x68
        0x66
        0x64
        0x62
        0x60
        0x5e
        0x5c
        0x5a
        0x58
        0x56
        0x54
        0x52
        0x50
        0x4e
        0x4c
        0x4a
        0x48
        0x46
        0x44
        0x42
    .end array-data

    :array_2
    .array-data 4
        0x80
        0xb5
        0xb2
        0xaf
        0xac
        0xaa
        0xa8
        0xa6
        0xa4
        0xa2
        0xa0
    .end array-data

    :array_3
    .array-data 4
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa2
        0xa4
        0xa6
        0xa8
        0xaa
        0xaf
        0xb5
        0x80
    .end array-data

    :array_4
    .array-data 4
        0xd
        0xe
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xf
        0x1d
        0x1e
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1f
    .end array-data

    :array_5
    .array-data 4
        -0xc
        -0xb
        -0xa
        -0x9
        -0x8
        -0x7
        -0x6
        -0x5
        -0x4
        -0x3
        -0x2
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x1e
        0xc
        0xe
        0x32
        0xc
        0xe
        0x50
        0xc
        0xe
        0x7d
        0xc
        0xe
        0xc8
        0xc
        0xe
        0x140
        0xc
        0xe
        0x1f4
        0xc
        0xe
        0x320
        0xc
        0xe
        0x3e8
        0xc
        0xe
        0x4e2
        0xc
        0xe
        0x7d0
        0xc
        0xe
        0xbb8
        0xc
        0xe
        0x1388
        0xc
        0xe
        0x1f40
        0xc
        0xe
        0x2ee0
        0xc
        0xe
        0x3e80
        0xc
        0xe
    .end array-data

    :array_7
    .array-data 4
        0x1e
        0xc
        0xe
        0x32
        0xc
        0xe
        0x50
        0xc
        0xe
        0x7d
        0xc
        0xe
        0xc8
        0xc
        0xe
        0x140
        0xc
        0xe
        0x1f4
        0xc
        0xe
        0x320
        0xc
        0xe
        0x3e8
        0xc
        0xe
        0x4e2
        0xc
        0xe
        0x7d0
        0xc
        0xe
        0xbb8
        0xc
        0xe
        0x1388
        0xc
        0xe
        0x1f40
        0xc
        0xe
        0x2ee0
        0xc
        0xe
        0x3e80
        0xc
        0xe
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0xf
        0xe
        0x32
        0x10
        0xe
        0x50
        0x11
        0xe
        0x7d
        0x11
        0xe
        0xc8
        0xe
        0xe
        0x140
        0xb
        0xe
        0x1f4
        0x9
        0xe
        0x320
        0x9
        0xe
        0x3e8
        0xa
        0xe
        0x4e2
        0xd
        0xe
        0x7d0
        0xf
        0xe
        0xbb8
        0x10
        0xe
        0x1388
        0x11
        0xe
        0x1f40
        0x11
        0xe
        0x2ee0
        0x10
        0xe
        0x3e80
        0xf
        0xe
    .end array-data

    :array_9
    .array-data 4
        0x1e
        0xd
        0xe
        0x32
        0xc
        0xe
        0x50
        0xb
        0xe
        0x7d
        0xb
        0xe
        0xc8
        0xa
        0xe
        0x140
        0x9
        0xe
        0x1f4
        0x8
        0xe
        0x320
        0x9
        0xe
        0x3e8
        0xa
        0xe
        0x4e2
        0xa
        0xe
        0x7d0
        0xc
        0xe
        0xbb8
        0xc
        0xe
        0x1388
        0xe
        0xe
        0x1f40
        0xf
        0xe
        0x2ee0
        0x10
        0xe
        0x3e80
        0xe
        0xe
    .end array-data

    :array_a
    .array-data 4
        0x1e
        0xc
        0xe
        0x32
        0xe
        0xe
        0x50
        0xd
        0xe
        0x7d
        0xe
        0xe
        0xc8
        0xd
        0xe
        0x140
        0xc
        0xe
        0x1f4
        0xc
        0xe
        0x320
        0xc
        0xe
        0x3e8
        0xc
        0xe
        0x4e2
        0xc
        0xe
        0x7d0
        0xc
        0xe
        0xbb8
        0xc
        0xe
        0x1388
        0xd
        0xe
        0x1f40
        0xf
        0xe
        0x2ee0
        0x10
        0xe
        0x3e80
        0xe
        0xe
    .end array-data

    :array_b
    .array-data 4
        0x1e
        0xc
        0xe
        0x32
        0xe
        0xe
        0x50
        0xf
        0xe
        0x7d
        0x10
        0xe
        0xc8
        0x11
        0xe
        0x140
        0xf
        0xe
        0x1f4
        0xd
        0xe
        0x320
        0xc
        0xe
        0x3e8
        0xb
        0xe
        0x4e2
        0xa
        0xe
        0x7d0
        0xa
        0xe
        0xbb8
        0xc
        0xe
        0x1388
        0xe
        0xe
        0x1f40
        0xf
        0xe
        0x2ee0
        0x10
        0xe
        0x3e80
        0xe
        0xe
    .end array-data

    :array_c
    .array-data 4
        0x1e
        0x8
        0xe
        0x32
        0x8
        0xe
        0x50
        0x9
        0xe
        0x7d
        0xb
        0xe
        0xc8
        0xc
        0xe
        0x140
        0xd
        0xe
        0x1f4
        0xe
        0xe
        0x320
        0xf
        0xe
        0x3e8
        0x10
        0xe
        0x4e2
        0x10
        0xe
        0x7d0
        0x10
        0xe
        0xbb8
        0x10
        0xe
        0x1388
        0x10
        0xe
        0x1f40
        0x10
        0xe
        0x2ee0
        0x10
        0xe
        0x3e80
        0x10
        0xe
    .end array-data

    :array_d
    .array-data 4
        0x1e
        0xd
        0xe
        0x32
        0x11
        0xe
        0x50
        0x10
        0xe
        0x7d
        0x11
        0xe
        0xc8
        0xd
        0xe
        0x140
        0xc
        0xe
        0x1f4
        0xa
        0xe
        0x320
        0xc
        0xe
        0x3e8
        0xc
        0xe
        0x4e2
        0xc
        0xe
        0x7d0
        0xd
        0xe
        0xbb8
        0xe
        0xe
        0x1388
        0xd
        0xe
        0x1f40
        0xf
        0xe
        0x2ee0
        0x10
        0xe
        0x3e80
        0xe
        0xe
    .end array-data

    :array_e
    .array-data 4
        0x1e
        0x9
        0xe
        0x32
        0xb
        0xe
        0x50
        0xd
        0xe
        0x7d
        0x10
        0xe
        0xc8
        0x11
        0xe
        0x140
        0x11
        0xe
        0x1f4
        0x11
        0xe
        0x320
        0x11
        0xe
        0x3e8
        0x10
        0xe
        0x4e2
        0x10
        0xe
        0x7d0
        0xe
        0xe
        0xbb8
        0xe
        0xe
        0x1388
        0xd
        0xe
        0x1f40
        0xd
        0xe
        0x2ee0
        0xc
        0xe
        0x3e80
        0xc
        0xe
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x19
        0xc
        0xc
        0x0
    .end array-data
.end method


# virtual methods
.method public A0()V
    .locals 2

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lmodule/sound/C32107;->J1()V

    :cond_0
    return-void
.end method

.method public A1(IZ)V
    .locals 2

    if-ltz p1, :cond_3

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====>>>volume vol : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " force: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sound"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1, p2}, Lmodule/sound/C32107;->B1(IZ)V

    if-nez p2, :cond_1

    .line 4
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-eq p1, p2, :cond_2

    :cond_1
    iput p1, p0, Lmodule/sound/AudioDevice;->g:I

    .line 5
    :cond_2
    invoke-virtual {p0}, Lmodule/sound/C32107;->L1()V

    .line 6
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->l(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public B()Z
    .locals 4

    .line 1
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_1

    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lmodule/sound/C32107$REG;->e:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->W1(I)I

    move-result v0

    .line 3
    sget-object v2, Lmodule/sound/C32107$REG;->H:Lmodule/sound/C32107$REG;

    iget v2, v2, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v2}, Lmodule/sound/C32107;->W1(I)I

    move-result v2

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public B0(III)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107;->g1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-ne p1, v1, :cond_1

    .line 2
    sget-object v0, Lmodule/sound/C32107$REG;->A:Lmodule/sound/C32107$REG;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_2

    .line 3
    sget-object v0, Lmodule/sound/C32107$REG;->B:Lmodule/sound/C32107$REG;

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0, v0, p2, p3}, Lmodule/sound/C32107;->T1(Lmodule/sound/C32107$REG;II)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Lmodule/sound/AudioDevice;->B0(III)V

    :cond_3
    return-void
.end method

.method public B1(IZ)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====>>>volumeAnimatorExec vol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " this.vol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tempVol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmodule/sound/AudioDevice;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetVol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmodule/sound/AudioDevice;->U:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmodule/sound/C32107;->J0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " needInited:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmodule/sound/AudioDevice;->R:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sound"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "=====>>>volumeAnimatorExec -1"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v1, p0, Lmodule/sound/AudioDevice;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_0

    iget v1, p0, Lmodule/sound/AudioDevice;->U:I

    if-ne v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lmodule/sound/AudioDevice;->T:I

    .line 10
    iget v1, p0, Lmodule/sound/C32107;->J0:I

    if-ne v1, v0, :cond_3

    iget v4, p0, Lmodule/sound/AudioDevice;->Q:I

    if-ne v4, p1, :cond_3

    iget-boolean v4, p0, Lmodule/sound/AudioDevice;->R:Z

    if-nez v4, :cond_3

    if-nez p2, :cond_3

    return-void

    .line 11
    :cond_3
    iget v4, p0, Lmodule/sound/AudioDevice;->Q:I

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    .line 12
    iput v3, p0, Lmodule/sound/AudioDevice;->Q:I

    :cond_4
    if-eqz p2, :cond_7

    .line 13
    iget p2, p0, Lmodule/sound/AudioDevice;->Q:I

    if-ne p2, p1, :cond_5

    .line 14
    iput v5, p0, Lmodule/sound/AudioDevice;->Q:I

    :cond_5
    if-ne v1, v0, :cond_6

    .line 15
    iput v5, p0, Lmodule/sound/AudioDevice;->Q:I

    .line 16
    :cond_6
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->C1(I)V

    .line 17
    iput v5, p0, Lmodule/sound/AudioDevice;->U:I

    return-void

    .line 18
    :cond_7
    iget p2, p0, Lmodule/sound/AudioDevice;->U:I

    if-eq p2, v5, :cond_8

    iget v0, p0, Lmodule/sound/AudioDevice;->Q:I

    if-eq v0, p2, :cond_8

    .line 19
    invoke-virtual {p0, p2}, Lmodule/sound/C32107;->C1(I)V

    .line 20
    iput v5, p0, Lmodule/sound/AudioDevice;->U:I

    .line 21
    :cond_8
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p2, v0

    const-wide/16 v0, 0x4b0

    float-to-double v4, p2

    const-wide v6, 0x3fd999999999999aL    # 0.4

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    .line 22
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->C1(I)V

    return-void

    :cond_9
    const v4, 0x3f19999a    # 0.6f

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_a

    const-wide/16 v0, 0x1f4

    goto :goto_1

    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v4

    if-gtz p2, :cond_b

    const-wide/16 v0, 0x320

    .line 23
    :cond_b
    :goto_1
    iput p1, p0, Lmodule/sound/AudioDevice;->U:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 24
    iget v4, p0, Lmodule/sound/AudioDevice;->Q:I

    aput v4, p2, v3

    aput p1, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    .line 25
    iget-object p2, p0, Lmodule/sound/AudioDevice;->d0:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    iget-object p1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    iget-object p1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public C0(II)V
    .locals 5

    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->A:Lmodule/sound/C32107$REG;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_1

    .line 2
    sget-object v0, Lmodule/sound/C32107$REG;->B:Lmodule/sound/C32107$REG;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 3
    sget-object v1, Lmodule/sound/C32107$P2BFreq;->b:Lmodule/sound/C32107$P2BFreq;

    iget v1, v1, Lmodule/sound/C32107$P2BFreq;->a:I

    sget-object v2, Lmodule/sound/C32107$P2BFreq;->i:Lmodule/sound/C32107$P2BFreq;

    iget v2, v2, Lmodule/sound/C32107$P2BFreq;->a:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4
    sget-object v1, Lmodule/sound/C32107$REG;->A:Lmodule/sound/C32107$REG;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lmodule/sound/C32107;->h1:[I

    aget v4, v1, v3

    if-eq p2, v4, :cond_2

    .line 5
    aput p2, v1, v3

    .line 6
    aget v3, v1, v3

    aget v1, v1, v2

    invoke-virtual {p0, v0, v3, v1}, Lmodule/sound/C32107;->T1(Lmodule/sound/C32107$REG;II)V

    goto :goto_1

    .line 7
    :cond_2
    sget-object v1, Lmodule/sound/C32107$REG;->B:Lmodule/sound/C32107$REG;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lmodule/sound/C32107;->i1:[I

    aget v4, v1, v3

    if-eq p2, v4, :cond_3

    .line 8
    aput p2, v1, v3

    .line 9
    aget v3, v1, v3

    aget v1, v1, v2

    invoke-virtual {p0, v0, v3, v1}, Lmodule/sound/C32107;->T1(Lmodule/sound/C32107$REG;II)V

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 10
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->C0(II)V

    :cond_4
    return-void
.end method

.method public C1(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result v0

    .line 2
    iget v1, p0, Lmodule/sound/AudioDevice;->Q:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->R:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lmodule/sound/AudioDevice;->R:Z

    .line 4
    iput p1, p0, Lmodule/sound/AudioDevice;->Q:I

    .line 5
    iput v0, p0, Lmodule/sound/C32107;->J0:I

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>>>>>>>>>>>>> C32107  writeVolume value:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " targetValue:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Sound"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object p1, Lmodule/sound/C32107$REG;->I:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v0, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 8
    sget-object p1, Lmodule/sound/C32107$REG;->J:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v2, [I

    aput v0, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 9
    sget-object p1, Lmodule/sound/C32107$REG;->K:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v2, [I

    aput v0, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 10
    sget-object p1, Lmodule/sound/C32107$REG;->L:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v2, [I

    aput v0, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 11
    sget-object p1, Lmodule/sound/C32107$REG;->M:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v2, v2, [I

    aput v0, v2, v1

    invoke-virtual {p0, p1, v2}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public D(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/16 p3, 0x3a

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p1, p3, :cond_2

    const/16 p3, 0x3b

    if-eq p1, p3, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    aget p1, p2, v0

    if-ne p1, p4, :cond_1

    move p1, p4

    goto :goto_0

    :cond_1
    move p1, v0

    .line 3
    :goto_0
    iget-boolean p2, p0, Lmodule/sound/C32107;->r1:Z

    if-eq p2, p1, :cond_4

    .line 4
    iput-boolean p1, p0, Lmodule/sound/C32107;->r1:Z

    .line 5
    sget-object p2, Lmodule/sound/AudioDevice$STORE;->T:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array p1, p4, [I

    .line 6
    iget-boolean p2, p0, Lmodule/sound/C32107;->r1:Z

    aput p2, p1, v0

    invoke-static {p3, p1}, Ly0/h;->s0(I[I)V

    .line 7
    iget-boolean p1, p0, Lmodule/sound/C32107;->r1:Z

    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->a2(Z)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    aget p1, p2, v0

    if-ne p1, p4, :cond_3

    move p1, p4

    goto :goto_1

    :cond_3
    move p1, v0

    .line 10
    :goto_1
    iget-boolean p2, p0, Lmodule/sound/AudioDevice;->B:Z

    if-eq p2, p1, :cond_4

    .line 11
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->B:Z

    .line 12
    sget-object p2, Lmodule/sound/AudioDevice$STORE;->S:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array p1, p4, [I

    .line 13
    iget-boolean p2, p0, Lmodule/sound/AudioDevice;->B:Z

    aput p2, p1, v0

    invoke-static {p3, p1}, Ly0/h;->s0(I[I)V

    .line 14
    iget p1, p0, Lmodule/sound/AudioDevice;->z:I

    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->o(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public D0(II)V
    .locals 5

    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->A:Lmodule/sound/C32107$REG;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_1

    .line 2
    sget-object v0, Lmodule/sound/C32107$REG;->B:Lmodule/sound/C32107$REG;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 3
    sget-object v1, Lmodule/sound/C32107$P2BGain;->b:Lmodule/sound/C32107$P2BGain;

    iget v1, v1, Lmodule/sound/C32107$P2BGain;->a:I

    sget-object v2, Lmodule/sound/C32107$P2BGain;->n:Lmodule/sound/C32107$P2BGain;

    iget v2, v2, Lmodule/sound/C32107$P2BGain;->a:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4
    sget-object v1, Lmodule/sound/C32107$REG;->A:Lmodule/sound/C32107$REG;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lmodule/sound/C32107;->h1:[I

    aget v4, v1, v3

    if-eq p2, v4, :cond_2

    .line 5
    aput p2, v1, v3

    .line 6
    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {p0, v0, v2, v1}, Lmodule/sound/C32107;->T1(Lmodule/sound/C32107$REG;II)V

    :goto_1
    move v2, v3

    goto :goto_2

    .line 7
    :cond_2
    sget-object v1, Lmodule/sound/C32107$REG;->B:Lmodule/sound/C32107$REG;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lmodule/sound/C32107;->i1:[I

    aget v4, v1, v3

    if-eq p2, v4, :cond_3

    .line 8
    aput p2, v1, v3

    .line 9
    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {p0, v0, v2, v1}, Lmodule/sound/C32107;->T1(Lmodule/sound/C32107$REG;II)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 10
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->D0(II)V

    :cond_4
    return-void
.end method

.method public D1(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const p1, 0x11000

    .line 1
    iget-object v0, p0, Lmodule/sound/C32107;->m1:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->c2(II)V

    const p1, 0x12000

    .line 2
    iget-object v0, p0, Lmodule/sound/C32107;->m1:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->c2(II)V

    const p1, 0x21000

    .line 3
    iget-object v0, p0, Lmodule/sound/C32107;->m1:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->c2(II)V

    const p1, 0x22000

    .line 4
    iget-object v0, p0, Lmodule/sound/C32107;->m1:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->c2(II)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lmodule/sound/C32107$REG;->p:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    const/16 v0, 0xe

    invoke-static {v0}, Lo1/s0;->a(I)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->f2(I[I)I

    :goto_0
    return-void
.end method

.method public E0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107;->g1:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lmodule/sound/C32107;->g1:Z

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->U1(Z)V

    .line 4
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->E0(Z)V

    return-void
.end method

.method public E1([II)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lmodule/sound/C32107;->O1(I)[I

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

.method public F()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/sound/C32107$CHANNEL;->b:Lmodule/sound/C32107$CHANNEL;

    iget v1, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 2
    sget-object v1, Lmodule/sound/C32107$CHANNEL;->e:Lmodule/sound/C32107$CHANNEL;

    iget v1, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 3
    iget v1, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 4
    iget v1, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 5
    sget-object v1, Lmodule/sound/C32107$CHANNEL;->d:Lmodule/sound/C32107$CHANNEL;

    iget v1, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 6
    sget-object v1, Lmodule/sound/C32107$CHANNEL;->f:Lmodule/sound/C32107$CHANNEL;

    iget v2, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 7
    sget-object v2, Lmodule/sound/C32107$CHANNEL;->c:Lmodule/sound/C32107$CHANNEL;

    iget v2, v2, Lmodule/sound/C32107$CHANNEL;->a:I

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 8
    iget v2, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    const/4 v3, 0x7

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 9
    iget v2, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 10
    iget v2, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 11
    iget v2, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 12
    iget v2, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 13
    iget v2, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 14
    iget v2, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    const/16 v3, 0xd

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 15
    iget v1, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 16
    iget v1, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 17
    iget v1, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 18
    iget v0, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    return-void
.end method

.method public F1(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->l:Lmodule/sound/C32107$REG;

    iget v1, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107;->W1(I)I

    move-result v1

    .line 2
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x80

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v1, 0x7f

    :goto_0
    const/4 v1, 0x0

    aput p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public G(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    const/high16 v3, 0x20000

    const/high16 v4, 0x10000

    if-eq p1, v1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->h:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->i:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 4
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->j:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 5
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->k:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 6
    sget p1, Lmodule/sound/C32107;->C1:I

    invoke-virtual {p0, v4, p1}, Lmodule/sound/C32107;->g0(II)V

    .line 7
    sget p1, Lmodule/sound/C32107;->C1:I

    invoke-virtual {p0, v3, p1}, Lmodule/sound/C32107;->g0(II)V

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->c:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 9
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->q:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 10
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->s:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 11
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->p:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 12
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->r:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 13
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->U1(Z)V

    .line 14
    invoke-virtual {p0, v4, v2}, Lmodule/sound/C32107;->C0(II)V

    .line 15
    invoke-virtual {p0, v3, v2}, Lmodule/sound/C32107;->C0(II)V

    .line 16
    invoke-virtual {p0, v4, v2}, Lmodule/sound/C32107;->D0(II)V

    .line 17
    invoke-virtual {p0, v3, v2}, Lmodule/sound/C32107;->D0(II)V

    goto/16 :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->d:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 19
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->f:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 20
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->g:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 21
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->e:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 22
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->l1(Z)V

    const/high16 p1, 0x40000000    # 2.0f

    const/16 v0, 0x8

    .line 23
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->i1(II)V

    const p1, 0x11000

    const/16 v0, 0x19

    .line 24
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->j1(II)V

    const p1, 0x12000

    const/16 v0, 0xc

    .line 25
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->j1(II)V

    const p1, 0x21000

    .line 26
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->j1(II)V

    const p1, 0x22000

    .line 27
    invoke-virtual {p0, p1, v2}, Lmodule/sound/C32107;->j1(II)V

    .line 28
    invoke-virtual {p0, v2}, Lmodule/sound/C32107;->k1(I)V

    goto :goto_0

    .line 29
    :cond_3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->D:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 30
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->E:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 31
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->a:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 32
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->w:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lmodule/sound/AudioDevice;->k:I

    .line 34
    sget-object p1, Lmodule/sound/C32107$EQType;->c:Lmodule/sound/C32107$EQType;

    iput-object p1, p0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    .line 35
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->C()V

    .line 36
    sget-object p1, Lmodule/sound/C32107$EQType;->b:Lmodule/sound/C32107$EQType;

    iget p1, p1, Lmodule/sound/C32107$EQType;->a:I

    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->T0(I)V

    .line 37
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->C()V

    .line 38
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->n0()V

    .line 39
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->h(I)V

    :goto_0
    return-void
.end method

.method public varargs G1(I[I)V
    .locals 9

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    aget v1, p2, v0

    iget-object v2, p0, Lmodule/sound/C32107;->R0:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    aget v1, p2, v1

    int-to-double v4, v1

    const/4 v1, 0x2

    aget p2, p2, v1

    invoke-virtual {p0, p2}, Lmodule/sound/C32107;->N1(I)D

    move-result-wide v6

    iget-object p2, p0, Lmodule/sound/C32107;->R0:[I

    aget v8, p2, v0

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Lmodule/sound/C32107;->I1(IDDI)V

    :cond_0
    return-void
.end method

.method public H1([I)V
    .locals 7

    .line 1
    array-length v0, p1

    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    div-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 2
    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v5, v2, v4

    aget v5, p1, v5

    aput v5, v3, v1

    mul-int v5, v2, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget v5, p1, v5

    aput v5, v3, v6

    mul-int/2addr v4, v2

    const/4 v5, 0x2

    add-int/2addr v4, v5

    aget v4, p1, v4

    aput v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107;->G1(I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I1(IDDI)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_7

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    iget-object v3, v0, Lmodule/sound/C32107;->Q0:[I

    aget v1, v3, v1

    .line 2
    sget-object v3, Lmodule/sound/C32107$c;->a:[I

    iget-object v4, v0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    if-ge v1, v5, :cond_2

    or-int/lit8 v1, v1, 0x0

    goto :goto_0

    :cond_2
    if-lt v1, v5, :cond_4

    if-ge v1, v2, :cond_4

    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_3
    if-ltz v1, :cond_4

    if-ge v1, v5, :cond_4

    or-int/lit8 v1, v1, 0x20

    goto :goto_0

    :cond_4
    move v1, v4

    .line 3
    :goto_0
    sget-object v2, Lbase/Configure$Property;->D:Lbase/Configure$Property;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbase/Configure$Property;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide v8, 0x408f400000000000L    # 1000.0

    cmpg-double v2, p2, v8

    if-gtz v2, :cond_5

    add-int/lit8 v2, p6, 0x1

    goto :goto_1

    :cond_5
    move/from16 v2, p6

    :goto_1
    if-gez v1, :cond_6

    return-void

    :cond_6
    int-to-double v8, v2

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    div-double/2addr v8, v10

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 4
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v14, v2

    div-double/2addr v14, v10

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v12, v12, p2

    const-wide v14, 0x40e7700000000000L    # 48000.0

    div-double/2addr v12, v14

    .line 6
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 7
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v18, p4, v16

    div-double v18, v18, v10

    div-double v12, v12, v18

    mul-double v16, v16, v14

    div-double v10, v12, v8

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v20, v10, v18

    div-double v16, v16, v20

    const-wide/high16 v22, 0x41a0000000000000L    # 1.34217728E8

    mul-double v5, v16, v22

    double-to-int v4, v5

    sub-double v5, v18, v10

    neg-double v5, v5

    div-double v5, v5, v20

    mul-double v5, v5, v22

    double-to-int v5, v5

    mul-double/2addr v8, v12

    add-double v10, v8, v18

    div-double v10, v10, v20

    mul-double v10, v10, v22

    double-to-int v6, v10

    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    mul-double/2addr v14, v10

    div-double v14, v14, v20

    mul-double v14, v14, v22

    double-to-int v10, v14

    sub-double v18, v18, v8

    div-double v18, v18, v20

    mul-double v8, v18, v22

    double-to-int v8, v8

    .line 8
    sget-object v9, Lmodule/sound/C32107$REG;->a0:Lmodule/sound/C32107$REG;

    iget v9, v9, Lmodule/sound/C32107$REG;->a:I

    new-array v11, v7, [I

    aput v1, v11, v3

    invoke-virtual {v0, v9, v11}, Lmodule/sound/C32107;->f2(I[I)I

    .line 9
    sget-object v1, Lmodule/sound/C32107$REG;->b0:Lmodule/sound/C32107$REG;

    iget v1, v1, Lmodule/sound/C32107$REG;->a:I

    const/16 v9, 0x14

    new-array v9, v9, [I

    const/4 v11, 0x3

    .line 10
    invoke-static {v6, v11}, Lo1/s0;->c(II)I

    move-result v12

    aput v12, v9, v3

    const/4 v2, 0x2

    invoke-static {v6, v2}, Lo1/s0;->c(II)I

    move-result v12

    aput v12, v9, v7

    invoke-static {v6, v7}, Lo1/s0;->c(II)I

    move-result v12

    aput v12, v9, v2

    invoke-static {v6, v3}, Lo1/s0;->c(II)I

    move-result v6

    aput v6, v9, v11

    const/4 v6, 0x4

    .line 11
    invoke-static {v10, v11}, Lo1/s0;->c(II)I

    move-result v12

    aput v12, v9, v6

    const/4 v6, 0x5

    invoke-static {v10, v2}, Lo1/s0;->c(II)I

    move-result v12

    aput v12, v9, v6

    const/4 v6, 0x6

    invoke-static {v10, v7}, Lo1/s0;->c(II)I

    move-result v12

    aput v12, v9, v6

    const/4 v6, 0x7

    invoke-static {v10, v3}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v6

    const/16 v6, 0x8

    .line 12
    invoke-static {v8, v11}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v6

    const/16 v6, 0x9

    const/4 v2, 0x2

    invoke-static {v8, v2}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v6

    const/16 v6, 0xa

    invoke-static {v8, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v6

    const/16 v6, 0xb

    invoke-static {v8, v3}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v9, v6

    const/16 v6, 0xc

    .line 13
    invoke-static {v4, v11}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v9, v6

    const/16 v6, 0xd

    const/4 v2, 0x2

    invoke-static {v4, v2}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v9, v6

    const/16 v6, 0xe

    invoke-static {v4, v7}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v9, v6

    const/16 v6, 0xf

    invoke-static {v4, v3}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v9, v6

    .line 14
    invoke-static {v5, v11}, Lo1/s0;->c(II)I

    move-result v4

    const/16 v6, 0x10

    aput v4, v9, v6

    const/16 v4, 0x11

    invoke-static {v5, v2}, Lo1/s0;->c(II)I

    move-result v2

    aput v2, v9, v4

    const/16 v2, 0x12

    invoke-static {v5, v7}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v9, v2

    const/16 v2, 0x13

    invoke-static {v5, v3}, Lo1/s0;->c(II)I

    move-result v3

    aput v3, v9, v2

    .line 15
    invoke-virtual {v0, v1, v9}, Lmodule/sound/C32107;->f2(I[I)I

    :cond_7
    :goto_2
    return-void
.end method

.method public J1()V
    .locals 7

    .line 1
    sget-object v0, Lbase/Configure$Property;->D:Lbase/Configure$Property;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lmodule/sound/C32107$REG;->f:Lmodule/sound/C32107$REG;

    iget v2, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v2}, Lmodule/sound/C32107;->W1(I)I

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 3
    sget v4, Lmodule/sound/C32107;->C1:I

    aput v4, v3, v1

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v6, 0x2

    aput v4, v3, v6

    const/4 v6, 0x3

    aput v4, v3, v6

    .line 4
    iget v4, p0, Lmodule/sound/AudioDevice;->k:I

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Lmodule/sound/AudioDevice;->M:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lmodule/sound/C32107;->j1:[I

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_3

    :cond_2
    if-nez v3, :cond_5

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_5

    .line 5
    :cond_3
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v4, v5, [I

    if-eqz v3, :cond_4

    or-int/lit16 v2, v2, 0x80

    goto :goto_1

    :cond_4
    and-int/lit8 v2, v2, 0x7f

    :goto_1
    aput v2, v4, v1

    invoke-virtual {p0, v0, v4}, Lmodule/sound/C32107;->f2(I[I)I

    :cond_5
    return-void
.end method

.method public K1(Lmodule/sound/C32107$EQType;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 1
    sget-object v2, Lmodule/sound/C32107$REG;->w:Lmodule/sound/C32107$REG;

    iget v3, v2, Lmodule/sound/C32107$REG;->a:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lmodule/sound/C32107;->W1(I)I

    move-result v3

    .line 2
    iget v2, v2, Lmodule/sound/C32107$REG;->a:I

    add-int/2addr v2, v1

    const/4 v4, 0x1

    new-array v4, v4, [I

    sget-object v5, Lmodule/sound/C32107$EQType;->b:Lmodule/sound/C32107$EQType;

    if-ne p1, v5, :cond_0

    and-int/lit16 v3, v3, 0xbf

    goto :goto_1

    :cond_0
    or-int/lit8 v3, v3, 0x40

    :goto_1
    aput v3, v4, v0

    invoke-virtual {p0, v2, v4}, Lmodule/sound/C32107;->f2(I[I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public L(II)V
    .locals 11

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, p1

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v2, v1

    add-int/lit8 v3, v0, 0x2

    if-gt v2, v3, :cond_0

    return-void

    .line 3
    :cond_0
    aput p2, v1, v0

    add-int/lit8 v2, v0, 0x1

    .line 4
    aget v2, v1, v2

    .line 5
    iget-object v4, p0, Lmodule/sound/C32107;->R0:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    aget v0, v1, v0

    int-to-double v6, v0

    aget v0, v1, v3

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->N1(I)D

    move-result-wide v8

    iget-object v0, p0, Lmodule/sound/C32107;->R0:[I

    aget v10, v0, v2

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Lmodule/sound/C32107;->I1(IDDI)V

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->L(II)V

    .line 7
    invoke-virtual {p0}, Lmodule/sound/C32107;->J1()V

    return-void
.end method

.method public L1()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->B:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lmodule/sound/AudioDevice;->z:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->M1(I)I

    move-result v0

    .line 3
    sget-object v1, Lmodule/sound/C32107$REG;->Y:Lmodule/sound/C32107$REG;

    iget v1, v1, Lmodule/sound/C32107$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lmodule/sound/C32107;->O0:[I

    aget v0, v4, v0

    aput v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lmodule/sound/C32107;->f2(I[I)I

    :cond_0
    return-void
.end method

.method public M(II)V
    .locals 11

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 2
    iget-object v2, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v3, v2

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_0

    return-void

    .line 3
    :cond_0
    aput p2, v2, v1

    .line 4
    aget v3, v2, v0

    int-to-double v6, v3

    add-int/lit8 v0, v0, 0x2

    aget v0, v2, v0

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->N1(I)D

    move-result-wide v8

    iget-object v0, p0, Lmodule/sound/C32107;->R0:[I

    iget-object v2, p0, Lmodule/sound/AudioDevice;->q:[I

    aget v1, v2, v1

    aget v10, v0, v1

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Lmodule/sound/C32107;->I1(IDDI)V

    .line 5
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->M(II)V

    .line 6
    invoke-virtual {p0}, Lmodule/sound/C32107;->J1()V

    return-void
.end method

.method public M1(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->B:Z

    if-eqz v0, :cond_1

    .line 2
    iget p1, p0, Lmodule/sound/AudioDevice;->g:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :cond_1
    :goto_0
    return p1
.end method

.method public N1(I)D
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public O(II)V
    .locals 11

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, p1

    add-int/lit8 v1, v0, 0x2

    .line 2
    iget-object v2, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v3, v2

    if-gt v3, v1, :cond_0

    return-void

    .line 3
    :cond_0
    aput p2, v2, v1

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget v3, v2, v3

    .line 5
    iget-object v4, p0, Lmodule/sound/C32107;->R0:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    aget v0, v2, v0

    int-to-double v6, v0

    aget v0, v2, v1

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->N1(I)D

    move-result-wide v8

    iget-object v0, p0, Lmodule/sound/C32107;->R0:[I

    aget v10, v0, v3

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Lmodule/sound/C32107;->I1(IDDI)V

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->O(II)V

    .line 7
    invoke-virtual {p0}, Lmodule/sound/C32107;->J1()V

    return-void
.end method

.method public O1(I)[I
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    sget-object v1, Lmodule/sound/C32107$EQType;->b:Lmodule/sound/C32107$EQType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->X(I)[I

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lmodule/sound/C32107;->T0:[I

    :cond_1
    if-eqz p1, :cond_3

    .line 4
    array-length v2, p1

    .line 5
    iget v3, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v4, v0, v3

    if-ne v2, v4, :cond_2

    .line 6
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_1

    :cond_2
    mul-int v4, v0, v3

    if-ge v2, v4, :cond_3

    mul-int/2addr v3, v0

    .line 7
    new-array v1, v3, [I

    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, v4

    sub-int/2addr v0, v2

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method public P1(II)V
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lmodule/sound/C32107;->Q1(IID)V

    return-void
.end method

.method public Q(I)Lmodule/sound/AudioDevice$STORE;
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    sget-object v1, Lmodule/sound/C32107$EQType;->b:Lmodule/sound/C32107$EQType;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->Q(I)Lmodule/sound/AudioDevice$STORE;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->j0:Lmodule/sound/AudioDevice$STORE;

    if-eqz p1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->v0:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->t0:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->r0:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->p0:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->n0:Lmodule/sound/AudioDevice$STORE;

    goto :goto_0

    .line 9
    :pswitch_5
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->l0:Lmodule/sound/AudioDevice$STORE;

    :cond_1
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Q1(IID)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    if-ltz v1, :cond_2

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x14

    move/from16 v4, p1

    if-gt v4, v3, :cond_1

    move v4, v3

    :cond_1
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v7, v4

    mul-double/2addr v7, v5

    const-wide v4, 0x40e7700000000000L    # 48000.0

    div-double/2addr v7, v4

    .line 1
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 2
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v10, p3, v8

    div-double/2addr v6, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double v12, v4, v10

    div-double v14, v12, v8

    add-double v16, v6, v10

    div-double v14, v14, v16

    const-wide/high16 v18, 0x41a0000000000000L    # 1.34217728E8

    mul-double v14, v14, v18

    double-to-int v14, v14

    neg-double v12, v12

    div-double v12, v12, v16

    mul-double v12, v12, v18

    double-to-int v12, v12

    mul-double/2addr v4, v8

    div-double v4, v4, v16

    mul-double v4, v4, v18

    double-to-int v4, v4

    sub-double/2addr v6, v10

    div-double v6, v6, v16

    mul-double v6, v6, v18

    double-to-int v5, v6

    .line 3
    sget-object v6, Lmodule/sound/C32107$REG;->c0:Lmodule/sound/C32107$REG;

    iget v6, v6, Lmodule/sound/C32107$REG;->a:I

    const/4 v7, 0x1

    new-array v8, v7, [I

    const/4 v9, 0x0

    aput v1, v8, v9

    invoke-virtual {v0, v6, v8}, Lmodule/sound/C32107;->f2(I[I)I

    .line 4
    sget-object v1, Lmodule/sound/C32107$REG;->d0:Lmodule/sound/C32107$REG;

    iget v1, v1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v3, [I

    .line 5
    invoke-static {v14, v2}, Lo1/s0;->c(II)I

    move-result v6

    aput v6, v3, v9

    const/4 v6, 0x2

    invoke-static {v14, v6}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v3, v7

    invoke-static {v14, v7}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v3, v6

    invoke-static {v14, v9}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v3, v2

    const/4 v8, 0x4

    .line 6
    invoke-static {v12, v2}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/4 v8, 0x5

    invoke-static {v12, v6}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/4 v8, 0x6

    invoke-static {v12, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/4 v8, 0x7

    invoke-static {v12, v9}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0x8

    .line 7
    invoke-static {v14, v2}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0x9

    invoke-static {v14, v6}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xa

    invoke-static {v14, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xb

    invoke-static {v14, v9}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xc

    .line 8
    invoke-static {v4, v2}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xd

    invoke-static {v4, v6}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xe

    invoke-static {v4, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xf

    invoke-static {v4, v9}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v8

    const/16 v4, 0x10

    .line 9
    invoke-static {v5, v2}, Lo1/s0;->c(II)I

    move-result v2

    aput v2, v3, v4

    const/16 v2, 0x11

    invoke-static {v5, v6}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v2

    const/16 v2, 0x12

    invoke-static {v5, v7}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v2

    const/16 v2, 0x13

    invoke-static {v5, v9}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v2

    .line 10
    invoke-virtual {v0, v1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    :cond_2
    :goto_0
    return-void
.end method

.method public R0(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->R0(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lmodule/sound/C32107;->w1:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lmodule/sound/C32107;->w1:Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->j([I)V

    .line 5
    sget v0, Ly0/f;->V0:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->o(I)V

    .line 6
    iput p1, p0, Lmodule/sound/C32107;->q1:I

    :cond_0
    return-void
.end method

.method public R1(I)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->c0:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public S1(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107;->e1:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lmodule/sound/C32107;->e1:Z

    .line 3
    sget-object v0, Lmodule/sound/C32107$REG;->i:Lmodule/sound/C32107$REG;

    iget v1, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107;->W1(I)I

    move-result v1

    .line 4
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    if-eqz p1, :cond_1

    or-int/lit8 v1, v1, 0x70

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v1, 0x8f

    :goto_0
    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 5
    invoke-virtual {p0}, Lmodule/sound/C32107;->g1()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    sget v0, Lu0/b;->D:I

    if-eqz p1, :cond_2

    .line 7
    iget v1, p0, Lmodule/sound/AudioDevice;->l:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107;->j0(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 8
    invoke-virtual {p0, v4}, Lmodule/sound/C32107;->a(I)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->j0(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->a(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public T0(I)V
    .locals 4

    .line 1
    sget-object v0, Lmodule/sound/C32107$EQType;->b:Lmodule/sound/C32107$EQType;

    iget v1, v0, Lmodule/sound/C32107$EQType;->a:I

    if-ne p1, v1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lmodule/sound/C32107$EQType;->c:Lmodule/sound/C32107$EQType;

    iget v2, v1, Lmodule/sound/C32107$EQType;->a:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 3
    iget-object v2, p0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    if-eq v1, v2, :cond_3

    .line 4
    iput-object v1, p0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    if-ne v1, v0, :cond_2

    const/16 v0, 0x10

    goto :goto_1

    :cond_2
    const/16 v0, 0x20

    .line 5
    :goto_1
    iput v0, p0, Lmodule/sound/AudioDevice;->j:I

    .line 6
    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    .line 7
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->n0()V

    .line 8
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->O1(I)[I

    move-result-object v0

    .line 9
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v1, p0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    invoke-virtual {p0, v1}, Lmodule/sound/C32107;->K1(Lmodule/sound/C32107$EQType;)V

    .line 11
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->H1([I)V

    .line 12
    :cond_3
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->T0(I)V

    return-void
.end method

.method public T1(Lmodule/sound/C32107$REG;II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-le p2, v1, :cond_0

    move p2, v0

    :cond_0
    const/16 v1, 0xc

    if-le p3, v1, :cond_1

    move p3, v0

    :cond_1
    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p2, p3

    or-int/lit16 p2, p2, 0x80

    .line 1
    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    const/4 p3, 0x1

    new-array p3, p3, [I

    aput p2, p3, v0

    invoke-virtual {p0, p1, p3}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public U(ILy/b;)Z
    .locals 8

    const/16 v0, 0x9

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x12

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x20000

    const/high16 v4, 0x10000

    const/4 v5, 0x3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-array v0, v3, [I

    .line 1
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->A:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_1
    new-array v0, v3, [I

    .line 2
    iget-object v1, p0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    iget v1, v1, Lmodule/sound/C32107$EQType;->a:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_2
    new-array v6, v5, [I

    aput v4, v6, v2

    .line 3
    iget-object v4, p0, Lmodule/sound/C32107;->h1:[I

    aget v7, v4, v2

    aput v7, v6, v3

    aget v4, v4, v3

    aput v4, v6, v1

    invoke-virtual {p0, p2, p1, v6}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v4, v5, [I

    aput v0, v4, v2

    .line 4
    iget-object v0, p0, Lmodule/sound/C32107;->i1:[I

    aget v2, v0, v2

    aput v2, v4, v3

    aget v0, v0, v3

    aput v0, v4, v1

    invoke-virtual {p0, p2, p1, v4}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_3
    new-array v0, v1, [I

    const/16 v4, 0x10

    aput v4, v0, v2

    .line 5
    iget v4, p0, Lmodule/sound/C32107;->k1:I

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 6
    iget v1, p0, Lmodule/sound/C32107;->l1:I

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_4
    new-array v0, v1, [I

    const v4, 0x11000

    aput v4, v0, v2

    .line 7
    iget-object v4, p0, Lmodule/sound/C32107;->m1:[I

    aget v4, v4, v2

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v4, 0x12000

    aput v4, v0, v2

    .line 8
    iget-object v4, p0, Lmodule/sound/C32107;->m1:[I

    aget v4, v4, v3

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v4, 0x21000

    aput v4, v0, v2

    .line 9
    iget-object v4, p0, Lmodule/sound/C32107;->m1:[I

    aget v4, v4, v1

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v1, 0x22000

    aput v1, v0, v2

    .line 10
    iget-object v1, p0, Lmodule/sound/C32107;->m1:[I

    aget v1, v1, v5

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_5
    new-array v0, v3, [I

    .line 11
    iget v1, p0, Lmodule/sound/C32107;->c1:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_6
    new-array v0, v3, [I

    .line 12
    iget-boolean v1, p0, Lmodule/sound/C32107;->f1:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_7
    new-array v0, v1, [I

    const v4, 0x10010

    aput v4, v0, v2

    .line 13
    iget-object v4, p0, Lmodule/sound/C32107;->j1:[I

    aget v4, v4, v2

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v4, 0x10020

    aput v4, v0, v2

    .line 14
    iget-object v4, p0, Lmodule/sound/C32107;->j1:[I

    aget v4, v4, v3

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v4, 0x20010

    aput v4, v0, v2

    .line 15
    iget-object v4, p0, Lmodule/sound/C32107;->j1:[I

    aget v4, v4, v1

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v1, 0x20020

    aput v1, v0, v2

    .line 16
    iget-object v1, p0, Lmodule/sound/C32107;->j1:[I

    aget v1, v1, v5

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_8
    new-array v5, v1, [I

    aput v4, v5, v2

    .line 17
    iget-object v4, p0, Lmodule/sound/C32107;->h1:[I

    aget v4, v4, v2

    aput v4, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v1, v1, [I

    aput v0, v1, v2

    .line 18
    iget-object v0, p0, Lmodule/sound/C32107;->i1:[I

    aget v0, v0, v2

    aput v0, v1, v3

    invoke-virtual {p0, p2, p1, v1}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_9
    new-array v5, v1, [I

    aput v4, v5, v2

    .line 19
    iget-object v4, p0, Lmodule/sound/C32107;->h1:[I

    aget v4, v4, v3

    aput v4, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v1, v1, [I

    aput v0, v1, v2

    .line 20
    iget-object v0, p0, Lmodule/sound/C32107;->i1:[I

    aget v0, v0, v3

    aput v0, v1, v3

    invoke-virtual {p0, p2, p1, v1}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_a
    new-array v0, v3, [I

    .line 21
    iget-boolean v1, p0, Lmodule/sound/C32107;->g1:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_b
    new-array v0, v1, [I

    aput v2, v0, v2

    .line 22
    iget v4, p0, Lmodule/sound/C32107;->n1:I

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 23
    iget v1, p0, Lmodule/sound/C32107;->o1:I

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_c
    new-array v0, v3, [I

    .line 24
    iget v1, p0, Lmodule/sound/AudioDevice;->z:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :cond_0
    new-array v0, v3, [I

    .line 25
    iget-boolean v1, p0, Lmodule/sound/C32107;->r1:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_3

    :cond_1
    new-array v0, v3, [I

    .line 26
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->B:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_3

    .line 27
    :cond_2
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v2

    .line 28
    :goto_0
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_6

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 29
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    aget v6, v0, v6

    invoke-virtual {p0, v4}, Lmodule/sound/AudioDevice;->y0(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    :cond_3
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v2

    .line 31
    :goto_1
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_6

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 32
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    aget v6, v0, v6

    aput v6, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-array v0, v3, [I

    .line 33
    iget v1, p0, Lmodule/sound/AudioDevice;->k:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_3

    .line 34
    :cond_5
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v2

    .line 35
    :goto_2
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_6

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 36
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    aget v6, v0, v6

    invoke-virtual {p0, v4}, Lmodule/sound/AudioDevice;->x0(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_7

    goto :goto_5

    .line 37
    :cond_7
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->U(ILy/b;)Z

    move-result v2

    :goto_5
    return v2

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public U1(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->f:Lmodule/sound/C32107$REG;

    iget v1, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107;->W1(I)I

    move-result v1

    .line 2
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    if-eqz p1, :cond_0

    and-int/lit16 p1, v1, 0xbf

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v1, 0x40

    :goto_0
    const/4 v1, 0x0

    aput p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public V1(II)[I
    .locals 7

    .line 1
    iget-object v0, p0, Lmodule/sound/C32107;->d1:Lo1/n;

    sget v1, Lmodule/sound/C32107;->B1:I

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget-object v3, Lmodule/sound/C32107$REG;->e0:Lmodule/sound/C32107$REG;

    iget v3, v3, Lmodule/sound/C32107$REG;->a:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget-object v3, Lmodule/sound/C32107$REG;->f0:Lmodule/sound/C32107$REG;

    iget v3, v3, Lmodule/sound/C32107$REG;->a:I

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {p1, v5}, Lo1/s0;->c(II)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v2, v6

    invoke-static {p1, v4}, Lo1/s0;->c(II)I

    move-result p1

    const/4 v3, 0x3

    aput p1, v2, v3

    invoke-virtual {v0, p2, v1, v5, v2}, Lo1/n;->e(IIZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method public W0()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SuspiciousIndentation"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->W0()V

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const/16 v1, 0xb

    .line 3
    invoke-static {v1}, Lg/f;->n(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f03005a

    goto :goto_0

    :cond_0
    const v1, 0x7f030023

    :goto_0
    const/16 v2, 0x10

    .line 4
    invoke-static {v0, v1, v2}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/C32107;->L0:[I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    .line 5
    aput v1, v0, v2

    .line 6
    sget-object v0, Lmodule/sound/C32107$REG;->d:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v1, v2, [I

    const/16 v3, 0x81

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->f2(I[I)I

    .line 7
    iget-object v0, p0, Lmodule/sound/C32107;->L0:[I

    array-length v0, v0

    const/4 v1, 0x2

    .line 8
    div-int/2addr v0, v1

    move v3, v4

    :cond_1
    if-gez v3, :cond_2

    const-wide/16 v5, 0x64

    .line 9
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 10
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_1
    move v5, v4

    :goto_2
    if-ge v5, v0, :cond_5

    .line 11
    iget-object v6, p0, Lmodule/sound/C32107;->L0:[I

    mul-int/lit8 v7, v5, 0x2

    aget v8, v6, v7

    add-int/2addr v7, v2

    .line 12
    aget v6, v6, v7

    const v7, 0xffff

    if-ne v8, v7, :cond_3

    const/16 v7, 0xff

    if-eq v6, v7, :cond_4

    :cond_3
    new-array v3, v2, [I

    aput v6, v3, v4

    .line 13
    invoke-virtual {p0, v8, v3}, Lmodule/sound/C32107;->f2(I[I)I

    move-result v3

    if-gez v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ltz v3, :cond_1

    .line 14
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->w0(I)V

    .line 15
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->H1([I)V

    .line 16
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    aget v0, v0, v4

    sget-object v3, Lmodule/sound/C32107$HPF;->b:Lmodule/sound/C32107$HPF;

    iget v3, v3, Lmodule/sound/C32107$HPF;->a:I

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107;->P1(II)V

    .line 17
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    aget v0, v0, v2

    sget-object v3, Lmodule/sound/C32107$HPF;->c:Lmodule/sound/C32107$HPF;

    iget v3, v3, Lmodule/sound/C32107$HPF;->a:I

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107;->P1(II)V

    .line 18
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    aget v0, v0, v1

    sget-object v1, Lmodule/sound/C32107$HPF;->d:Lmodule/sound/C32107$HPF;

    iget v1, v1, Lmodule/sound/C32107$HPF;->a:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->P1(II)V

    .line 19
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    sget-object v1, Lmodule/sound/C32107$HPF;->e:Lmodule/sound/C32107$HPF;

    iget v1, v1, Lmodule/sound/C32107$HPF;->a:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->P1(II)V

    .line 20
    iget-boolean v0, p0, Lmodule/sound/C32107;->g1:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->U1(Z)V

    const/high16 v0, 0x10000

    .line 21
    iget-object v1, p0, Lmodule/sound/C32107;->h1:[I

    aget v3, v1, v4

    aget v1, v1, v2

    invoke-virtual {p0, v0, v3, v1}, Lmodule/sound/C32107;->B0(III)V

    const/high16 v0, 0x20000

    .line 22
    iget-object v1, p0, Lmodule/sound/C32107;->i1:[I

    aget v3, v1, v4

    aget v1, v1, v2

    invoke-virtual {p0, v0, v3, v1}, Lmodule/sound/C32107;->B0(III)V

    .line 23
    iget-boolean v0, p0, Lmodule/sound/C32107;->f1:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->l1(Z)V

    .line 24
    sget-object v0, Lmodule/sound/C32107$IIR;->b:Lmodule/sound/C32107$IIR;

    iget v1, p0, Lmodule/sound/C32107;->k1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->d2(Lmodule/sound/C32107$IIR;I)V

    .line 25
    sget-object v0, Lmodule/sound/C32107$IIR;->c:Lmodule/sound/C32107$IIR;

    iget v1, p0, Lmodule/sound/C32107;->l1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->d2(Lmodule/sound/C32107$IIR;I)V

    .line 26
    iget v0, p0, Lmodule/sound/C32107;->c1:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->k1(I)V

    .line 27
    iget-boolean v0, p0, Lmodule/sound/C32107;->f1:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->D1(Z)V

    .line 28
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->f:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->l(I)V

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->j([I)V

    .line 30
    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->a(I)V

    .line 31
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->Z1(Z)V

    .line 32
    iget v0, p0, Lmodule/sound/AudioDevice;->z:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->o(I)V

    .line 33
    sget-object v0, Lmodule/sound/C32107$REG;->D:Lmodule/sound/C32107$REG;

    iget v1, p0, Lmodule/sound/C32107;->o1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->b2(Lmodule/sound/C32107$REG;I)V

    .line 34
    sget-object v0, Lmodule/sound/C32107$REG;->C:Lmodule/sound/C32107$REG;

    iget v1, p0, Lmodule/sound/C32107;->n1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->b2(Lmodule/sound/C32107$REG;I)V

    .line 35
    iget-boolean v0, p0, Lmodule/sound/C32107;->r1:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->a2(Z)V

    .line 36
    invoke-virtual {p0}, Lmodule/sound/C32107;->J1()V

    .line 37
    sget v0, Ly0/f;->C0:I

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->y1(I)V

    return-void
.end method

.method public W1(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->V1(II)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public varargs X0([I)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 2
    aget v4, p1, v3

    aput v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107;->f2(I[I)I

    const/16 v0, 0x801

    new-array v2, v1, [I

    .line 3
    aget p1, p1, v1

    aput p1, v2, v3

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107;->f2(I[I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public X1(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lmodule/sound/C32107;->v1:Z

    .line 2
    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->j0(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lmodule/sound/C32107$REG;->k:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x88

    goto :goto_0

    :cond_0
    const/16 p1, 0x87

    :goto_0
    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->f2(I[I)I

    :cond_1
    return-void
.end method

.method public Y1(I)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->f:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public Z1(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->f:Lmodule/sound/C32107$REG;

    iget v1, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107;->W1(I)I

    move-result v1

    .line 2
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    if-eqz p1, :cond_0

    and-int/lit16 p1, v1, 0xdf

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v1, 0x20

    :goto_0
    const/4 v1, 0x0

    aput p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public a(I)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SuspiciousIndentation"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/media/AudioManager;

    sget v2, Lh0/c;->G:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move p1, v3

    .line 2
    :cond_0
    sget v2, Lu0/b;->E:I

    if-ltz v2, :cond_1

    move p1, v2

    .line 3
    :cond_1
    iput p1, p0, Lmodule/sound/AudioDevice;->l:I

    .line 4
    iget-object v2, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    if-gez v2, :cond_2

    .line 5
    sget-object v2, Lmodule/sound/C32107$CHANNEL;->b:Lmodule/sound/C32107$CHANNEL;

    iget v2, v2, Lmodule/sound/C32107$CHANNEL;->a:I

    .line 6
    :cond_2
    sget-object v5, Lmodule/sound/C32107$CHANNEL;->b:Lmodule/sound/C32107$CHANNEL;

    iget v5, v5, Lmodule/sound/C32107$CHANNEL;->a:I

    const/4 v6, 0x0

    if-ne v2, v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v6

    .line 7
    :goto_0
    sget-object v7, Ln0/j4;->d:Ln0/c4;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ln0/c4;->l3()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v4

    move v5, v6

    goto :goto_1

    :cond_4
    move v7, v6

    :goto_1
    if-nez v7, :cond_5

    if-ne p1, v4, :cond_5

    .line 8
    sget-object v8, Lg/e;->a:Lg/g;

    if-eqz v8, :cond_5

    check-cast v8, Lchip/Chip;

    .line 9
    invoke-virtual {v8}, Lchip/Chip;->M()Z

    move-result v8

    if-eqz v8, :cond_5

    move v7, v4

    move v5, v6

    .line 10
    :cond_5
    iget-boolean v8, p0, Lmodule/sound/AudioDevice;->w:Z

    if-eqz v8, :cond_9

    if-ne p1, v3, :cond_6

    move v5, v6

    goto :goto_2

    :cond_6
    if-nez v5, :cond_7

    xor-int/2addr v7, v4

    move v13, v7

    move v7, v5

    move v5, v13

    goto :goto_3

    :cond_7
    :goto_2
    move v7, v5

    .line 11
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    const-string v11, "setVoiceSwitch2iis"

    invoke-static {v8, v11, v9}, Lo1/d0;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmodule/sound/C32107;->p1:Landroid/media/AudioManager;

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v10, v8, v6

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v6

    invoke-static {v0, v3, v11, v8, v9}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmodule/sound/C32107;->p1:Landroid/media/AudioManager;

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v10, v3, v6

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v6

    const-string v5, "setAudioSwitch2iis"

    invoke-static {v0, v1, v5, v3, v8}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 14
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lmodule/sound/C32107;->p1:Landroid/media/AudioManager;

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v6

    aput-object v11, v10, v4

    aput-object v0, v10, v3

    const/4 v11, 0x3

    aput-object v0, v10, v11

    new-array v0, v9, [Ljava/lang/Object;

    const/16 v9, 0x8

    .line 15
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v6

    xor-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v5, ""

    aput-object v5, v0, v3

    aput-object v5, v0, v11

    const-string v3, "setWiredDeviceConnectionState"

    .line 16
    invoke-static {v1, v8, v3, v10, v0}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move v5, v7

    .line 17
    :cond_9
    invoke-virtual {p0, v5}, Lmodule/sound/C32107;->F1(Z)V

    .line 18
    iget-boolean v0, p0, Lmodule/sound/C32107;->v1:Z

    if-eqz v0, :cond_b

    if-eqz v5, :cond_b

    .line 19
    sget-object v0, Lmodule/sound/C32107$REG;->k:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v1, v4, [I

    const/16 v3, 0x11

    if-ne p1, v3, :cond_a

    const/16 v3, 0x88

    goto :goto_5

    :cond_a
    const/16 v3, 0x87

    :goto_5
    aput v3, v1, v6

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->f2(I[I)I

    .line 20
    :cond_b
    sget-object v0, Lmodule/sound/C32107$REG;->h:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v1, v4, [I

    aput v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->f2(I[I)I

    .line 21
    sget-object v0, Ly0/f;->z0:[I

    aget p1, v0, p1

    if-ltz p1, :cond_c

    const/16 v0, 0x30

    if-ge p1, v0, :cond_c

    .line 22
    sget-object v0, Ly0/f;->w0:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->m(II)V

    :cond_c
    return-void
.end method

.method public a2(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->C:Lmodule/sound/C32107$REG;

    iget v1, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107;->W1(I)I

    move-result v1

    .line 2
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    if-eqz p1, :cond_0

    and-int/lit16 p1, v1, 0xbf

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v1, 0x40

    :goto_0
    const/4 v1, 0x0

    aput p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public b2(Lmodule/sound/C32107$REG;I)V
    .locals 2

    .line 1
    iget v0, p1, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->W1(I)I

    move-result v0

    .line 2
    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    and-int/lit16 v0, v0, 0xf0

    or-int/2addr p2, v0

    const/4 v0, 0x0

    aput p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public c1()[I
    .locals 10

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 1
    sget-object v2, Lmodule/sound/C32107$REG;->c:Lmodule/sound/C32107$REG;

    iget v2, v2, Lmodule/sound/C32107$REG;->a:I

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107;->V1(II)[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/16 v6, 0xff

    const/4 v7, 0x1

    if-ge v4, v0, :cond_2

    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v8, 0x1

    .line 2
    aget v9, v2, v9

    and-int/2addr v9, v6

    aget v8, v2, v8

    and-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v9

    aput v6, v1, v4

    if-nez v5, :cond_1

    .line 3
    aget v5, v1, v4

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_4

    .line 4
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->e0()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v7

    .line 5
    :goto_4
    sget-object v2, Lbase/Configure$Property;->T:Lbase/Configure$Property;

    invoke-virtual {v2, v3}, Lbase/Configure$Property;->d(I)I

    move-result v2

    const/4 v4, 0x7

    const/4 v5, 0x2

    if-ne v2, v4, :cond_5

    sget v2, Lu0/b;->D:I

    const/4 v8, 0x3

    if-eq v2, v8, :cond_6

    if-eq v2, v5, :cond_6

    :cond_5
    sget v2, Lu0/b;->D:I

    if-ne v2, v7, :cond_7

    :cond_6
    move v0, v7

    .line 6
    :cond_7
    iget-boolean v2, p0, Lmodule/sound/AudioDevice;->J:Z

    if-eqz v2, :cond_b

    if-nez v0, :cond_9

    .line 7
    iget v0, p0, Lmodule/sound/C32107;->q1:I

    if-ge v0, v4, :cond_8

    add-int/2addr v0, v7

    iput v0, p0, Lmodule/sound/C32107;->q1:I

    .line 8
    :cond_8
    iget v0, p0, Lmodule/sound/C32107;->q1:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_b

    .line 9
    iput-boolean v7, p0, Lmodule/sound/C32107;->w1:Z

    .line 10
    iget-object v0, p0, Lmodule/sound/C32107;->P0:[I

    array-length v2, v0

    sub-int/2addr v2, v7

    .line 11
    sget-object v8, Lmodule/sound/C32107$REG;->U:Lmodule/sound/C32107$REG;

    iget v8, v8, Lmodule/sound/C32107$REG;->a:I

    new-array v9, v7, [I

    aget v0, v0, v2

    aput v0, v9, v3

    invoke-virtual {p0, v8, v9}, Lmodule/sound/C32107;->f2(I[I)I

    .line 12
    sget-object v0, Lmodule/sound/C32107$REG;->V:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v8, v7, [I

    iget-object v9, p0, Lmodule/sound/C32107;->P0:[I

    aget v9, v9, v2

    aput v9, v8, v3

    invoke-virtual {p0, v0, v8}, Lmodule/sound/C32107;->f2(I[I)I

    .line 13
    sget-object v0, Lmodule/sound/C32107$REG;->W:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v8, v7, [I

    iget-object v9, p0, Lmodule/sound/C32107;->P0:[I

    aget v9, v9, v2

    aput v9, v8, v3

    invoke-virtual {p0, v0, v8}, Lmodule/sound/C32107;->f2(I[I)I

    .line 14
    sget-object v0, Lmodule/sound/C32107$REG;->X:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v8, v7, [I

    iget-object v9, p0, Lmodule/sound/C32107;->P0:[I

    aget v2, v9, v2

    aput v2, v8, v3

    invoke-virtual {p0, v0, v8}, Lmodule/sound/C32107;->f2(I[I)I

    .line 15
    sget-object v0, Lmodule/sound/C32107$REG;->Y:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v2, v7, [I

    iget-object v7, p0, Lmodule/sound/C32107;->O0:[I

    aget v7, v7, v3

    aput v7, v2, v3

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107;->f2(I[I)I

    goto :goto_5

    .line 16
    :cond_9
    iget-boolean v0, p0, Lmodule/sound/C32107;->w1:Z

    if-eqz v0, :cond_a

    .line 17
    iput-boolean v3, p0, Lmodule/sound/C32107;->w1:Z

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->j([I)V

    .line 19
    sget v0, Ly0/f;->V0:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->o(I)V

    .line 20
    :cond_a
    iput v3, p0, Lmodule/sound/C32107;->q1:I

    .line 21
    :cond_b
    :goto_5
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    const/16 v6, 0x5dc

    :cond_c
    new-array v0, v4, [I

    :goto_6
    if-ge v3, v4, :cond_d

    mul-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v5

    .line 22
    aget v2, v1, v2

    mul-int/2addr v2, v6

    int-to-float v2, v2

    const v7, 0x477fff00    # 65535.0f

    div-float/2addr v2, v7

    float-to-int v2, v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    return-object v0
.end method

.method public c2(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107;->f1:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lmodule/sound/C32107;->c1:I

    if-nez v0, :cond_1

    mul-int/lit16 p2, p2, 0x180

    .line 3
    div-int/lit8 p2, p2, 0x64

    goto :goto_0

    :cond_1
    mul-int/lit16 p2, p2, 0xc0

    .line 4
    div-int/lit8 p2, p2, 0x64

    :goto_0
    const/4 v0, 0x1

    .line 5
    invoke-static {p2, v0}, Lo1/s0;->c(II)I

    move-result v1

    const/4 v2, 0x0

    .line 6
    invoke-static {p2, v2}, Lo1/s0;->c(II)I

    move-result p2

    const/4 v3, 0x2

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 7
    :sswitch_0
    sget-object p1, Lmodule/sound/C32107$REG;->p:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v4, v3, [I

    aput v1, v4, v2

    aput p2, v4, v0

    invoke-virtual {p0, p1, v4}, Lmodule/sound/C32107;->f2(I[I)I

    .line 8
    sget-object p1, Lmodule/sound/C32107$REG;->q:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v4, v3, [I

    aput v1, v4, v2

    aput p2, v4, v0

    invoke-virtual {p0, p1, v4}, Lmodule/sound/C32107;->f2(I[I)I

    .line 9
    sget-object p1, Lmodule/sound/C32107$REG;->r:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v4, v3, [I

    aput v1, v4, v2

    aput p2, v4, v0

    invoke-virtual {p0, p1, v4}, Lmodule/sound/C32107;->f2(I[I)I

    .line 10
    sget-object p1, Lmodule/sound/C32107$REG;->s:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v4, v3, [I

    aput v1, v4, v2

    aput p2, v4, v0

    invoke-virtual {p0, p1, v4}, Lmodule/sound/C32107;->f2(I[I)I

    .line 11
    sget-object p1, Lmodule/sound/C32107$REG;->u:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v4, v3, [I

    aput v1, v4, v2

    aput p2, v4, v0

    invoke-virtual {p0, p1, v4}, Lmodule/sound/C32107;->f2(I[I)I

    .line 12
    sget-object p1, Lmodule/sound/C32107$REG;->v:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v3, [I

    aput v1, v3, v2

    aput p2, v3, v0

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    goto :goto_1

    .line 13
    :sswitch_1
    sget-object p1, Lmodule/sound/C32107$REG;->s:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v4, v3, [I

    aput v1, v4, v2

    aput p2, v4, v0

    invoke-virtual {p0, p1, v4}, Lmodule/sound/C32107;->f2(I[I)I

    .line 14
    sget-object p1, Lmodule/sound/C32107$REG;->v:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v3, [I

    aput v1, v3, v2

    aput p2, v3, v0

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    goto :goto_1

    .line 15
    :sswitch_2
    sget-object p1, Lmodule/sound/C32107$REG;->r:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v4, v3, [I

    aput v1, v4, v2

    aput p2, v4, v0

    invoke-virtual {p0, p1, v4}, Lmodule/sound/C32107;->f2(I[I)I

    .line 16
    sget-object p1, Lmodule/sound/C32107$REG;->u:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v3, [I

    aput v1, v3, v2

    aput p2, v3, v0

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    goto :goto_1

    .line 17
    :sswitch_3
    sget-object p1, Lmodule/sound/C32107$REG;->q:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v3, [I

    aput v1, v3, v2

    aput p2, v3, v0

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    goto :goto_1

    .line 18
    :sswitch_4
    sget-object p1, Lmodule/sound/C32107$REG;->p:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v3, [I

    aput v1, v3, v2

    aput p2, v3, v0

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_4
        0x12000 -> :sswitch_3
        0x21000 -> :sswitch_2
        0x22000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public d2(Lmodule/sound/C32107$IIR;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107;->f1:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p1, Lmodule/sound/C32107$IIR;->a:I

    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->R1(I)V

    add-int/lit8 p2, p2, -0xa

    .line 3
    invoke-virtual {p0, p2}, Lmodule/sound/C32107;->e2(I)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->e()V

    .line 2
    sget-object v0, Lh0/d;->b:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C32107;->x1:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lmodule/sound/AudioDevice;->e:Z

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public e1(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iget v1, p0, Lmodule/sound/C32107;->n1:I

    if-eq v1, p2, :cond_1

    .line 3
    sget-object v0, Lmodule/sound/C32107$REG;->C:Lmodule/sound/C32107$REG;

    .line 4
    iput p2, p0, Lmodule/sound/C32107;->n1:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x100

    if-ne p1, v1, :cond_2

    .line 5
    iget v1, p0, Lmodule/sound/C32107;->o1:I

    if-eq v1, p2, :cond_2

    .line 6
    sget-object v0, Lmodule/sound/C32107$REG;->D:Lmodule/sound/C32107$REG;

    .line 7
    iput p2, p0, Lmodule/sound/C32107;->o1:I

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107;->b2(Lmodule/sound/C32107$REG;I)V

    .line 9
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->e1(II)V

    :cond_3
    return-void
.end method

.method public e2(I)V
    .locals 6

    int-to-double v0, p1

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x41a0000000000000L    # 1.34217728E8

    mul-double/2addr v0, v2

    double-to-int p1, v0

    const/16 v0, 0x14

    .line 2
    invoke-static {v0}, Lo1/s0;->a(I)[I

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    invoke-static {p1, v1}, Lo1/s0;->c(II)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2}, Lo1/s0;->c(II)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 5
    invoke-static {p1, v5}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v0, v2

    .line 6
    invoke-static {p1, v3}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v0, v1

    .line 7
    sget-object p1, Lmodule/sound/C32107$REG;->d0:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    sget-object v0, Lh0/d;->b:Lo1/y;

    iget-object v1, p0, Lmodule/sound/C32107;->x1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lmodule/sound/AudioDevice;->f()V

    return-void
.end method

.method public f1(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->A:Z

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->Z1(Z)V

    .line 4
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->f1(Z)V

    return-void
.end method

.method public varargs f2(I[I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lmodule/sound/C32107;->d1:Lo1/n;

    sget v1, Lmodule/sound/C32107;->B1:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lo1/s0;->c(II)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-static {p1, v5}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lo1/n;->d(I[I[I)I

    move-result p1

    return p1
.end method

.method public g0(II)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1
    :sswitch_0
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    const/4 v1, 0x3

    aget v2, v0, v1

    if-ne v2, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v2, Lmodule/sound/C32107$HPF;->e:Lmodule/sound/C32107$HPF;

    .line 3
    aput p2, v0, v1

    goto :goto_1

    .line 4
    :sswitch_1
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    if-ne v2, p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Lmodule/sound/C32107$HPF;->d:Lmodule/sound/C32107$HPF;

    .line 6
    aput p2, v0, v1

    goto :goto_1

    :sswitch_2
    const v0, 0x20010

    .line 7
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107;->g0(II)V

    const v0, 0x20020

    .line 8
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107;->g0(II)V

    goto :goto_0

    .line 9
    :sswitch_3
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    if-ne v2, p2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    sget-object v2, Lmodule/sound/C32107$HPF;->c:Lmodule/sound/C32107$HPF;

    .line 11
    aput p2, v0, v1

    goto :goto_1

    .line 12
    :sswitch_4
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-ne v2, p2, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    sget-object v2, Lmodule/sound/C32107$HPF;->b:Lmodule/sound/C32107$HPF;

    .line 14
    aput p2, v0, v1

    goto :goto_1

    :sswitch_5
    const v0, 0x10010

    .line 15
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107;->g0(II)V

    const v0, 0x10020

    .line 16
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107;->g0(II)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 17
    iget v0, v2, Lmodule/sound/C32107$HPF;->a:I

    invoke-virtual {p0, p2, v0}, Lmodule/sound/C32107;->P1(II)V

    .line 18
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->g0(II)V

    .line 19
    :cond_4
    invoke-virtual {p0}, Lmodule/sound/C32107;->J1()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_5
        0x10010 -> :sswitch_4
        0x10020 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x20010 -> :sswitch_1
        0x20020 -> :sswitch_0
    .end sparse-switch
.end method

.method public g1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107;->u1:Z

    return v0
.end method

.method public h(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->h(I)V

    .line 2
    invoke-virtual {p0}, Lmodule/sound/C32107;->J1()V

    return-void
.end method

.method public i1(II)V
    .locals 2

    if-ltz p2, :cond_7

    const/16 v0, 0x14

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-boolean v0, p0, Lmodule/sound/C32107;->f1:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    .line 2
    iget v1, p0, Lmodule/sound/C32107;->k1:I

    if-eq v1, p2, :cond_2

    .line 3
    sget-object v0, Lmodule/sound/C32107$IIR;->b:Lmodule/sound/C32107$IIR;

    .line 4
    iput p2, p0, Lmodule/sound/C32107;->k1:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x20

    if-ne p1, v1, :cond_3

    .line 5
    iget v1, p0, Lmodule/sound/C32107;->l1:I

    if-eq v1, p2, :cond_3

    .line 6
    sget-object v0, Lmodule/sound/C32107$IIR;->c:Lmodule/sound/C32107$IIR;

    .line 7
    iput p2, p0, Lmodule/sound/C32107;->l1:I

    goto :goto_0

    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_6

    .line 8
    iget v1, p0, Lmodule/sound/C32107;->k1:I

    if-eq v1, p2, :cond_4

    .line 9
    iput p2, p0, Lmodule/sound/C32107;->k1:I

    .line 10
    sget-object v1, Lmodule/sound/C32107$IIR;->b:Lmodule/sound/C32107$IIR;

    invoke-virtual {p0, v1, p2}, Lmodule/sound/C32107;->d2(Lmodule/sound/C32107$IIR;I)V

    .line 11
    :cond_4
    iget v1, p0, Lmodule/sound/C32107;->l1:I

    if-eq v1, p2, :cond_5

    .line 12
    sget-object v1, Lmodule/sound/C32107$IIR;->c:Lmodule/sound/C32107$IIR;

    invoke-virtual {p0, v1, p2}, Lmodule/sound/C32107;->d2(Lmodule/sound/C32107$IIR;I)V

    .line 13
    iput p2, p0, Lmodule/sound/C32107;->l1:I

    .line 14
    :cond_5
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->i1(II)V

    :cond_6
    :goto_0
    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107;->d2(Lmodule/sound/C32107$IIR;I)V

    .line 16
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->i1(II)V

    :cond_7
    :goto_1
    return-void
.end method

.method public j([I)V
    .locals 9

    .line 1
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->e:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lmodule/sound/C32107;->w1:Z

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget p1, Ly0/f;->L0:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lo1/o0;->a(III)I

    move-result p1

    .line 3
    sget v2, Ly0/f;->M0:I

    invoke-static {v2, v0, v1}, Lo1/o0;->a(III)I

    move-result v2

    .line 4
    sget v3, Lh0/c;->G:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sget-boolean v3, Lu0/b;->j2:Z

    if-eqz v3, :cond_1

    .line 5
    sget-object p1, Ln0/j4;->d:Ln0/c4;

    invoke-virtual {p1}, Ln0/c4;->L2()[I

    move-result-object p1

    .line 6
    aget v2, p1, v0

    .line 7
    aget p1, p1, v4

    move v8, v2

    move v2, p1

    move p1, v8

    .line 8
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    rsub-int/lit8 v5, p1, 0x10

    .line 9
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v1, v2

    .line 10
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 11
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 12
    sget-object v2, Lmodule/sound/C32107$REG;->U:Lmodule/sound/C32107$REG;

    iget v2, v2, Lmodule/sound/C32107$REG;->a:I

    new-array v5, v4, [I

    iget-object v7, p0, Lmodule/sound/C32107;->P0:[I

    aget v3, v7, v3

    aput v3, v5, v0

    invoke-virtual {p0, v2, v5}, Lmodule/sound/C32107;->f2(I[I)I

    .line 13
    sget-object v2, Lmodule/sound/C32107$REG;->V:Lmodule/sound/C32107$REG;

    iget v2, v2, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v4, [I

    iget-object v5, p0, Lmodule/sound/C32107;->P0:[I

    aget v5, v5, v6

    aput v5, v3, v0

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 14
    sget-object v2, Lmodule/sound/C32107$REG;->W:Lmodule/sound/C32107$REG;

    iget v2, v2, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v4, [I

    iget-object v5, p0, Lmodule/sound/C32107;->P0:[I

    aget p1, v5, p1

    aput p1, v3, v0

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 15
    sget-object p1, Lmodule/sound/C32107$REG;->X:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v2, v4, [I

    iget-object v3, p0, Lmodule/sound/C32107;->P0:[I

    aget v1, v3, v1

    aput v1, v2, v0

    invoke-virtual {p0, p1, v2}, Lmodule/sound/C32107;->f2(I[I)I

    const/4 p1, 0x0

    .line 16
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->j([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 2
    sget-object p1, Lmodule/sound/C32107$CHANNEL;->b:Lmodule/sound/C32107$CHANNEL;

    iget p1, p1, Lmodule/sound/C32107$CHANNEL;->a:I

    .line 3
    :cond_0
    sget-object v0, Lmodule/sound/C32107$CHANNEL;->b:Lmodule/sound/C32107$CHANNEL;

    iget v0, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j1(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107;->f1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    const/4 v1, 0x0

    if-gt p2, v0, :cond_1

    if-gez p2, :cond_2

    :cond_1
    move p2, v1

    :cond_2
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 2
    :sswitch_0
    iget-object v4, p0, Lmodule/sound/C32107;->m1:[I

    aget v5, v4, v1

    if-ne p2, v5, :cond_3

    aget v5, v4, v3

    if-ne p2, v5, :cond_3

    aget v2, v4, v2

    if-ne p2, v2, :cond_3

    aget v0, v4, v0

    if-eq p2, v0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    const v0, 0x11000

    .line 3
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107;->j1(II)V

    const v0, 0x12000

    .line 4
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107;->j1(II)V

    const v0, 0x21000

    .line 5
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107;->j1(II)V

    const v0, 0x22000

    .line 6
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107;->j1(II)V

    goto :goto_1

    .line 7
    :sswitch_1
    iget-object v2, p0, Lmodule/sound/C32107;->m1:[I

    aget v4, v2, v0

    if-eq p2, v4, :cond_5

    move v1, v3

    .line 8
    :cond_5
    aput p2, v2, v0

    goto :goto_1

    .line 9
    :sswitch_2
    iget-object v0, p0, Lmodule/sound/C32107;->m1:[I

    aget v4, v0, v2

    if-eq p2, v4, :cond_6

    move v1, v3

    .line 10
    :cond_6
    aput p2, v0, v2

    goto :goto_1

    .line 11
    :sswitch_3
    iget-object v0, p0, Lmodule/sound/C32107;->m1:[I

    aget v2, v0, v3

    if-eq p2, v2, :cond_7

    move v1, v3

    .line 12
    :cond_7
    aput p2, v0, v3

    goto :goto_1

    .line 13
    :sswitch_4
    iget-object v0, p0, Lmodule/sound/C32107;->m1:[I

    aget v2, v0, v1

    if-eq p2, v2, :cond_8

    goto :goto_0

    :cond_8
    move v3, v1

    .line 14
    :goto_0
    aput p2, v0, v1

    move v1, v3

    .line 15
    :goto_1
    invoke-virtual {p0, p1, p2}, Lmodule/sound/C32107;->c2(II)V

    if-nez v1, :cond_9

    return-void

    .line 16
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   <<<>>>> flush data start  surroundLevel :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmodule/sound/C32107;->m1:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c32107"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->f:Lmodule/sound/AudioDevice$STORE;

    iget-object v1, p0, Lmodule/sound/C32107;->m1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->H0(Lmodule/sound/AudioDevice$STORE;[I)V

    .line 18
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->j1(II)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_4
        0x12000 -> :sswitch_3
        0x21000 -> :sswitch_2
        0x22000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public k1(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107;->f1:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lmodule/sound/C32107$REG;->l:Lmodule/sound/C32107$REG;

    iget v1, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107;->W1(I)I

    move-result v1

    .line 3
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    or-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v1, 0xf7

    :goto_0
    aput v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107;->f2(I[I)I

    .line 4
    iget v0, p0, Lmodule/sound/C32107;->c1:I

    if-ne v0, p1, :cond_2

    return-void

    .line 5
    :cond_2
    iput p1, p0, Lmodule/sound/C32107;->c1:I

    .line 6
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->k1(I)V

    return-void
.end method

.method public l(I)V
    .locals 8

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->f:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->W1(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2
    :goto_0
    iget-boolean v4, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eq v3, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 3
    :goto_1
    iput-boolean v3, p0, Lmodule/sound/AudioDevice;->f:Z

    .line 4
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->l(I)V

    .line 5
    sget p1, Lu0/b;->D:I

    const/16 v5, 0x11

    if-ne p1, v5, :cond_2

    const/16 p1, 0x1e

    goto :goto_2

    :cond_2
    move p1, v1

    .line 6
    :goto_2
    iget-boolean v5, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz v5, :cond_5

    if-eqz v3, :cond_3

    and-int/lit16 v0, v0, 0xf7

    goto :goto_3

    :cond_3
    or-int/lit8 v0, v0, 0x8

    .line 7
    :goto_3
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->Y1(I)V

    .line 8
    sget v0, Lmodule/sound/C32107;->A1:I

    sget-boolean v3, Lmodule/sound/AudioDevice;->H0:Z

    if-eqz v3, :cond_4

    sget-object v3, Lmodule/sound/C32107;->F1:[I

    iget v4, p0, Lmodule/sound/AudioDevice;->g:I

    aget v3, v3, v4

    goto :goto_4

    :cond_4
    const/16 v3, 0xc

    :goto_4
    add-int/2addr v0, v3

    add-int/2addr v0, p1

    .line 9
    sget-object p1, Lmodule/sound/C32107$REG;->O:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v2, [I

    rsub-int v4, v0, 0x80

    aput v4, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 10
    sget-object p1, Lmodule/sound/C32107$REG;->P:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v2, [I

    aput v4, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 11
    sget-object p1, Lmodule/sound/C32107$REG;->Q:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v2, [I

    aput v4, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 12
    sget-object p1, Lmodule/sound/C32107$REG;->R:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v2, [I

    aput v4, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 13
    sget-object p1, Lmodule/sound/C32107$REG;->S:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v2, [I

    aput v4, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107;->f2(I[I)I

    const/16 p1, 0x702

    new-array v2, v2, [I

    .line 14
    sget v3, Lmodule/sound/C32107;->A1:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    or-int/lit16 v0, v0, 0x90

    aput v0, v2, v1

    invoke-virtual {p0, p1, v2}, Lmodule/sound/C32107;->f2(I[I)I

    goto :goto_6

    .line 15
    :cond_5
    sget-object v5, Lmodule/sound/C32107$REG;->O:Lmodule/sound/C32107$REG;

    iget v5, v5, Lmodule/sound/C32107$REG;->a:I

    new-array v6, v2, [I

    sget v7, Lmodule/sound/C32107;->A1:I

    add-int/2addr v7, p1

    rsub-int v7, v7, 0x80

    aput v7, v6, v1

    invoke-virtual {p0, v5, v6}, Lmodule/sound/C32107;->f2(I[I)I

    .line 16
    sget-object v5, Lmodule/sound/C32107$REG;->P:Lmodule/sound/C32107$REG;

    iget v5, v5, Lmodule/sound/C32107$REG;->a:I

    new-array v6, v2, [I

    sget v7, Lmodule/sound/C32107;->A1:I

    add-int/2addr v7, p1

    rsub-int v7, v7, 0x80

    aput v7, v6, v1

    invoke-virtual {p0, v5, v6}, Lmodule/sound/C32107;->f2(I[I)I

    .line 17
    sget-object v5, Lmodule/sound/C32107$REG;->Q:Lmodule/sound/C32107$REG;

    iget v5, v5, Lmodule/sound/C32107$REG;->a:I

    new-array v6, v2, [I

    sget v7, Lmodule/sound/C32107;->A1:I

    add-int/2addr v7, p1

    rsub-int v7, v7, 0x80

    aput v7, v6, v1

    invoke-virtual {p0, v5, v6}, Lmodule/sound/C32107;->f2(I[I)I

    .line 18
    sget-object v5, Lmodule/sound/C32107$REG;->R:Lmodule/sound/C32107$REG;

    iget v5, v5, Lmodule/sound/C32107$REG;->a:I

    new-array v6, v2, [I

    sget v7, Lmodule/sound/C32107;->A1:I

    add-int/2addr v7, p1

    rsub-int v7, v7, 0x80

    aput v7, v6, v1

    invoke-virtual {p0, v5, v6}, Lmodule/sound/C32107;->f2(I[I)I

    .line 19
    sget-object v5, Lmodule/sound/C32107$REG;->S:Lmodule/sound/C32107$REG;

    iget v5, v5, Lmodule/sound/C32107$REG;->a:I

    new-array v2, v2, [I

    sget v6, Lmodule/sound/C32107;->A1:I

    add-int/2addr v6, p1

    rsub-int p1, v6, 0x80

    aput p1, v2, v1

    invoke-virtual {p0, v5, v2}, Lmodule/sound/C32107;->f2(I[I)I

    if-eqz v4, :cond_6

    const-wide/16 v1, 0xc8

    .line 20
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    :cond_6
    if-eqz v3, :cond_7

    and-int/lit16 p1, v0, 0xf7

    goto :goto_5

    :cond_7
    or-int/lit8 p1, v0, 0x8

    .line 21
    :goto_5
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->Y1(I)V

    :goto_6
    return-void
.end method

.method public l1(Z)V
    .locals 5

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->E:Lmodule/sound/C32107$REG;

    iget v1, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107;->W1(I)I

    move-result v1

    .line 2
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    if-eqz p1, :cond_0

    or-int/lit16 v1, v1, 0x80

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v1, 0x7f

    :goto_0
    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 3
    sget-object v0, Lmodule/sound/C32107$REG;->m:Lmodule/sound/C32107$REG;

    iget v1, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107;->W1(I)I

    move-result v1

    .line 4
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v2, v2, [I

    if-eqz p1, :cond_1

    or-int/lit8 v1, v1, 0x20

    goto :goto_1

    :cond_1
    and-int/lit16 v1, v1, 0xcf

    :goto_1
    aput v1, v2, v4

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107;->f2(I[I)I

    .line 5
    iget-boolean v0, p0, Lmodule/sound/C32107;->f1:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 6
    :cond_2
    iput-boolean p1, p0, Lmodule/sound/C32107;->f1:Z

    .line 7
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->D1(Z)V

    .line 8
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->l1(Z)V

    return-void
.end method

.method public m(II)V
    .locals 6

    if-ltz p1, :cond_3

    const/16 v0, 0x30

    if-ge p1, v0, :cond_3

    .line 1
    sget v0, Lu0/b;->D:I

    if-ltz v0, :cond_3

    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    .line 2
    sget-object v2, Ly0/f;->z0:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_3

    const/4 p1, 0x0

    .line 3
    invoke-static {p2, p1, v1}, Lo1/o0;->a(III)I

    move-result p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    int-to-double v2, p2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int p2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const-string v0, "sys.fyt.bluetooth_type"

    const-string v2, "0"

    .line 4
    invoke-static {v0, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "7"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p2, p2, 0x8

    .line 6
    :cond_2
    :goto_0
    sget-object v0, Lmodule/sound/C32107$REG;->g:Lmodule/sound/C32107$REG;

    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v1, v1, [I

    aput p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107;->f2(I[I)I

    :cond_3
    return-void
.end method

.method public m0()V
    .locals 6

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->m0()V

    .line 2
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->w:Lmodule/sound/AudioDevice$STORE;

    sget-object v1, Lmodule/sound/C32107$EQType;->b:Lmodule/sound/C32107$EQType;

    iget v2, v1, Lmodule/sound/C32107$EQType;->a:I

    invoke-virtual {p0, v0, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iget v2, v1, Lmodule/sound/C32107$EQType;->a:I

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lmodule/sound/C32107$EQType;->c:Lmodule/sound/C32107$EQType;

    :goto_0
    iput-object v0, p0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x10

    goto :goto_1

    :cond_1
    const/16 v0, 0x20

    .line 3
    :goto_1
    iput v0, p0, Lmodule/sound/AudioDevice;->j:I

    .line 4
    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    .line 5
    iget-object v0, p0, Lmodule/sound/C32107;->h1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->q:Lmodule/sound/AudioDevice$STORE;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v2

    .line 6
    iget-object v0, p0, Lmodule/sound/C32107;->h1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->p:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v1, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 7
    iget-object v0, p0, Lmodule/sound/C32107;->i1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->s:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v1, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v2

    .line 8
    iget-object v0, p0, Lmodule/sound/C32107;->i1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->r:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v1, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v3

    .line 9
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->d:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, v3}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lmodule/sound/C32107;->f1:Z

    .line 10
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->v:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lmodule/sound/C32107;->e1:Z

    .line 11
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->c:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, v3}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lmodule/sound/C32107;->g1:Z

    .line 12
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->e:Lmodule/sound/AudioDevice$STORE;

    iget v1, p0, Lmodule/sound/C32107;->c1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/C32107;->c1:I

    .line 13
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->f:Lmodule/sound/AudioDevice$STORE;

    iget-object v1, p0, Lmodule/sound/C32107;->m1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Z(Lmodule/sound/AudioDevice$STORE;[I)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/C32107;->m1:[I

    .line 14
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->h:Lmodule/sound/AudioDevice$STORE;

    sget v4, Lmodule/sound/C32107;->C1:I

    invoke-virtual {p0, v1, v4}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v2

    .line 15
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->i:Lmodule/sound/AudioDevice$STORE;

    sget v4, Lmodule/sound/C32107;->C1:I

    invoke-virtual {p0, v1, v4}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v3

    .line 16
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    const/4 v1, 0x2

    sget-object v4, Lmodule/sound/AudioDevice$STORE;->j:Lmodule/sound/AudioDevice$STORE;

    sget v5, Lmodule/sound/C32107;->C1:I

    invoke-virtual {p0, v4, v5}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v4

    aput v4, v0, v1

    .line 17
    iget-object v0, p0, Lmodule/sound/C32107;->j1:[I

    const/4 v1, 0x3

    sget-object v4, Lmodule/sound/AudioDevice$STORE;->k:Lmodule/sound/AudioDevice$STORE;

    sget v5, Lmodule/sound/C32107;->C1:I

    invoke-virtual {p0, v4, v5}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v4

    aput v4, v0, v1

    .line 18
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->t:Lmodule/sound/AudioDevice$STORE;

    iget v1, p0, Lmodule/sound/C32107;->k1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    iput v1, p0, Lmodule/sound/C32107;->k1:I

    .line 19
    iget v1, p0, Lmodule/sound/C32107;->l1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/C32107;->l1:I

    .line 20
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->l:Lmodule/sound/AudioDevice$STORE;

    iget v1, p0, Lmodule/sound/C32107;->n1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/C32107;->n1:I

    .line 21
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->m:Lmodule/sound/AudioDevice$STORE;

    iget v1, p0, Lmodule/sound/C32107;->o1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/C32107;->o1:I

    .line 22
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->T:Lmodule/sound/AudioDevice$STORE;

    iget-boolean v1, p0, Lmodule/sound/C32107;->r1:Z

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v3, :cond_5

    move v2, v3

    :cond_5
    iput-boolean v2, p0, Lmodule/sound/C32107;->r1:Z

    return-void
.end method

.method public o(I)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->A:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget p1, Ly0/f;->V0:I

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lo1/o0;->a(III)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->M1(I)I

    move-result p1

    .line 4
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->D:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 5
    :goto_0
    sget-object v2, Lmodule/sound/C32107$REG;->Y:Lmodule/sound/C32107$REG;

    iget v2, v2, Lmodule/sound/C32107$REG;->a:I

    const/4 v3, 0x1

    new-array v3, v3, [I

    iget-object v4, p0, Lmodule/sound/C32107;->O0:[I

    aget v0, v4, v0

    aput v0, v3, v1

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 6
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->B:Z

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->o(I)V

    :cond_2
    return-void
.end method

.method public o0(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmodule/sound/C32107;->b1:Lmodule/sound/C32107$EQType;

    sget-object v1, Lmodule/sound/C32107$EQType;->b:Lmodule/sound/C32107$EQType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 2
    :goto_0
    iput v0, p0, Lmodule/sound/AudioDevice;->j:I

    .line 3
    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, v1

    .line 4
    new-array v1, v0, [I

    .line 5
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->Q(I)Lmodule/sound/AudioDevice$STORE;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v3, v2}, Lo1/h0;->i(I)[I

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    array-length v3, v2

    if-ne v3, v0, :cond_1

    .line 8
    array-length v0, v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lmodule/sound/C32107;->T0:[I

    .line 10
    array-length v2, v0

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   loadCustomData  size :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "    band  *  eqParamNum  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lmodule/sound/AudioDevice;->j:I

    iget v5, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " customMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "c32107"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget v3, p0, Lmodule/sound/AudioDevice;->j:I

    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v5, v3, v4

    const/4 v6, 0x0

    if-ne v2, v5, :cond_2

    .line 13
    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 14
    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget v3, p0, Lmodule/sound/AudioDevice;->j:I

    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-static {v0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v1}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    return-void
.end method

.method public p0()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public q0()I
    .locals 1

    const/16 v0, 0xf0

    return v0
.end method

.method public r0(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-virtual {p0, v2}, Lmodule/sound/C32107;->S1(Z)V

    .line 2
    iget-object v2, p0, Lmodule/sound/C32107;->N0:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    iput p1, p0, Lmodule/sound/AudioDevice;->h:I

    if-nez p1, :cond_1

    .line 4
    iget-object v2, p0, Lmodule/sound/C32107;->N0:[I

    aget p1, v2, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lmodule/sound/C32107;->p0()I

    move-result v2

    iget-object v3, p0, Lmodule/sound/C32107;->N0:[I

    aget p1, v3, p1

    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->F0()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {p0}, Lmodule/sound/C32107;->q0()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    :goto_1
    sget-object v2, Lmodule/sound/C32107$REG;->j:Lmodule/sound/C32107$REG;

    iget v2, v2, Lmodule/sound/C32107$REG;->a:I

    new-array v0, v0, [I

    aput p1, v0, v1

    invoke-virtual {p0, v2, v0}, Lmodule/sound/C32107;->f2(I[I)I

    return-void
.end method

.method public u1()I
    .locals 1

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v0

    return v0
.end method

.method public v0(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->v0(Z)V

    .line 2
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lmodule/sound/C32107$REG;->U:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget-object v2, p0, Lmodule/sound/C32107;->P0:[I

    array-length v3, v2

    sub-int/2addr v3, v0

    aget v2, v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107;->f2(I[I)I

    .line 4
    sget-object p1, Lmodule/sound/C32107$REG;->V:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v1, v0, [I

    iget-object v2, p0, Lmodule/sound/C32107;->P0:[I

    array-length v4, v2

    sub-int/2addr v4, v0

    aget v2, v2, v4

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107;->f2(I[I)I

    .line 5
    sget-object p1, Lmodule/sound/C32107$REG;->W:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v1, v0, [I

    iget-object v2, p0, Lmodule/sound/C32107;->P0:[I

    array-length v4, v2

    sub-int/2addr v4, v0

    aget v2, v2, v4

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107;->f2(I[I)I

    .line 6
    sget-object p1, Lmodule/sound/C32107$REG;->X:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v1, v0, [I

    iget-object v2, p0, Lmodule/sound/C32107;->P0:[I

    array-length v4, v2

    sub-int/2addr v4, v0

    aget v2, v2, v4

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107;->f2(I[I)I

    .line 7
    sget-object p1, Lmodule/sound/C32107$REG;->Y:Lmodule/sound/C32107$REG;

    iget p1, p1, Lmodule/sound/C32107$REG;->a:I

    new-array v0, v0, [I

    iget-object v1, p0, Lmodule/sound/C32107;->O0:[I

    aget v1, v1, v3

    aput v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107;->f2(I[I)I

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean p1, p0, Lmodule/sound/C32107;->w1:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->j([I)V

    .line 10
    sget p1, Ly0/f;->V0:I

    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->o(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public w0(I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/C32107;->O1(I)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {p0, v1, p1}, Lmodule/sound/C32107;->E1([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lmodule/sound/AudioDevice;->j:I

    new-array v1, p1, [I

    .line 5
    new-array v3, p1, [I

    .line 6
    new-array p1, p1, [I

    .line 7
    :goto_0
    iget v4, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v2, v4, :cond_0

    .line 8
    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v5, v2, v4

    aget v5, v0, v5

    aput v5, v3, v2

    mul-int v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    .line 9
    aget v5, v0, v5

    aput v5, v1, v2

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    .line 10
    aget v4, v0, v4

    aput v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v1, v3, p1, v4, p0}, Ly0/h;->H([I[I[IILmodule/sound/AudioDevice;)V

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lmodule/sound/C32107;->H1([I)V

    return-void
.end method

.method public y()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107;->e1:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lmodule/sound/C32107$REG;->i:Lmodule/sound/C32107$REG;

    iget v3, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v3}, Lmodule/sound/C32107;->W1(I)I

    move-result v3

    .line 3
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v4, v2, [I

    or-int/lit8 v3, v3, 0x70

    aput v3, v4, v1

    invoke-virtual {p0, v0, v4}, Lmodule/sound/C32107;->f2(I[I)I

    .line 4
    :cond_0
    sget-object v0, Lmodule/sound/C32107$REG;->H:Lmodule/sound/C32107$REG;

    iget v3, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v4, v2, [I

    const/4 v5, 0x5

    aput v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lmodule/sound/C32107;->f2(I[I)I

    const-wide/16 v3, 0x32

    .line 5
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 6
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v3, v2, [I

    const/4 v4, 0x4

    aput v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107;->f2(I[I)I

    .line 7
    iget-boolean v0, p0, Lmodule/sound/C32107;->e1:Z

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lmodule/sound/C32107$REG;->i:Lmodule/sound/C32107$REG;

    iget v3, v0, Lmodule/sound/C32107$REG;->a:I

    invoke-virtual {p0, v3}, Lmodule/sound/C32107;->W1(I)I

    move-result v3

    .line 9
    iget v0, v0, Lmodule/sound/C32107$REG;->a:I

    new-array v2, v2, [I

    and-int/lit16 v3, v3, 0x8f

    aput v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107;->f2(I[I)I

    :cond_1
    return-void
.end method
