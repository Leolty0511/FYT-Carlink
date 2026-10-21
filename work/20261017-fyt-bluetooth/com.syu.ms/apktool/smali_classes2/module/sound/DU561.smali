.class public Lmodule/sound/DU561;
.super Lmodule/sound/AudioDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/sound/DU561$CHANNEL;,
        Lmodule/sound/DU561$c;
    }
.end annotation


# static fields
.field public static N1:I = 0x5a


# instance fields
.field public A1:[I

.field public B1:[I

.field public C1:[I

.field public D1:[I

.field public E1:Z

.field public F1:Z

.field public G1:Z

.field public H1:I

.field public final I0:Z

.field public I1:I

.field public final J0:Ljava/lang/String;

.field public J1:[I

.field public final K0:I

.field public K1:I

.field public final L0:I

.field public L1:Landroid/os/Handler;

.field public final M0:I

.field public M1:Ljava/lang/Runnable;

.field public final N0:I

.field public final O0:I

.field public final P0:I

.field public final Q0:I

.field public final R0:I

.field public final S0:I

.field public final T0:D

.field public final U0:D

.field public final V0:D

.field public final W0:[I

.field public X0:[I

.field public final Y0:[I

.field public final Z0:[I

.field public a1:[I

.field public final b1:I

.field public final c1:I

.field public final d1:I

.field public e1:[I

.field public f1:[I

.field public g1:[I

.field public h1:[I

.field public i1:[I

.field public j1:[I

.field public k1:[I

.field public l1:[I

.field public m1:[I

.field public final n1:[I

.field public final o1:[I

.field public final p1:[I

.field public final q1:[I

.field public final r1:[I

.field public final s1:[I

.field public final t1:[I

.field public final u1:[I

.field public v1:Lo1/n;

.field public w1:I

.field public x1:I

.field public y1:I

.field public z1:Landroid/media/AudioManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo1/n;)V
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x24

    const/4 v2, 0x3

    .line 1
    invoke-direct {v0, v1, v2}, Lmodule/sound/AudioDevice;-><init>(II)V

    const/4 v3, 0x0

    .line 2
    iput-boolean v3, v0, Lmodule/sound/DU561;->I0:Z

    const-string v4, "DU561"

    .line 3
    iput-object v4, v0, Lmodule/sound/DU561;->J0:Ljava/lang/String;

    const/16 v4, 0x165

    .line 4
    iput v4, v0, Lmodule/sound/DU561;->K0:I

    const/16 v4, 0x170

    .line 5
    iput v4, v0, Lmodule/sound/DU561;->L0:I

    const/16 v4, 0x194

    .line 6
    iput v4, v0, Lmodule/sound/DU561;->M0:I

    const/16 v4, 0x19f

    .line 7
    iput v4, v0, Lmodule/sound/DU561;->N0:I

    .line 8
    iput v3, v0, Lmodule/sound/DU561;->O0:I

    const/4 v4, 0x1

    .line 9
    iput v4, v0, Lmodule/sound/DU561;->P0:I

    const/4 v5, 0x2

    .line 10
    iput v5, v0, Lmodule/sound/DU561;->Q0:I

    .line 11
    iput v2, v0, Lmodule/sound/DU561;->R0:I

    const/4 v6, 0x4

    .line 12
    iput v6, v0, Lmodule/sound/DU561;->S0:I

    const-wide v7, -0x3fae200000000000L    # -71.5

    .line 13
    iput-wide v7, v0, Lmodule/sound/DU561;->T0:D

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    .line 14
    iput-wide v7, v0, Lmodule/sound/DU561;->U0:D

    const-wide v7, -0x3fade00000000000L    # -72.5

    .line 15
    iput-wide v7, v0, Lmodule/sound/DU561;->V0:D

    new-array v7, v3, [I

    .line 16
    iput-object v7, v0, Lmodule/sound/DU561;->W0:[I

    const/4 v7, 0x0

    .line 17
    iput-object v7, v0, Lmodule/sound/DU561;->X0:[I

    new-array v8, v3, [I

    .line 18
    iput-object v8, v0, Lmodule/sound/DU561;->Y0:[I

    new-array v8, v3, [I

    .line 19
    iput-object v8, v0, Lmodule/sound/DU561;->Z0:[I

    new-array v1, v1, [I

    .line 20
    fill-array-data v1, :array_0

    iput-object v1, v0, Lmodule/sound/DU561;->a1:[I

    const/16 v1, 0x6e

    .line 21
    iput v1, v0, Lmodule/sound/DU561;->b1:I

    .line 22
    iput v1, v0, Lmodule/sound/DU561;->c1:I

    const/16 v1, 0x78

    .line 23
    iput v1, v0, Lmodule/sound/DU561;->d1:I

    const/16 v1, 0x25

    new-array v8, v1, [I

    .line 24
    fill-array-data v8, :array_1

    iput-object v8, v0, Lmodule/sound/DU561;->e1:[I

    new-array v8, v1, [I

    .line 25
    fill-array-data v8, :array_2

    iput-object v8, v0, Lmodule/sound/DU561;->f1:[I

    new-array v1, v1, [I

    .line 26
    fill-array-data v1, :array_3

    iput-object v1, v0, Lmodule/sound/DU561;->g1:[I

    const/16 v1, 0x11

    new-array v1, v1, [I

    .line 27
    fill-array-data v1, :array_4

    iput-object v1, v0, Lmodule/sound/DU561;->h1:[I

    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 28
    fill-array-data v1, :array_5

    iput-object v1, v0, Lmodule/sound/DU561;->i1:[I

    const/16 v1, 0x15

    new-array v8, v1, [I

    .line 29
    fill-array-data v8, :array_6

    iput-object v8, v0, Lmodule/sound/DU561;->j1:[I

    new-array v8, v1, [I

    .line 30
    fill-array-data v8, :array_7

    iput-object v8, v0, Lmodule/sound/DU561;->k1:[I

    new-array v1, v1, [I

    .line 31
    fill-array-data v1, :array_8

    iput-object v1, v0, Lmodule/sound/DU561;->l1:[I

    const/16 v1, 0x6c

    new-array v8, v1, [I

    .line 32
    fill-array-data v8, :array_9

    iput-object v8, v0, Lmodule/sound/DU561;->m1:[I

    new-array v8, v1, [I

    .line 33
    fill-array-data v8, :array_a

    iput-object v8, v0, Lmodule/sound/DU561;->n1:[I

    new-array v9, v1, [I

    .line 34
    fill-array-data v9, :array_b

    iput-object v9, v0, Lmodule/sound/DU561;->o1:[I

    new-array v10, v1, [I

    .line 35
    fill-array-data v10, :array_c

    iput-object v10, v0, Lmodule/sound/DU561;->p1:[I

    new-array v11, v1, [I

    .line 36
    fill-array-data v11, :array_d

    iput-object v11, v0, Lmodule/sound/DU561;->q1:[I

    new-array v12, v1, [I

    .line 37
    fill-array-data v12, :array_e

    iput-object v12, v0, Lmodule/sound/DU561;->r1:[I

    new-array v13, v1, [I

    .line 38
    fill-array-data v13, :array_f

    iput-object v13, v0, Lmodule/sound/DU561;->s1:[I

    new-array v14, v1, [I

    .line 39
    fill-array-data v14, :array_10

    iput-object v14, v0, Lmodule/sound/DU561;->t1:[I

    new-array v1, v1, [I

    .line 40
    fill-array-data v1, :array_11

    iput-object v1, v0, Lmodule/sound/DU561;->u1:[I

    .line 41
    iput-object v7, v0, Lmodule/sound/DU561;->v1:Lo1/n;

    const/16 v15, 0x28

    .line 42
    iput v15, v0, Lmodule/sound/DU561;->w1:I

    const/16 v15, 0xc8

    .line 43
    iput v15, v0, Lmodule/sound/DU561;->x1:I

    const/4 v15, 0x5

    .line 44
    iput v15, v0, Lmodule/sound/DU561;->y1:I

    .line 45
    iput-object v7, v0, Lmodule/sound/DU561;->z1:Landroid/media/AudioManager;

    new-array v7, v6, [I

    .line 46
    iput-object v7, v0, Lmodule/sound/DU561;->A1:[I

    new-array v7, v6, [I

    .line 47
    fill-array-data v7, :array_12

    iput-object v7, v0, Lmodule/sound/DU561;->B1:[I

    new-array v7, v5, [I

    .line 48
    fill-array-data v7, :array_13

    iput-object v7, v0, Lmodule/sound/DU561;->C1:[I

    new-array v7, v5, [I

    .line 49
    fill-array-data v7, :array_14

    iput-object v7, v0, Lmodule/sound/DU561;->D1:[I

    .line 50
    iput-boolean v4, v0, Lmodule/sound/DU561;->E1:Z

    .line 51
    iput-boolean v3, v0, Lmodule/sound/DU561;->F1:Z

    .line 52
    iput-boolean v3, v0, Lmodule/sound/DU561;->G1:Z

    .line 53
    iput v3, v0, Lmodule/sound/DU561;->H1:I

    .line 54
    iput v3, v0, Lmodule/sound/DU561;->I1:I

    new-array v7, v6, [I

    .line 55
    fill-array-data v7, :array_15

    iput-object v7, v0, Lmodule/sound/DU561;->J1:[I

    .line 56
    iput v3, v0, Lmodule/sound/DU561;->K1:I

    .line 57
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, v0, Lmodule/sound/DU561;->L1:Landroid/os/Handler;

    .line 58
    new-instance v7, Lmodule/sound/DU561$a;

    invoke-direct {v7, v0}, Lmodule/sound/DU561$a;-><init>(Lmodule/sound/DU561;)V

    iput-object v7, v0, Lmodule/sound/DU561;->M1:Ljava/lang/Runnable;

    .line 59
    iget-object v7, v0, Lmodule/sound/DU561;->m1:[I

    invoke-virtual {v0, v3, v7}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 60
    invoke-virtual {v0, v4, v8}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 61
    invoke-virtual {v0, v5, v9}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 62
    invoke-virtual {v0, v2, v10}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 63
    invoke-virtual {v0, v6, v11}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 64
    invoke-virtual {v0, v15, v12}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x6

    .line 65
    invoke-virtual {v0, v2, v13}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x7

    .line 66
    invoke-virtual {v0, v2, v14}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/16 v2, 0x8

    .line 67
    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 68
    sput-boolean v4, Lu0/b;->V3:Z

    .line 69
    iget-object v1, v0, Lmodule/sound/DU561;->e1:[I

    invoke-virtual {v0, v1}, Lmodule/sound/AudioDevice;->x([I)V

    const/16 v1, 0x14

    .line 70
    sput v1, Ly0/f;->f0:I

    .line 71
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v0, Lmodule/sound/DU561;->z1:Landroid/media/AudioManager;

    move-object/from16 v1, p1

    .line 72
    iput-object v1, v0, Lmodule/sound/DU561;->v1:Lo1/n;

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x18
        0x1d
        0x24
        0x2d
        0x35
        0x41
        0x50
        0x64
        0x78
        0x8c
        0xaa
        0xd2
        0x104
        0x140
        0x186
        0x1d6
        0x23a
        0x2bc
        0x352
        0x3e8
        0x514
        0x640
        0x76c
        0x8fc
        0xaf0
        0xd48
        0x1004
        0x1388
        0x17d4
        0x1d4c
        0x2328
        0x2af8
        0x36b0
        0x4268
        0x4e20
    .end array-data

    :array_1
    .array-data 4
        -0x2d0
        -0x24e
        -0x1fe
        -0x1c2
        -0x190
        -0x168
        -0x140
        -0x122
        -0x10e
        -0x104
        -0xfa
        -0xf0
        -0xe6
        -0xdc
        -0xd2
        -0xc8
        -0xbe
        -0xb4
        -0xaa
        -0xa0
        -0x96
        -0x8c
        -0x82
        -0x78
        -0x6e
        -0x64
        -0x5a
        -0x50
        -0x46
        -0x3c
        -0x32
        -0x28
        -0x1e
        -0x14
        -0xa
        0x0
        0xa
    .end array-data

    :array_2
    .array-data 4
        -0x2d0
        -0x208
        -0x1cc
        -0x19a
        -0x172
        -0x154
        -0x136
        -0x122
        -0x10e
        -0x104
        -0xfa
        -0xf0
        -0xe6
        -0xdc
        -0xd2
        -0xc8
        -0xbe
        -0xb4
        -0xaa
        -0xa0
        -0x96
        -0x8c
        -0x82
        -0x78
        -0x6e
        -0x64
        -0x5a
        -0x50
        -0x46
        -0x3c
        -0x32
        -0x28
        -0x1e
        -0x14
        -0xa
        0x0
        0xa
    .end array-data

    :array_3
    .array-data 4
        -0x2d0
        -0x258
        -0x208
        -0x1c2
        -0x190
        -0x168
        -0x140
        -0x122
        -0x10e
        -0xfa
        -0xe6
        -0xdc
        -0xd2
        -0xc8
        -0xbe
        -0xb4
        -0xaa
        -0xa0
        -0x96
        -0x8c
        -0x82
        -0x78
        -0x6e
        -0x64
        -0x5a
        -0x50
        -0x46
        -0x3c
        -0x32
        -0x28
        -0x1e
        -0x19
        -0x14
        -0xf
        -0xa
        -0x5
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x1e
        0x24
        0x2a
        0x30
        0x36
        0x3c
        0x42
        0xff
    .end array-data

    :array_5
    .array-data 4
        -0x2d5
        -0xd2
        -0xb4
        -0x96
        -0x78
        -0x64
        -0x50
        -0x3c
        -0x28
        -0x14
        0x0
    .end array-data

    :array_6
    .array-data 4
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
    .end array-data

    :array_7
    .array-data 4
        0x64
        0x96
        0xc8
        0xfa
        0x12c
        0x168
        0x1a4
        0x1f4
        0x258
        0x2d0
        0x352
        0x3e8
        0x4b0
        0x578
        0x640
        0x708
        0x834
        0x9c4
        0xbb8
        0xdac
        0xfa0
    .end array-data

    :array_8
    .array-data 4
        -0x91
        -0x50
        -0x30
        -0x20
        -0x19
        -0x15
        -0x12
        -0x10
        -0xe
        -0xc
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
    .end array-data

    :array_9
    .array-data 4
        0x14
        0xa
        0x28
        0x18
        0xa
        0x28
        0x1d
        0xa
        0x28
        0x24
        0xa
        0x28
        0x2d
        0xa
        0x28
        0x35
        0xa
        0x28
        0x41
        0xa
        0x28
        0x50
        0xa
        0x28
        0x64
        0xa
        0x28
        0x78
        0xa
        0x28
        0x8c
        0xa
        0x28
        0xaa
        0xa
        0x28
        0xd2
        0xa
        0x28
        0x104
        0xa
        0x28
        0x140
        0xa
        0x28
        0x186
        0xa
        0x28
        0x1d6
        0xa
        0x28
        0x23a
        0xa
        0x28
        0x2bc
        0xa
        0x28
        0x352
        0xa
        0x28
        0x3e8
        0xa
        0x28
        0x514
        0xa
        0x28
        0x640
        0xa
        0x28
        0x76c
        0xa
        0x28
        0x8fc
        0xa
        0x28
        0xaf0
        0xa
        0x28
        0xd48
        0xa
        0x28
        0x1004
        0xa
        0x28
        0x1388
        0xa
        0x28
        0x17d4
        0xa
        0x28
        0x1d4c
        0xa
        0x28
        0x2328
        0xa
        0x28
        0x2af8
        0xa
        0x28
        0x36b0
        0xa
        0x28
        0x4268
        0xa
        0x28
        0x4e20
        0xa
        0x28
    .end array-data

    :array_a
    .array-data 4
        0x14
        0xa
        0x28
        0x18
        0xa
        0x28
        0x1d
        0xa
        0x28
        0x24
        0xa
        0x28
        0x2d
        0xa
        0x28
        0x35
        0xa
        0x28
        0x41
        0xa
        0x28
        0x50
        0xa
        0x28
        0x64
        0xa
        0x28
        0x78
        0xa
        0x28
        0x8c
        0xa
        0x28
        0xaa
        0xa
        0x28
        0xd2
        0xa
        0x28
        0x104
        0xa
        0x28
        0x140
        0xa
        0x28
        0x186
        0xa
        0x28
        0x1d6
        0xa
        0x28
        0x23a
        0xa
        0x28
        0x2bc
        0xa
        0x28
        0x352
        0xa
        0x28
        0x3e8
        0xa
        0x28
        0x514
        0xa
        0x28
        0x640
        0xa
        0x28
        0x76c
        0xa
        0x28
        0x8fc
        0xa
        0x28
        0xaf0
        0xa
        0x28
        0xd48
        0xa
        0x28
        0x1004
        0xa
        0x28
        0x1388
        0xa
        0x28
        0x17d4
        0xa
        0x28
        0x1d4c
        0xa
        0x28
        0x2328
        0xa
        0x28
        0x2af8
        0xa
        0x28
        0x36b0
        0xa
        0x28
        0x4268
        0xa
        0x28
        0x4e20
        0xa
        0x28
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x11
        0x28
        0x18
        0x11
        0x28
        0x1d
        0x11
        0x28
        0x24
        0x11
        0x28
        0x2d
        0x11
        0x28
        0x35
        0x11
        0x28
        0x41
        0x10
        0x28
        0x50
        0xf
        0x28
        0x64
        0xe
        0x28
        0x78
        0xd
        0x28
        0x8c
        0xc
        0x28
        0xaa
        0xc
        0x28
        0xd2
        0xb
        0x28
        0x104
        0x9
        0x28
        0x140
        0x8
        0x28
        0x186
        0x7
        0x28
        0x1d6
        0x6
        0x28
        0x23a
        0x6
        0x28
        0x2bc
        0x6
        0x28
        0x352
        0x6
        0x28
        0x3e8
        0x6
        0x28
        0x514
        0x7
        0x28
        0x640
        0x7
        0x28
        0x76c
        0x8
        0x28
        0x8fc
        0x9
        0x28
        0xaf0
        0xb
        0x28
        0xd48
        0xc
        0x28
        0x1004
        0xd
        0x28
        0x1388
        0xe
        0x28
        0x17d4
        0xf
        0x28
        0x1d4c
        0x10
        0x28
        0x2328
        0x11
        0x28
        0x2af8
        0x11
        0x28
        0x36b0
        0x11
        0x28
        0x4268
        0x11
        0x28
        0x4e20
        0x11
        0x28
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x4
        0x28
        0x18
        0x4
        0x28
        0x1d
        0x4
        0x28
        0x24
        0x4
        0x28
        0x2d
        0x4
        0x28
        0x35
        0x4
        0x28
        0x41
        0x4
        0x28
        0x50
        0x4
        0x28
        0x64
        0x5
        0x28
        0x78
        0x7
        0x28
        0x8c
        0x8
        0x28
        0xaa
        0x9
        0x28
        0xd2
        0xa
        0x28
        0x104
        0xb
        0x28
        0x140
        0xc
        0x28
        0x186
        0xd
        0x28
        0x1d6
        0xe
        0x28
        0x23a
        0xd
        0x28
        0x2bc
        0xd
        0x28
        0x352
        0xc
        0x28
        0x3e8
        0xc
        0x28
        0x514
        0xc
        0x28
        0x640
        0xc
        0x28
        0x76c
        0xc
        0x28
        0x8fc
        0xd
        0x28
        0xaf0
        0xd
        0x28
        0xd48
        0xe
        0x28
        0x1004
        0xc
        0x28
        0x1388
        0xa
        0x28
        0x17d4
        0xa
        0x28
        0x1d4c
        0xa
        0x28
        0x2328
        0xa
        0x28
        0x2af8
        0xa
        0x28
        0x36b0
        0xa
        0x28
        0x4268
        0xa
        0x28
        0x4e20
        0xa
        0x28
    .end array-data

    :array_d
    .array-data 4
        0x14
        0x10
        0x28
        0x18
        0x10
        0x28
        0x1d
        0x10
        0x28
        0x24
        0x10
        0x28
        0x2d
        0x10
        0x28
        0x35
        0x10
        0x28
        0x41
        0x11
        0x28
        0x50
        0x11
        0x28
        0x64
        0x10
        0x28
        0x78
        0xf
        0x28
        0x8c
        0xe
        0x28
        0xaa
        0xd
        0x28
        0xd2
        0xc
        0x28
        0x104
        0xb
        0x28
        0x140
        0xa
        0x28
        0x186
        0x9
        0x28
        0x1d6
        0x8
        0x28
        0x23a
        0x9
        0x28
        0x2bc
        0xb
        0x28
        0x352
        0xc
        0x28
        0x3e8
        0xb
        0x28
        0x514
        0xa
        0x28
        0x640
        0xa
        0x28
        0x76c
        0x9
        0x28
        0x8fc
        0x8
        0x28
        0xaf0
        0x7
        0x28
        0xd48
        0x6
        0x28
        0x1004
        0x6
        0x28
        0x1388
        0x6
        0x28
        0x17d4
        0x5
        0x28
        0x1d4c
        0x5
        0x28
        0x2328
        0x4
        0x28
        0x2af8
        0x3
        0x28
        0x36b0
        0x3
        0x28
        0x4268
        0x3
        0x28
        0x4e20
        0x3
        0x28
    .end array-data

    :array_e
    .array-data 4
        0x14
        0x10
        0x28
        0x18
        0x10
        0x28
        0x1d
        0x10
        0x28
        0x24
        0x10
        0x28
        0x2d
        0xf
        0x28
        0x35
        0xf
        0x28
        0x41
        0xe
        0x28
        0x50
        0xe
        0x28
        0x64
        0xa
        0x28
        0x78
        0x9
        0x28
        0x8c
        0x8
        0x28
        0xaa
        0x7
        0x28
        0xd2
        0x6
        0x28
        0x104
        0x9
        0x28
        0x140
        0xb
        0x28
        0x186
        0xc
        0x28
        0x1d6
        0xd
        0x28
        0x23a
        0xe
        0x28
        0x2bc
        0xe
        0x28
        0x352
        0xe
        0x28
        0x3e8
        0xe
        0x28
        0x514
        0xd
        0x28
        0x640
        0xc
        0x28
        0x76c
        0xa
        0x28
        0x8fc
        0x8
        0x28
        0xaf0
        0x6
        0x28
        0xd48
        0x7
        0x28
        0x1004
        0x9
        0x28
        0x1388
        0xb
        0x28
        0x17d4
        0xd
        0x28
        0x1d4c
        0x10
        0x28
        0x2328
        0xf
        0x28
        0x2af8
        0xe
        0x28
        0x36b0
        0xe
        0x28
        0x4268
        0xe
        0x28
        0x4e20
        0xe
        0x28
    .end array-data

    :array_f
    .array-data 4
        0x14
        0x10
        0x28
        0x18
        0x10
        0x28
        0x1d
        0x10
        0x28
        0x24
        0x10
        0x28
        0x2d
        0x10
        0x28
        0x35
        0x10
        0x28
        0x41
        0x10
        0x28
        0x50
        0x10
        0x28
        0x64
        0x10
        0x28
        0x78
        0x10
        0x28
        0x8c
        0xf
        0x28
        0xaa
        0xf
        0x28
        0xd2
        0xe
        0x28
        0x104
        0xe
        0x28
        0x140
        0xe
        0x28
        0x186
        0xe
        0x28
        0x1d6
        0xf
        0x28
        0x23a
        0x10
        0x28
        0x2bc
        0x10
        0x28
        0x352
        0xf
        0x28
        0x3e8
        0xe
        0x28
        0x514
        0xd
        0x28
        0x640
        0xd
        0x28
        0x76c
        0xc
        0x28
        0x8fc
        0xc
        0x28
        0xaf0
        0xc
        0x28
        0xd48
        0xb
        0x28
        0x1004
        0xb
        0x28
        0x1388
        0xa
        0x28
        0x17d4
        0xa
        0x28
        0x1d4c
        0xa
        0x28
        0x2328
        0x9
        0x28
        0x2af8
        0x8
        0x28
        0x36b0
        0x8
        0x28
        0x4268
        0x8
        0x28
        0x4e20
        0x8
        0x28
    .end array-data

    :array_10
    .array-data 4
        0x14
        0xe
        0x28
        0x18
        0xe
        0x28
        0x1d
        0xe
        0x28
        0x24
        0xe
        0x28
        0x2d
        0xd
        0x28
        0x35
        0xc
        0x28
        0x41
        0xc
        0x28
        0x50
        0xc
        0x28
        0x64
        0xa
        0x28
        0x78
        0x8
        0x28
        0x8c
        0x6
        0x28
        0xaa
        0x5
        0x28
        0xd2
        0x4
        0x28
        0x104
        0x6
        0x28
        0x140
        0x7
        0x28
        0x186
        0x8
        0x28
        0x1d6
        0x9
        0x28
        0x23a
        0xa
        0x28
        0x2bc
        0xa
        0x28
        0x352
        0xa
        0x28
        0x3e8
        0xa
        0x28
        0x514
        0xa
        0x28
        0x640
        0xa
        0x28
        0x76c
        0xa
        0x28
        0x8fc
        0xb
        0x28
        0xaf0
        0xc
        0x28
        0xd48
        0xc
        0x28
        0x1004
        0xc
        0x28
        0x1388
        0xc
        0x28
        0x17d4
        0xd
        0x28
        0x1d4c
        0xe
        0x28
        0x2328
        0xf
        0x28
        0x2af8
        0x10
        0x28
        0x36b0
        0x10
        0x28
        0x4268
        0x10
        0x28
        0x4e20
        0x10
        0x28
    .end array-data

    :array_11
    .array-data 4
        0x14
        0xa
        0x28
        0x18
        0xa
        0x28
        0x1d
        0xa
        0x28
        0x24
        0xa
        0x28
        0x2d
        0xa
        0x28
        0x35
        0xa
        0x28
        0x41
        0xb
        0x28
        0x50
        0xc
        0x28
        0x64
        0xd
        0x28
        0x78
        0xe
        0x28
        0x8c
        0xe
        0x28
        0xaa
        0xe
        0x28
        0xd2
        0xf
        0x28
        0x104
        0xf
        0x28
        0x140
        0x10
        0x28
        0x186
        0x10
        0x28
        0x1d6
        0x10
        0x28
        0x23a
        0x10
        0x28
        0x2bc
        0x11
        0x28
        0x352
        0x11
        0x28
        0x3e8
        0x11
        0x28
        0x514
        0x11
        0x28
        0x640
        0x10
        0x28
        0x76c
        0x10
        0x28
        0x8fc
        0x10
        0x28
        0xaf0
        0x10
        0x28
        0xd48
        0x10
        0x28
        0x1004
        0x10
        0x28
        0x1388
        0x10
        0x28
        0x17d4
        0x10
        0x28
        0x1d4c
        0xf
        0x28
        0x2328
        0xf
        0x28
        0x2af8
        0xe
        0x28
        0x36b0
        0xe
        0x28
        0x4268
        0xe
        0x28
        0x4e20
        0xe
        0x28
    .end array-data

    :array_12
    .array-data 4
        0x19
        0xc
        0xc
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x1e
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x0
        0xa
        0x0
        0x3e8
    .end array-data
.end method


# virtual methods
.method public A1(IZ)V
    .locals 1

    if-ltz p1, :cond_3

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-ne p1, p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-eq p1, p2, :cond_2

    iput p1, p0, Lmodule/sound/AudioDevice;->g:I

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lmodule/sound/DU561;->U1(D)V

    :cond_3
    :goto_0
    return-void
.end method

.method public B0(III)V
    .locals 2

    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    int-to-double v0, p3

    .line 1
    invoke-virtual {p0, p2, v0, v1}, Lmodule/sound/DU561;->D1(ID)V

    :cond_0
    return-void
.end method

.method public C0(II)V
    .locals 3

    const/16 v0, 0x12c

    .line 1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v0, 0x1e

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-ne p1, v1, :cond_1

    .line 2
    iget-object v1, p0, Lmodule/sound/DU561;->C1:[I

    aget v2, v1, v0

    if-eq v2, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3
    :goto_0
    aput p2, v1, v0

    .line 4
    invoke-virtual {p0, v0, p2}, Lmodule/sound/DU561;->F1(II)V

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->C0(II)V

    :cond_2
    return-void
.end method

.method public D(I[I[F[Ljava/lang/String;)V
    .locals 7

    const/16 p3, 0x38

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eq p1, p3, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2
    aget p1, p2, p4

    aget p2, p2, v0

    invoke-virtual {p0, p1, p2}, Lmodule/sound/DU561;->d2(II)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lmodule/sound/DU561;->c2(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6
    aget p1, p2, p4

    if-ne p1, v0, :cond_0

    move p4, v0

    :cond_0
    invoke-virtual {p0, p4}, Lmodule/sound/DU561;->d1(Z)V

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 8
    aget p1, p2, p4

    const/16 v1, 0x10

    and-int/2addr p1, v1

    const/4 v2, 0x2

    const v3, 0x10020

    const v4, 0x10010

    const/4 v5, 0x3

    if-nez p1, :cond_4

    .line 9
    aget p1, p2, v0

    iget v1, p0, Lmodule/sound/DU561;->H1:I

    if-eq p1, v1, :cond_7

    .line 10
    aget p1, p2, v0

    iput p1, p0, Lmodule/sound/DU561;->H1:I

    if-ltz p1, :cond_2

    if-gt p1, v5, :cond_2

    if-ne p1, v0, :cond_3

    .line 11
    :cond_2
    iput p4, p0, Lmodule/sound/DU561;->H1:I

    .line 12
    :cond_3
    iget-object p1, p0, Lmodule/sound/DU561;->A1:[I

    aget p1, p1, p4

    invoke-virtual {p0, v4, p1}, Lmodule/sound/DU561;->g0(II)V

    .line 13
    iget-object p1, p0, Lmodule/sound/DU561;->A1:[I

    aget p1, p1, v0

    invoke-virtual {p0, v3, p1}, Lmodule/sound/DU561;->g0(II)V

    new-array p1, v2, [I

    aput p4, p1, p4

    .line 14
    iget p2, p0, Lmodule/sound/DU561;->H1:I

    aput p2, p1, v0

    invoke-static {p3, p1}, Ly0/h;->s0(I[I)V

    .line 15
    sget-object p1, Lmodule/sound/AudioDevice$STORE;->P:Lmodule/sound/AudioDevice$STORE;

    iget p2, p0, Lmodule/sound/DU561;->H1:I

    invoke-virtual {p0, p1, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 16
    iget-object p2, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Lo1/h0;->e(I)V

    goto :goto_0

    .line 17
    :cond_4
    aget p1, p2, p4

    and-int/2addr p1, v1

    if-eqz p1, :cond_7

    .line 18
    aget p1, p2, v0

    iget v6, p0, Lmodule/sound/DU561;->I1:I

    if-eq p1, v6, :cond_7

    .line 19
    aget p1, p2, v0

    iput p1, p0, Lmodule/sound/DU561;->I1:I

    if-ltz p1, :cond_5

    if-gt p1, v5, :cond_5

    if-ne p1, v0, :cond_6

    .line 20
    :cond_5
    iput p4, p0, Lmodule/sound/DU561;->I1:I

    .line 21
    :cond_6
    iget-object p1, p0, Lmodule/sound/DU561;->A1:[I

    aget p1, p1, p4

    invoke-virtual {p0, v4, p1}, Lmodule/sound/DU561;->g0(II)V

    .line 22
    iget-object p1, p0, Lmodule/sound/DU561;->A1:[I

    aget p1, p1, v0

    invoke-virtual {p0, v3, p1}, Lmodule/sound/DU561;->g0(II)V

    new-array p1, v2, [I

    aput v1, p1, p4

    .line 23
    iget p2, p0, Lmodule/sound/DU561;->I1:I

    aput p2, p1, v0

    invoke-static {p3, p1}, Ly0/h;->s0(I[I)V

    .line 24
    sget-object p1, Lmodule/sound/AudioDevice$STORE;->Q:Lmodule/sound/AudioDevice$STORE;

    iget p2, p0, Lmodule/sound/DU561;->I1:I

    invoke-virtual {p0, p1, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 25
    iget-object p2, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Lo1/h0;->e(I)V

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public D0(II)V
    .locals 4

    const/16 v0, 0xc

    .line 1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v1, 0x10000

    if-ne p1, v1, :cond_1

    .line 2
    iget-object v1, p0, Lmodule/sound/DU561;->C1:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    if-eq v3, p2, :cond_0

    move v0, v2

    .line 3
    :cond_0
    aput p2, v1, v2

    .line 4
    invoke-virtual {p0, v2, p2}, Lmodule/sound/DU561;->F1(II)V

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->D0(II)V

    :cond_2
    return-void
.end method

.method public D1(ID)V
    .locals 8

    .line 1
    monitor-enter p0

    const/4 v0, 0x3

    const/16 v1, 0x84

    const/16 v2, 0x1e

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt p1, v2, :cond_0

    :try_start_0
    new-array p1, v3, [I

    aput v5, p1, v5

    aput v5, p1, v4

    .line 2
    invoke-virtual {p0, v1, v0, v5, p1}, Lmodule/sound/DU561;->O1(III[I)I

    move p1, v2

    goto :goto_0

    :cond_0
    new-array v6, v3, [I

    aput v4, v6, v5

    aput v5, v6, v4

    .line 3
    invoke-virtual {p0, v1, v0, v5, v6}, Lmodule/sound/DU561;->O1(III[I)I

    const-wide/16 v6, 0xa

    .line 4
    invoke-static {v6, v7}, La/i;->a0(J)V

    :goto_0
    new-array v6, v3, [I

    and-int/lit16 v7, p1, 0xff

    aput v7, v6, v5

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, v6, v4

    .line 5
    invoke-virtual {p0, v1, v0, v4, v6}, Lmodule/sound/DU561;->O1(III[I)I

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    mul-double/2addr p2, v6

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double/2addr p2, v6

    double-to-int p1, p2

    if-le p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    new-array p1, v3, [I

    and-int/lit16 p2, v2, 0xff

    aput p2, p1, v5

    shr-int/lit8 p2, v2, 0x8

    and-int/lit16 p2, p2, 0xff

    aput p2, p1, v4

    .line 6
    invoke-virtual {p0, v1, v0, v3, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public E0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->u:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->u:Z

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0, p1}, Lmodule/sound/DU561;->F1(II)V

    .line 4
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->E0(Z)V

    return-void
.end method

.method public E1(Z)V
    .locals 5

    .line 1
    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/16 v2, 0x84

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-array p1, v0, [I

    aput v3, p1, v4

    aput v4, p1, v3

    .line 2
    invoke-virtual {p0, v2, v1, v4, p1}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput v4, p1, v4

    aput v4, p1, v3

    .line 3
    invoke-virtual {p0, v2, v1, v4, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public F()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/sound/DU561$CHANNEL;->b:Lmodule/sound/DU561$CHANNEL;

    iget v1, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 2
    sget-object v1, Lmodule/sound/DU561$CHANNEL;->c:Lmodule/sound/DU561$CHANNEL;

    iget v1, v1, Lmodule/sound/DU561$CHANNEL;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 3
    iget v1, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 4
    iget v1, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 5
    sget-object v1, Lmodule/sound/DU561$CHANNEL;->d:Lmodule/sound/DU561$CHANNEL;

    iget v2, v1, Lmodule/sound/DU561$CHANNEL;->a:I

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 6
    iget v2, v1, Lmodule/sound/DU561$CHANNEL;->a:I

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 7
    iget v2, v1, Lmodule/sound/DU561$CHANNEL;->a:I

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 8
    iget v2, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/4 v3, 0x7

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 9
    iget v2, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 10
    iget v2, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 11
    iget v2, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 12
    iget v2, v1, Lmodule/sound/DU561$CHANNEL;->a:I

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 13
    iget v2, v1, Lmodule/sound/DU561$CHANNEL;->a:I

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 14
    iget v1, v1, Lmodule/sound/DU561$CHANNEL;->a:I

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 15
    iget v1, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 16
    iget v1, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 17
    iget v0, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    return-void
.end method

.method public F1(II)V
    .locals 8

    const/16 v0, 0x84

    const/16 v1, 0x1e

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_2

    if-gt p2, v1, :cond_0

    .line 1
    invoke-virtual {p0, v4}, Lmodule/sound/DU561;->E1(Z)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x12c

    if-le p2, p1, :cond_1

    move p2, p1

    .line 2
    :cond_1
    invoke-virtual {p0, v5}, Lmodule/sound/DU561;->E1(Z)V

    const-wide/16 v6, 0xa

    .line 3
    invoke-static {v6, v7}, La/i;->a0(J)V

    move v1, p2

    .line 4
    :goto_0
    monitor-enter p0

    :try_start_0
    new-array p1, v2, [I

    and-int/lit16 p2, v1, 0xff

    aput p2, p1, v4

    shr-int/lit8 p2, v1, 0x8

    and-int/lit16 p2, p2, 0xff

    aput p2, p1, v5

    .line 5
    invoke-virtual {p0, v0, v3, v5, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 6
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    if-ne p1, v5, :cond_4

    mul-int/2addr p2, v3

    if-le p2, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, p2

    .line 7
    :goto_1
    monitor-enter p0

    :try_start_1
    new-array p1, v2, [I

    and-int/lit16 p2, v1, 0xff

    aput p2, p1, v4

    shr-int/lit8 p2, v1, 0x8

    and-int/lit16 p2, p2, 0xff

    aput p2, p1, v5

    .line 8
    invoke-virtual {p0, v0, v3, v2, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 9
    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_4
    if-ne p1, v2, :cond_6

    .line 10
    monitor-enter p0

    if-nez p2, :cond_5

    :try_start_2
    new-array p1, v2, [I

    aput v4, p1, v4

    aput v4, p1, v5

    .line 11
    invoke-virtual {p0, v0, v3, v3, p1}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_2

    :cond_5
    new-array p1, v2, [I

    aput v5, p1, v4

    aput v4, p1, v5

    .line 12
    invoke-virtual {p0, v0, v3, v3, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 13
    :goto_2
    monitor-exit p0

    goto :goto_3

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public G(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    const/16 v4, 0xc8

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->h:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->i:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 4
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->j:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 5
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->k:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 6
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->P:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 7
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->Q:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 8
    iput v3, p0, Lmodule/sound/DU561;->H1:I

    .line 9
    iput v3, p0, Lmodule/sound/DU561;->I1:I

    const p1, 0x10010

    const/16 v1, 0x14

    .line 10
    invoke-virtual {p0, p1, v1}, Lmodule/sound/DU561;->g0(II)V

    const p1, 0x10020

    .line 11
    invoke-virtual {p0, p1, v4}, Lmodule/sound/DU561;->g0(II)V

    new-array p1, v2, [I

    aput v3, p1, v3

    .line 12
    iget v1, p0, Lmodule/sound/DU561;->H1:I

    aput v1, p1, v0

    const/16 v1, 0x38

    invoke-static {v1, p1}, Ly0/h;->s0(I[I)V

    new-array p1, v2, [I

    const/16 v2, 0x10

    aput v2, p1, v3

    .line 13
    iget v2, p0, Lmodule/sound/DU561;->I1:I

    aput v2, p1, v0

    invoke-static {v1, p1}, Ly0/h;->s0(I[I)V

    goto/16 :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->c:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 15
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->q:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 16
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->s:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 17
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->p:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 18
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->r:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 19
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->Y:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 20
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->X:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 21
    invoke-virtual {p0, v3}, Lmodule/sound/DU561;->E0(Z)V

    .line 22
    invoke-virtual {p0, v3}, Lmodule/sound/DU561;->d1(Z)V

    .line 23
    invoke-virtual {p0, v3}, Lmodule/sound/DU561;->c2(I)V

    const/16 p1, 0x1e

    const/high16 v0, 0x10000

    .line 24
    invoke-virtual {p0, v0, p1}, Lmodule/sound/DU561;->C0(II)V

    .line 25
    invoke-virtual {p0, v0, v3}, Lmodule/sound/DU561;->D0(II)V

    .line 26
    iput v3, p0, Lmodule/sound/AudioDevice;->z:I

    .line 27
    sget p1, Ly0/f;->W0:I

    const-string v0, "ro.fyt.subwoof"

    invoke-static {v0, p1}, La/i;->k(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ly0/h;->n0(I)V

    .line 28
    invoke-virtual {p0, v3, v4}, Lmodule/sound/DU561;->e1(II)V

    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->Z:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 30
    invoke-virtual {p0, v3, v3}, Lmodule/sound/DU561;->d2(II)V

    const/16 p1, 0xa

    .line 31
    invoke-virtual {p0, v0, p1}, Lmodule/sound/DU561;->d2(II)V

    .line 32
    invoke-virtual {p0, v2, v3}, Lmodule/sound/DU561;->d2(II)V

    const/4 p1, 0x3

    const/16 v0, 0x3e8

    .line 33
    invoke-virtual {p0, p1, v0}, Lmodule/sound/DU561;->d2(II)V

    goto :goto_0

    .line 34
    :cond_3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->D:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 35
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->E:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 36
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->a:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 37
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->w:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lmodule/sound/AudioDevice;->k:I

    .line 39
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->C()V

    .line 40
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->n0()V

    .line 41
    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->h(I)V

    :goto_0
    return-void
.end method

.method public G1(I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lmodule/sound/DU561$CHANNEL;->b:Lmodule/sound/DU561$CHANNEL;

    iget v0, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne p1, v0, :cond_0

    new-array p1, v2, [I

    aput v5, p1, v5

    aput v5, p1, v3

    .line 3
    invoke-virtual {p0, v1, v4, v5, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v5, p1, v5

    aput v5, p1, v3

    .line 4
    invoke-virtual {p0, v4, v4, v5, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v5, p1, v5

    aput v5, p1, v3

    .line 5
    invoke-virtual {p0, v4, v4, v3, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 6
    invoke-virtual {p0}, Lmodule/sound/DU561;->N1()V

    goto/16 :goto_0

    .line 7
    :cond_0
    sget-object v0, Lmodule/sound/DU561$CHANNEL;->d:Lmodule/sound/DU561$CHANNEL;

    iget v0, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    if-ne p1, v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lmodule/sound/DU561;->N1()V

    new-array p1, v2, [I

    aput v5, p1, v5

    aput v5, p1, v3

    .line 9
    invoke-virtual {p0, v4, v4, v2, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v5, p1, v5

    aput v5, p1, v3

    .line 10
    invoke-virtual {p0, v4, v4, v4, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v3, p1, v5

    aput v5, p1, v3

    .line 11
    invoke-virtual {p0, v4, v4, v5, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v3, p1, v5

    aput v5, p1, v3

    .line 12
    invoke-virtual {p0, v4, v4, v3, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v4, p1, v5

    aput v5, p1, v3

    .line 13
    invoke-virtual {p0, v1, v4, v5, p1}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lmodule/sound/DU561$CHANNEL;->c:Lmodule/sound/DU561$CHANNEL;

    iget v0, v0, Lmodule/sound/DU561$CHANNEL;->a:I

    if-ne p1, v0, :cond_2

    .line 15
    invoke-virtual {p0}, Lmodule/sound/DU561;->N1()V

    new-array p1, v2, [I

    aput v5, p1, v5

    aput v5, p1, v3

    .line 16
    invoke-virtual {p0, v4, v4, v5, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v5, p1, v5

    aput v5, p1, v3

    .line 17
    invoke-virtual {p0, v4, v4, v3, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v3, p1, v5

    aput v5, p1, v3

    .line 18
    invoke-virtual {p0, v4, v4, v2, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v3, p1, v5

    aput v5, p1, v3

    .line 19
    invoke-virtual {p0, v4, v4, v4, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v4, p1, v5

    aput v5, p1, v3

    .line 20
    invoke-virtual {p0, v1, v4, v5, p1}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    aput v5, p1, v5

    aput v5, p1, v3

    .line 21
    invoke-virtual {p0, v1, v4, v5, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v5, p1, v5

    aput v5, p1, v3

    .line 22
    invoke-virtual {p0, v4, v4, v5, p1}, Lmodule/sound/DU561;->O1(III[I)I

    new-array p1, v2, [I

    aput v5, p1, v5

    aput v5, p1, v3

    .line 23
    invoke-virtual {p0, v4, v4, v3, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 24
    invoke-virtual {p0}, Lmodule/sound/DU561;->N1()V

    .line 25
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public H1(Z)V
    .locals 5

    .line 1
    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/16 v2, 0x8d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-array p1, v0, [I

    aput v3, p1, v4

    aput v4, p1, v3

    .line 2
    invoke-virtual {p0, v2, v1, v4, p1}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput v4, p1, v4

    aput v4, p1, v3

    .line 3
    invoke-virtual {p0, v2, v1, v4, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public I1(II)V
    .locals 6

    .line 1
    monitor-enter p0

    const/16 v0, 0x8d

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_2

    const/16 p1, 0x2710

    if-le p2, p1, :cond_0

    move p2, p1

    :cond_0
    const/16 p1, 0x12c

    if-ge p2, p1, :cond_1

    move p2, p1

    :cond_1
    :try_start_0
    new-array p1, v3, [I

    and-int/lit16 v3, p2, 0xff

    aput v3, p1, v2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, p1, v4

    .line 2
    invoke-virtual {p0, v0, v1, v4, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vocal Exciter FREQ value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v5, 0x64

    if-ne p1, v4, :cond_4

    if-le p2, v5, :cond_3

    move p2, v5

    :cond_3
    new-array p1, v3, [I

    and-int/lit16 v5, p2, 0xff

    aput v5, p1, v2

    aput v2, p1, v4

    .line 4
    invoke-virtual {p0, v0, v1, v3, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Harmonic Exciter DRY value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_6

    if-le p2, v5, :cond_5

    move p2, v5

    :cond_5
    new-array p1, v3, [I

    and-int/lit16 v3, p2, 0xff

    aput v3, p1, v2

    aput v2, p1, v4

    .line 6
    invoke-virtual {p0, v0, v1, v1, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Harmonic Exciter WET value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 8
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public J1(I)V
    .locals 9

    .line 1
    monitor-enter p0

    const/16 v0, 0x14

    const/16 v1, 0x8

    const/16 v2, 0x8f

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-gt p1, v0, :cond_0

    :try_start_0
    new-array p1, v4, [I

    aput v6, p1, v6

    aput v6, p1, v3

    .line 2
    invoke-virtual {p0, v2, v5, v1, p1}, Lmodule/sound/DU561;->O1(III[I)I

    move p1, v6

    goto :goto_0

    :cond_0
    new-array v0, v4, [I

    aput v3, v0, v6

    aput v6, v0, v3

    .line 3
    invoke-virtual {p0, v2, v5, v1, v0}, Lmodule/sound/DU561;->O1(III[I)I

    :goto_0
    const/16 v0, 0xa

    new-array v7, v4, [I

    and-int/lit16 v8, p1, 0xff

    aput v8, v7, v6

    shr-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    aput p1, v7, v3

    .line 4
    invoke-virtual {p0, v2, v5, v0, v7}, Lmodule/sound/DU561;->O1(III[I)I

    .line 5
    iget p1, p0, Lmodule/sound/DU561;->I1:I

    if-ne p1, v4, :cond_1

    const/16 p1, 0x251

    goto :goto_1

    :cond_1
    if-ne p1, v5, :cond_2

    const/16 p1, 0x200

    goto :goto_1

    :cond_2
    const/16 p1, 0x2d4

    :goto_1
    const/16 v0, 0xb

    new-array v4, v4, [I

    and-int/lit16 v7, p1, 0xff

    aput v7, v4, v6

    shr-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    aput p1, v4, v3

    .line 6
    invoke-virtual {p0, v2, v5, v0, v4}, Lmodule/sound/DU561;->O1(III[I)I

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public K1(I)V
    .locals 5

    .line 1
    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/16 v2, 0x83

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-array p1, v0, [I

    aput v3, p1, v4

    aput v4, p1, v3

    .line 2
    invoke-virtual {p0, v2, v1, v4, p1}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput v4, p1, v4

    aput v4, p1, v3

    .line 3
    invoke-virtual {p0, v2, v1, v4, p1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public L(II)V
    .locals 6

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
    iget-object v4, p0, Lmodule/sound/DU561;->j1:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 6
    aget v0, v1, v0

    aput v0, v4, v5

    aget v0, v1, v3

    const/4 v1, 0x1

    aput v0, v4, v1

    const/4 v0, 0x2

    aput v2, v4, v0

    invoke-virtual {p0, p1, v4}, Lmodule/sound/DU561;->Y1(I[I)V

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->L(II)V

    return-void
.end method

.method public L1(I)V
    .locals 8

    .line 1
    monitor-enter p0

    const/16 v0, 0x4e20

    const/16 v1, 0x8f

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-lt p1, v0, :cond_0

    const/16 p1, 0x5dc0

    :try_start_0
    new-array v0, v3, [I

    aput v4, v0, v4

    aput v4, v0, v2

    .line 2
    invoke-virtual {p0, v1, v5, v5, v0}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    aput v2, v0, v4

    aput v4, v0, v2

    .line 3
    invoke-virtual {p0, v1, v5, v5, v0}, Lmodule/sound/DU561;->O1(III[I)I

    :goto_0
    const/4 v0, 0x5

    new-array v6, v3, [I

    and-int/lit16 v7, p1, 0xff

    aput v7, v6, v4

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, v6, v2

    .line 4
    invoke-virtual {p0, v1, v5, v0, v6}, Lmodule/sound/DU561;->O1(III[I)I

    .line 5
    iget p1, p0, Lmodule/sound/DU561;->H1:I

    if-ne p1, v3, :cond_1

    const/16 p1, 0x251

    goto :goto_1

    :cond_1
    if-ne p1, v5, :cond_2

    const/16 p1, 0x200

    goto :goto_1

    :cond_2
    const/16 p1, 0x2d4

    :goto_1
    const/4 v0, 0x6

    new-array v3, v3, [I

    and-int/lit16 v6, p1, 0xff

    aput v6, v3, v4

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, v3, v2

    .line 6
    invoke-virtual {p0, v1, v5, v0, v3}, Lmodule/sound/DU561;->O1(III[I)I

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public M(II)V
    .locals 6

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

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 4
    aget v5, v2, v0

    aput v5, v3, v4

    const/4 v4, 0x2

    add-int/2addr v0, v4

    aget v0, v2, v0

    const/4 v5, 0x1

    aput v0, v3, v5

    aget v0, v2, v1

    aput v0, v3, v4

    invoke-virtual {p0, p1, v3}, Lmodule/sound/DU561;->Y1(I[I)V

    .line 5
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->M(II)V

    return-void
.end method

.method public M1(I)V
    .locals 7

    mul-int/lit8 v0, p1, 0xa

    .line 1
    monitor-enter p0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/16 v3, 0x85

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-array v1, v1, [I

    aput v5, v1, v5

    aput v5, v1, v4

    .line 2
    invoke-virtual {p0, v3, v2, v5, v1}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    :cond_0
    new-array v6, v1, [I

    aput v4, v6, v5

    aput v5, v6, v4

    .line 3
    invoke-virtual {p0, v3, v2, v5, v6}, Lmodule/sound/DU561;->O1(III[I)I

    const/16 v6, 0x64

    if-le v0, v6, :cond_1

    move v0, v6

    :cond_1
    if-gez v0, :cond_2

    move v0, v5

    :cond_2
    new-array v1, v1, [I

    and-int/lit16 v6, v0, 0xff

    aput v6, v1, v5

    aput v5, v1, v4

    .line 4
    invoke-virtual {p0, v3, v2, v4, v1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MV3D inten value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " para:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln1/b;->s(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public N1()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lmodule/sound/DU561;->F1:Z

    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->j0(I)I

    move-result v0

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    aput v3, v0, v4

    aput v4, v0, v5

    .line 3
    invoke-virtual {p0, v2, v3, v5, v0}, Lmodule/sound/DU561;->O1(III[I)I

    .line 4
    iput-boolean v4, p0, Lmodule/sound/DU561;->G1:Z

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v1, [I

    aput v4, v0, v4

    aput v4, v0, v5

    .line 5
    invoke-virtual {p0, v2, v3, v5, v0}, Lmodule/sound/DU561;->O1(III[I)I

    .line 6
    iput-boolean v5, p0, Lmodule/sound/DU561;->G1:Z

    .line 7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public O(II)V
    .locals 6

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
    iget-object v4, p0, Lmodule/sound/DU561;->j1:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 6
    aget v0, v2, v0

    aput v0, v4, v5

    aget v0, v2, v1

    const/4 v1, 0x1

    aput v0, v4, v1

    const/4 v0, 0x2

    aput v3, v4, v0

    invoke-virtual {p0, p1, v4}, Lmodule/sound/DU561;->Y1(I[I)V

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->O(II)V

    return-void
.end method

.method public varargs declared-synchronized O1(III[I)I
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    array-length v0, p4

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 2
    aput p2, v0, v2

    const/4 p2, 0x1

    .line 3
    aput p3, v0, p2

    .line 4
    :goto_0
    array-length p3, p4

    if-ge v2, p3, :cond_0

    add-int/lit8 p3, v1, 0x1

    .line 5
    aget v3, p4, v2

    aput v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, p3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, v0}, Lmodule/sound/DU561;->V1(I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public P1(II)[I
    .locals 4

    .line 1
    new-array v0, p2, [I

    .line 2
    iget-object v0, p0, Lmodule/sound/DU561;->v1:Lo1/n;

    sget v1, Lmodule/sound/DU561;->N1:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v2, v3

    invoke-virtual {v0, p2, v1, v3, v2}, Lo1/n;->e(IIZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method public Q1(I)V
    .locals 5

    .line 1
    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/16 v2, 0x86

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-array v0, v0, [I

    aput v4, v0, v4

    aput v4, v0, v3

    .line 2
    invoke-virtual {p0, v2, v1, v4, v0}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    aput v3, v0, v4

    aput v4, v0, v3

    .line 3
    invoke-virtual {p0, v2, v1, v4, v0}, Lmodule/sound/DU561;->O1(III[I)I

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ST widener swflag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public R1(I)V
    .locals 6

    const/16 v0, 0xfa

    if-le p1, v0, :cond_0

    move p1, v0

    .line 1
    :cond_0
    monitor-enter p0

    const/16 v0, 0x89

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    and-int/lit16 v5, p1, 0xff

    aput v5, v3, v4

    const/4 v4, 0x1

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v4

    .line 2
    invoke-virtual {p0, v0, v1, v2, v3}, Lmodule/sound/DU561;->O1(III[I)I

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subwoof freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public S1(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lmodule/sound/DU561$c;

    invoke-direct {v0, p0}, Lmodule/sound/DU561$c;-><init>(Lmodule/sound/DU561;)V

    .line 3
    iget-object v1, p0, Lmodule/sound/DU561;->i1:[I

    aget v1, v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lmodule/sound/DU561$c;->a(D)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    and-int/lit16 v4, v0, 0xff

    aput v4, v2, v3

    const/4 v3, 0x1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v2, v3

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v1, v0, v0, v2}, Lmodule/sound/DU561;->O1(III[I)I

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subwoof value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public T1(I)V
    .locals 7

    mul-int/lit8 v0, p1, 0xa

    .line 1
    monitor-enter p0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/16 v3, 0x87

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-array v1, v1, [I

    aput v5, v1, v5

    aput v5, v1, v4

    .line 2
    invoke-virtual {p0, v3, v2, v5, v1}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 v6, 0x64

    if-le v0, v6, :cond_1

    move v0, v6

    :cond_1
    if-gez v0, :cond_2

    move v0, v5

    :cond_2
    new-array v6, v1, [I

    aput v4, v6, v5

    aput v5, v6, v4

    .line 3
    invoke-virtual {p0, v3, v2, v5, v6}, Lmodule/sound/DU561;->O1(III[I)I

    new-array v1, v1, [I

    and-int/lit16 v6, v0, 0xff

    aput v6, v1, v5

    aput v5, v1, v4

    .line 4
    invoke-virtual {p0, v3, v2, v4, v1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vocal cut value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " para:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln1/b;->s(Ljava/lang/String;)V

    return-void

    .line 7
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public U(ILy/b;)Z
    .locals 8

    const/16 v0, 0x9

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0x12

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x22

    if-eq p1, v0, :cond_2

    const/16 v0, 0x38

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x20000

    const/high16 v4, 0x10000

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    move v2, v3

    goto/16 :goto_4

    .line 1
    :pswitch_0
    iget-object v0, p0, Lmodule/sound/DU561;->J1:[I

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v3

    .line 2
    :goto_0
    iget-object v4, p0, Lmodule/sound/DU561;->J1:[I

    array-length v5, v4

    if-ge v0, v5, :cond_7

    new-array v5, v1, [I

    aput v0, v5, v3

    .line 3
    aget v4, v4, v0

    aput v4, v5, v2

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    new-array v0, v2, [I

    .line 4
    iget v1, p0, Lmodule/sound/DU561;->K1:I

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_4

    :pswitch_2
    new-array v0, v2, [I

    .line 5
    iget-boolean v1, p0, Lmodule/sound/DU561;->E1:Z

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_4

    :pswitch_3
    new-array v0, v1, [I

    const v4, 0x10010

    aput v4, v0, v3

    .line 6
    iget-object v4, p0, Lmodule/sound/DU561;->A1:[I

    aget v4, v4, v3

    aput v4, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v4, 0x10020

    aput v4, v0, v3

    .line 7
    iget-object v4, p0, Lmodule/sound/DU561;->A1:[I

    aget v4, v4, v2

    aput v4, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v4, 0x20010

    aput v4, v0, v3

    .line 8
    iget-object v4, p0, Lmodule/sound/DU561;->A1:[I

    aget v4, v4, v1

    aput v4, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v1, 0x20020

    aput v1, v0, v3

    .line 9
    iget-object v1, p0, Lmodule/sound/DU561;->A1:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_4

    :pswitch_4
    new-array v5, v1, [I

    aput v4, v5, v3

    .line 10
    iget-object v4, p0, Lmodule/sound/DU561;->C1:[I

    aget v4, v4, v3

    aput v4, v5, v2

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v1, v1, [I

    aput v0, v1, v3

    .line 11
    iget-object v0, p0, Lmodule/sound/DU561;->D1:[I

    aget v0, v0, v3

    aput v0, v1, v2

    invoke-virtual {p0, p2, p1, v1}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_4

    :pswitch_5
    new-array v5, v1, [I

    aput v4, v5, v3

    .line 12
    iget-object v4, p0, Lmodule/sound/DU561;->C1:[I

    aget v4, v4, v2

    aput v4, v5, v2

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v1, v1, [I

    aput v0, v1, v3

    .line 13
    iget-object v0, p0, Lmodule/sound/DU561;->D1:[I

    aget v0, v0, v2

    aput v0, v1, v2

    invoke-virtual {p0, p2, p1, v1}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_4

    :pswitch_6
    new-array v0, v2, [I

    .line 14
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->u:Z

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_4

    :pswitch_7
    new-array v0, v1, [I

    aput v3, v0, v3

    .line 15
    iget v1, p0, Lmodule/sound/DU561;->x1:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_4

    :pswitch_8
    new-array v0, v2, [I

    .line 16
    iget v1, p0, Lmodule/sound/AudioDevice;->z:I

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_4

    :cond_0
    new-array v0, v2, [I

    .line 17
    iget v1, p0, Lmodule/sound/DU561;->w1:I

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_4

    :cond_1
    new-array v0, v1, [I

    aput v3, v0, v3

    .line 18
    iget v4, p0, Lmodule/sound/DU561;->H1:I

    aput v4, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const/16 v1, 0x10

    aput v1, v0, v3

    .line 19
    iget v1, p0, Lmodule/sound/DU561;->I1:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_4

    :cond_2
    new-array v0, v1, [I

    const/high16 v1, 0x40000000    # 2.0f

    aput v1, v0, v3

    .line 20
    iget-object v1, p0, Lmodule/sound/DU561;->B1:[I

    aget v1, v1, v3

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_4

    .line 21
    :cond_3
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v3

    .line 22
    :goto_1
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_7

    new-array v5, v1, [I

    aput v4, v5, v3

    .line 23
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    aget v6, v0, v6

    aput v6, v5, v2

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 24
    :cond_4
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v3

    .line 25
    :goto_2
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_7

    new-array v5, v1, [I

    aput v4, v5, v3

    .line 26
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    aget v6, v0, v6

    aput v6, v5, v2

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    new-array v0, v2, [I

    .line 27
    iget v1, p0, Lmodule/sound/AudioDevice;->k:I

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_4

    .line 28
    :cond_6
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v3

    .line 29
    :goto_3
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_7

    new-array v5, v1, [I

    aput v4, v5, v3

    .line 30
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v2

    aget v6, v0, v6

    invoke-virtual {p0, v4}, Lmodule/sound/AudioDevice;->x0(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v2

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    goto :goto_5

    .line 31
    :cond_8
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->U(ILy/b;)Z

    move-result v2

    :goto_5
    return v2

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public U1(D)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lmodule/sound/DU561$c;

    invoke-direct {v0, p0}, Lmodule/sound/DU561$c;-><init>(Lmodule/sound/DU561;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Lmodule/sound/DU561$c;->a(D)I

    move-result p1

    const/16 p2, 0x82

    const/4 v0, 0x2

    new-array v1, v0, [I

    and-int/lit16 v2, p1, 0xff

    const/4 v3, 0x0

    aput v2, v1, v3

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    const/4 v4, 0x1

    aput p1, v1, v4

    const/4 v5, 0x3

    .line 4
    invoke-virtual {p0, p2, v5, v0, v1}, Lmodule/sound/DU561;->O1(III[I)I

    const/16 p2, 0x88

    new-array v1, v0, [I

    aput v2, v1, v3

    aput p1, v1, v4

    .line 5
    invoke-virtual {p0, p2, v5, v0, v1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs declared-synchronized V1(I[I)I
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmodule/sound/DU561;->v1:Lo1/n;

    sget v1, Lmodule/sound/DU561;->N1:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lo1/s0;->c(II)I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {v0, v1, v3, p2}, Lo1/n;->d(I[I[I)I

    move-result v0

    const-wide/16 v5, 0x3

    .line 2
    invoke-static {v5, v6}, Lo1/s0;->C(J)V

    .line 3
    aget v1, p2, v4

    const/4 v3, 0x3

    if-le v1, v3, :cond_3

    const/4 v3, 0x2

    add-int/2addr v1, v3

    .line 4
    new-array v5, v1, [I

    .line 5
    aput p1, v5, v4

    .line 6
    array-length v6, p2

    invoke-static {p2, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v4

    :goto_0
    const/16 v7, 0xa

    if-ge v6, v7, :cond_3

    const/16 v7, 0x80

    if-ne p1, v7, :cond_0

    .line 7
    iget-object v7, p0, Lmodule/sound/DU561;->v1:Lo1/n;

    sget v8, Lmodule/sound/DU561;->N1:I

    new-array v9, v2, [I

    invoke-static {p1, v4}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v4

    new-array v10, v3, [I

    aput v2, v10, v4

    aget v11, p2, v2

    aput v11, v10, v2

    invoke-virtual {v7, v8, v9, v10}, Lo1/n;->d(I[I[I)I

    goto :goto_1

    .line 8
    :cond_0
    iget-object v7, p0, Lmodule/sound/DU561;->v1:Lo1/n;

    sget v8, Lmodule/sound/DU561;->N1:I

    new-array v9, v2, [I

    invoke-static {p1, v4}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v4

    new-array v10, v2, [I

    aput v4, v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lo1/n;->d(I[I[I)I

    .line 9
    :goto_1
    new-array v7, v1, [I

    .line 10
    invoke-virtual {p0, p1, v1}, Lmodule/sound/DU561;->P1(II)[I

    move-result-object v7

    move v8, v4

    .line 11
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 12
    aget v9, v7, v8

    and-int/lit16 v9, v9, 0xff

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 13
    :cond_1
    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    .line 14
    monitor-exit p0

    return v0

    :cond_2
    const-wide/16 v7, 0x6

    .line 15
    :try_start_1
    invoke-static {v7, v8}, Lo1/s0;->C(J)V

    .line 16
    iget-object v0, p0, Lmodule/sound/DU561;->v1:Lo1/n;

    sget v7, Lmodule/sound/DU561;->N1:I

    new-array v8, v2, [I

    invoke-static {p1, v4}, Lo1/s0;->c(II)I

    move-result v9

    aput v9, v8, v4

    invoke-virtual {v0, v7, v8, p2}, Lo1/n;->d(I[I[I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 17
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public W0()V
    .locals 11

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->W0()V

    .line 2
    iget-object v0, p0, Lmodule/sound/DU561;->X0:[I

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v1, 0x7f030054

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/DU561;->X0:[I

    .line 4
    :cond_0
    iget-object v0, p0, Lmodule/sound/DU561;->X0:[I

    array-length v0, v0

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    const-wide/16 v1, 0x32

    .line 5
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 7
    invoke-virtual {p0, v3, v2}, Lmodule/sound/DU561;->V1(I[I)I

    const/16 v2, 0x9

    .line 8
    invoke-virtual {p0, v3, v2}, Lmodule/sound/DU561;->P1(II)[I

    move-result-object v2

    const/4 v4, 0x2

    .line 9
    aget v5, v2, v4

    const/4 v6, 0x3

    if-nez v5, :cond_2

    aget v5, v2, v6

    if-ne v5, v4, :cond_2

    const/4 v5, 0x4

    aget v5, v2, v5

    const/16 v7, 0x1e

    if-ne v5, v7, :cond_2

    const/4 v5, 0x5

    aget v2, v2, v5

    if-ne v2, v4, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-ltz v2, :cond_8

    const/16 v0, 0xff

    new-array v5, v0, [I

    move v0, v3

    .line 10
    :cond_3
    iget-object v2, p0, Lmodule/sound/DU561;->X0:[I

    aget v7, v2, v0

    const/16 v8, 0xa5

    if-ne v7, v8, :cond_6

    add-int/lit8 v7, v0, 0x1

    aget v8, v2, v7

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_6

    add-int/lit8 v8, v0, 0x2

    .line 11
    aget v8, v2, v8

    add-int/lit8 v9, v0, 0x3

    .line 12
    aget v9, v2, v9

    add-int/lit8 v10, v0, 0x4

    add-int/2addr v10, v9

    .line 13
    aget v2, v2, v10

    const/16 v10, 0x16

    if-ne v2, v10, :cond_5

    add-int/lit8 v9, v9, 0x5

    move v2, v3

    :goto_3
    if-ge v2, v9, :cond_4

    .line 14
    iget-object v7, p0, Lmodule/sound/DU561;->X0:[I

    add-int/lit8 v10, v0, 0x1

    aget v0, v7, v0

    aput v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v10

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v9, -0x4

    .line 15
    new-array v2, v9, [I

    .line 16
    invoke-static {v5, v6, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    monitor-enter p0

    .line 18
    :try_start_1
    invoke-virtual {p0, v8, v2}, Lmodule/sound/DU561;->V1(I[I)I

    move-result v2

    .line 19
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v2, :cond_7

    const-wide/16 v7, 0xa

    .line 20
    invoke-static {v7, v8}, Lo1/s0;->C(J)V

    move v0, v3

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 21
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move v0, v7

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 22
    :cond_7
    :goto_4
    iget-object v2, p0, Lmodule/sound/DU561;->X0:[I

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 23
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->w0(I)V

    .line 24
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->Z1([I)V

    .line 25
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->f:Z

    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->l(I)V

    .line 26
    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->a(I)V

    .line 27
    sget v0, Ly0/f;->C0:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/DU561;->A1(IZ)V

    .line 28
    iget v0, p0, Lmodule/sound/AudioDevice;->z:I

    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->o(I)V

    .line 29
    iget v0, p0, Lmodule/sound/DU561;->x1:I

    invoke-virtual {p0, v3, v0}, Lmodule/sound/DU561;->e1(II)V

    .line 30
    iget-boolean v0, p0, Lmodule/sound/DU561;->E1:Z

    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->Q1(I)V

    .line 31
    iget v0, p0, Lmodule/sound/DU561;->K1:I

    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->c2(I)V

    .line 32
    iget-object v0, p0, Lmodule/sound/DU561;->J1:[I

    aget v0, v0, v3

    invoke-virtual {p0, v3, v0}, Lmodule/sound/DU561;->d2(II)V

    .line 33
    iget-object v0, p0, Lmodule/sound/DU561;->J1:[I

    aget v0, v0, v1

    invoke-virtual {p0, v1, v0}, Lmodule/sound/DU561;->d2(II)V

    .line 34
    iget-object v0, p0, Lmodule/sound/DU561;->J1:[I

    aget v0, v0, v4

    invoke-virtual {p0, v4, v0}, Lmodule/sound/DU561;->d2(II)V

    .line 35
    iget-object v0, p0, Lmodule/sound/DU561;->J1:[I

    aget v0, v0, v6

    invoke-virtual {p0, v6, v0}, Lmodule/sound/DU561;->d2(II)V

    const v0, 0x10010

    .line 36
    iget-object v2, p0, Lmodule/sound/DU561;->A1:[I

    aget v2, v2, v3

    invoke-virtual {p0, v0, v2}, Lmodule/sound/DU561;->g0(II)V

    const v0, 0x10020

    .line 37
    iget-object v2, p0, Lmodule/sound/DU561;->A1:[I

    aget v2, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/DU561;->g0(II)V

    const/high16 v0, 0x10000

    .line 38
    iget-object v2, p0, Lmodule/sound/DU561;->C1:[I

    aget v4, v2, v3

    aget v2, v2, v1

    invoke-virtual {p0, v0, v4, v2}, Lmodule/sound/DU561;->B0(III)V

    const/high16 v0, 0x20000

    .line 39
    iget-object v2, p0, Lmodule/sound/DU561;->D1:[I

    aget v3, v2, v3

    aget v1, v2, v1

    invoke-virtual {p0, v0, v3, v1}, Lmodule/sound/DU561;->B0(III)V

    return-void

    :cond_8
    move v1, v2

    goto/16 :goto_0
.end method

.method public W1(I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/DU561;->K1(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/DU561;->K1(I)V

    :goto_0
    return-void
.end method

.method public X1([II)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lmodule/sound/DU561;->a2(I)[I

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

.method public varargs Y1(I[I)V
    .locals 11

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge p1, v0, :cond_2

    array-length v0, p2

    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/sound/DU561;->j1:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    aget v3, p2, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    div-int/lit8 v3, p1, 0xa

    add-int/lit16 v3, v3, 0x91

    .line 5
    rem-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0x5

    const/4 v4, 0x3

    add-int/2addr p1, v4

    .line 6
    iget-object v5, p0, Lmodule/sound/DU561;->j1:[I

    aget v5, v5, v0

    const/4 v6, 0x0

    if-nez v5, :cond_1

    add-int/lit8 v5, p1, 0x0

    new-array v7, v2, [I

    aput v6, v7, v6

    aput v6, v7, v1

    .line 7
    invoke-virtual {p0, v3, v4, v5, v7}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    :cond_1
    add-int/lit8 v5, p1, 0x0

    new-array v7, v2, [I

    aput v1, v7, v6

    aput v6, v7, v1

    .line 8
    invoke-virtual {p0, v3, v4, v5, v7}, Lmodule/sound/DU561;->O1(III[I)I

    :goto_0
    add-int/lit8 v5, p1, 0x2

    new-array v7, v2, [I

    .line 9
    aget v8, p2, v6

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v6

    aget v8, p2, v6

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v1

    invoke-virtual {p0, v3, v4, v5, v7}, Lmodule/sound/DU561;->O1(III[I)I

    .line 10
    aget p2, p2, v1

    int-to-double v7, p2

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    div-double/2addr v7, v9

    double-to-int p2, v7

    add-int/lit8 v5, p1, 0x3

    new-array v7, v2, [I

    and-int/lit16 v8, p2, 0xff

    aput v8, v7, v6

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    aput p2, v7, v1

    .line 11
    invoke-virtual {p0, v3, v4, v5, v7}, Lmodule/sound/DU561;->O1(III[I)I

    .line 12
    iget-object p2, p0, Lmodule/sound/DU561;->j1:[I

    aget p2, p2, v0

    int-to-double v7, p2

    const-wide/high16 v9, 0x4070000000000000L    # 256.0

    mul-double/2addr v7, v9

    double-to-int p2, v7

    add-int/lit8 p1, p1, 0x4

    new-array v0, v2, [I

    and-int/lit16 v2, p2, 0xff

    aput v2, v0, v6

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    aput p2, v0, v1

    .line 13
    invoke-virtual {p0, v3, v4, p1, v0}, Lmodule/sound/DU561;->O1(III[I)I

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public Z1([I)V
    .locals 8

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

    const/4 v6, 0x2

    add-int/2addr v5, v6

    aget v5, p1, v5

    const/4 v7, 0x1

    aput v5, v3, v7

    mul-int/2addr v4, v2

    add-int/2addr v4, v7

    aget v4, p1, v4

    aput v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lmodule/sound/DU561;->Y1(I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 11

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
    sget-object v2, Lmodule/sound/DU561$CHANNEL;->b:Lmodule/sound/DU561$CHANNEL;

    iget v2, v2, Lmodule/sound/DU561$CHANNEL;->a:I

    .line 6
    :cond_2
    sget-object v5, Lmodule/sound/DU561$CHANNEL;->b:Lmodule/sound/DU561$CHANNEL;

    iget v5, v5, Lmodule/sound/DU561$CHANNEL;->a:I

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

    move v5, v6

    .line 8
    :cond_4
    iget-boolean v7, p0, Lmodule/sound/AudioDevice;->w:Z

    if-eqz v7, :cond_6

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    const-string v9, "setVoiceSwitch2iis"

    invoke-static {v5, v9, v7}, Lo1/d0;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmodule/sound/DU561;->z1:Landroid/media/AudioManager;

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v8, v5, v6

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v10, v7, v6

    invoke-static {v0, v3, v9, v5, v7}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmodule/sound/DU561;->z1:Landroid/media/AudioManager;

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v8, v3, v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v10, v4, v6

    const-string v5, "setAudioSwitch2iis"

    invoke-static {v0, v1, v5, v3, v4}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lmodule/sound/DU561;->z1:Landroid/media/AudioManager;

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    aput-object v9, v8, v4

    aput-object v0, v8, v3

    const/4 v9, 0x3

    aput-object v0, v8, v9

    new-array v0, v7, [Ljava/lang/Object;

    const/16 v7, 0x8

    .line 13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    const-string v4, ""

    aput-object v4, v0, v3

    aput-object v4, v0, v9

    const-string v3, "setWiredDeviceConnectionState"

    .line 14
    invoke-static {v1, v5, v3, v8, v0}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_6
    :goto_1
    invoke-virtual {p0, v2}, Lmodule/sound/DU561;->G1(I)V

    .line 16
    sget-object v0, Ly0/f;->z0:[I

    aget p1, v0, p1

    if-ltz p1, :cond_7

    const/16 v0, 0x30

    if-ge p1, v0, :cond_7

    .line 17
    sget-object v0, Ly0/f;->w0:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/DU561;->m(II)V

    :cond_7
    return-void
.end method

.method public a2(I)[I
    .locals 6

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->j:I

    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->X(I)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    array-length v1, p1

    .line 4
    iget v2, p0, Lmodule/sound/AudioDevice;->j:I

    iget v3, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v4, v2, v3

    const/4 v5, 0x0

    if-ne v1, v4, :cond_0

    .line 5
    invoke-static {p1, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 6
    invoke-static {p1, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v2, p0, Lmodule/sound/AudioDevice;->j:I

    iget v3, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public b2(II)V
    .locals 3

    const/16 v0, 0x165

    if-eq p1, v0, :cond_1

    const/16 v1, 0x194

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x64

    :goto_1
    const/16 v2, 0x170

    if-ne p1, v2, :cond_2

    mul-int/2addr p2, v1

    .line 1
    invoke-virtual {p0, p2}, Lmodule/sound/DU561;->J1(I)V

    goto :goto_2

    :cond_2
    if-ne p1, v0, :cond_3

    mul-int/2addr p2, v1

    .line 2
    invoke-virtual {p0, p2}, Lmodule/sound/DU561;->L1(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public c1()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c2(I)V
    .locals 4

    const/16 v0, 0xa

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget v1, p0, Lmodule/sound/DU561;->K1:I

    if-eq v1, p1, :cond_0

    .line 3
    iput p1, p0, Lmodule/sound/DU561;->K1:I

    .line 4
    invoke-virtual {p0, p1}, Lmodule/sound/DU561;->M1(I)V

    const/16 v1, 0x41

    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 5
    iget v3, p0, Lmodule/sound/DU561;->K1:I

    aput v3, v2, v0

    invoke-static {v1, v2}, Ly0/h;->s0(I[I)V

    .line 6
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->Y:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lo1/h0;->q(II)V

    .line 7
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->e(I)V

    :cond_0
    return-void
.end method

.method public d1(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/DU561;->E1:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lmodule/sound/DU561;->E1:Z

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/DU561;->Q1(I)V

    .line 4
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->d1(Z)V

    return-void
.end method

.method public d2(II)V
    .locals 9

    if-gez p1, :cond_0

    .line 1
    iget-object v0, p0, Lmodule/sound/DU561;->J1:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/16 v2, 0x12c

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const/16 v3, 0xa

    if-ne p1, v1, :cond_2

    const/16 v4, 0x2710

    goto :goto_1

    :cond_2
    move v4, v3

    .line 2
    :goto_1
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3
    iget-object v2, p0, Lmodule/sound/DU561;->J1:[I

    const/4 v4, 0x2

    aget v5, v2, v4

    const/4 v6, 0x1

    .line 4
    aget v7, v2, v6

    if-eqz p1, :cond_3

    if-eq p1, v6, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, v1, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    aget v8, v2, p1

    if-eq v8, p2, :cond_4

    .line 6
    aput p2, v2, p1

    const/16 v2, 0x42

    new-array v8, v4, [I

    aput p1, v8, v0

    aput p2, v8, v6

    .line 7
    invoke-static {v2, v8}, Ly0/h;->s0(I[I)V

    .line 8
    sget-object v2, Lmodule/sound/AudioDevice$STORE;->Z:Lmodule/sound/AudioDevice$STORE;

    iget-object v8, p0, Lmodule/sound/DU561;->J1:[I

    invoke-virtual {p0, v2, v8}, Lmodule/sound/AudioDevice;->H0(Lmodule/sound/AudioDevice$STORE;[I)V

    :cond_4
    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_6

    .line 9
    iget-object v2, p0, Lmodule/sound/DU561;->J1:[I

    aget v8, v2, v4

    if-nez v8, :cond_5

    aget v2, v2, v6

    if-ne v2, v3, :cond_5

    .line 10
    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->H1(Z)V

    goto :goto_2

    :cond_5
    if-nez v5, :cond_6

    if-ne v7, v3, :cond_6

    .line 11
    invoke-virtual {p0, v6}, Lmodule/sound/DU561;->H1(Z)V

    const-wide/16 v7, 0xa

    .line 12
    invoke-static {v7, v8}, La/i;->a0(J)V

    :cond_6
    :goto_2
    if-nez p1, :cond_7

    .line 13
    invoke-virtual {p0, p2}, Lmodule/sound/DU561;->T1(I)V

    goto :goto_3

    :cond_7
    if-ne p1, v6, :cond_8

    mul-int/2addr p2, v3

    .line 14
    invoke-virtual {p0, v6, p2}, Lmodule/sound/DU561;->I1(II)V

    goto :goto_3

    :cond_8
    if-ne p1, v4, :cond_9

    mul-int/2addr p2, v3

    .line 15
    invoke-virtual {p0, v4, p2}, Lmodule/sound/DU561;->I1(II)V

    goto :goto_3

    :cond_9
    if-ne p1, v1, :cond_a

    .line 16
    invoke-virtual {p0, v0, p2}, Lmodule/sound/DU561;->I1(II)V

    :cond_a
    :goto_3
    return-void
.end method

.method public e1(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget v0, p0, Lmodule/sound/DU561;->x1:I

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    .line 2
    iput p2, p0, Lmodule/sound/DU561;->x1:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p2}, Lmodule/sound/DU561;->R1(I)V

    if-eqz v0, :cond_1

    .line 4
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->e1(II)V

    :cond_1
    return-void
.end method

.method public e2(F)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lmodule/sound/DU561;->g1:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 2
    :goto_0
    iget-object v0, p0, Lmodule/sound/DU561;->g1:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_3

    if-gez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Lmodule/sound/DU561$c;

    invoke-direct {v0, p0}, Lmodule/sound/DU561$c;-><init>(Lmodule/sound/DU561;)V

    .line 5
    iget-object v3, p0, Lmodule/sound/DU561;->g1:[I

    aget p1, v3, p1

    int-to-float p1, p1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr p1, v3

    float-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Lmodule/sound/DU561$c;->a(D)I

    move-result p1

    .line 6
    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->j0(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v0, 0x2

    new-array v3, v0, [I

    and-int/lit16 v4, p1, 0xff

    aput v4, v3, v1

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    aput p1, v3, v2

    const/4 v5, 0x4

    const/4 v6, 0x3

    .line 7
    invoke-virtual {p0, v5, v6, v0, v3}, Lmodule/sound/DU561;->O1(III[I)I

    new-array v0, v0, [I

    aput v4, v0, v1

    aput p1, v0, v2

    .line 8
    invoke-virtual {p0, v5, v6, v6, v0}, Lmodule/sound/DU561;->O1(III[I)I

    .line 9
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public g0(II)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_4

    .line 1
    :sswitch_0
    iget-object v2, p0, Lmodule/sound/DU561;->A1:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    if-eq v4, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v1, 0x194

    .line 2
    aput p2, v2, v3

    goto :goto_5

    .line 3
    :sswitch_1
    iget-object v2, p0, Lmodule/sound/DU561;->A1:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    if-eq v4, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/16 v1, 0x19f

    .line 4
    aput p2, v2, v3

    goto :goto_5

    :sswitch_2
    const v0, 0x20010

    .line 5
    invoke-virtual {p0, v0, p2}, Lmodule/sound/DU561;->g0(II)V

    const v0, 0x20020

    .line 6
    invoke-virtual {p0, v0, p2}, Lmodule/sound/DU561;->g0(II)V

    goto :goto_4

    .line 7
    :sswitch_3
    iget-object v2, p0, Lmodule/sound/DU561;->A1:[I

    aget v3, v2, v0

    if-eq v3, p2, :cond_2

    move v1, v0

    :cond_2
    const/16 v3, 0x165

    .line 8
    aput p2, v2, v0

    move v0, v1

    goto :goto_3

    .line 9
    :sswitch_4
    iget-object v2, p0, Lmodule/sound/DU561;->A1:[I

    aget v3, v2, v1

    if-eq v3, p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    const/16 v3, 0x170

    .line 10
    aput p2, v2, v1

    :goto_3
    move v1, v3

    goto :goto_5

    :sswitch_5
    const v0, 0x10010

    .line 11
    invoke-virtual {p0, v0, p2}, Lmodule/sound/DU561;->g0(II)V

    const v0, 0x10020

    .line 12
    invoke-virtual {p0, v0, p2}, Lmodule/sound/DU561;->g0(II)V

    :goto_4
    const/4 v0, -0x1

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_5
    if-lez v1, :cond_4

    .line 13
    invoke-virtual {p0, v1, p2}, Lmodule/sound/DU561;->b2(II)V

    if-eqz v0, :cond_4

    .line 14
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->g0(II)V

    :cond_4
    return-void

    nop

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

.method public j([I)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->e:Z

    if-nez p1, :cond_0

    return-void

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

    if-eqz v3, :cond_1

    sget-boolean v3, Lu0/b;->j2:Z

    if-eqz v3, :cond_1

    .line 5
    sget-object p1, Ln0/j4;->d:Ln0/c4;

    invoke-virtual {p1}, Ln0/c4;->L2()[I

    move-result-object p1

    .line 6
    aget v0, p1, v0

    const/4 v2, 0x1

    .line 7
    aget v2, p1, v2

    move p1, v0

    .line 8
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    rsub-int/lit8 v3, p1, 0x10

    .line 9
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v1, v2

    .line 10
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 11
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v2, 0x11000

    .line 12
    invoke-virtual {p0, v2, v0}, Lmodule/sound/AudioDevice;->a1(II)V

    const v0, 0x12000

    .line 13
    invoke-virtual {p0, v0, v4}, Lmodule/sound/AudioDevice;->a1(II)V

    const v0, 0x21000

    .line 14
    invoke-virtual {p0, v0, p1}, Lmodule/sound/AudioDevice;->a1(II)V

    const p1, 0x22000

    .line 15
    invoke-virtual {p0, p1, v1}, Lmodule/sound/AudioDevice;->a1(II)V

    const/4 p1, 0x0

    .line 16
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->j([I)V

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
    sget-object p1, Lmodule/sound/DU561$CHANNEL;->b:Lmodule/sound/DU561$CHANNEL;

    iget p1, p1, Lmodule/sound/DU561$CHANNEL;->a:I

    :cond_0
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->V(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->f:Z

    .line 2
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->l(I)V

    .line 3
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->f:Z

    invoke-virtual {p0, p1}, Lmodule/sound/DU561;->W1(I)V

    return-void
.end method

.method public m(II)V
    .locals 7

    if-ltz p1, :cond_5

    const/16 v0, 0x30

    if-ge p1, v0, :cond_5

    .line 1
    sget v0, Lu0/b;->D:I

    if-ltz v0, :cond_5

    const/16 v1, 0x14

    if-ge v0, v1, :cond_5

    .line 2
    sget-object v1, Ly0/f;->z0:[I

    aget v0, v1, v0

    if-ne v0, p1, :cond_5

    const/16 p1, 0xa

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, p1}, Lo1/o0;->a(III)I

    move-result p1

    const/16 p2, 0x8

    if-le p1, p2, :cond_0

    move p1, p2

    .line 4
    :cond_0
    iget-object v1, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    sget v2, Lu0/b;->D:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 5
    sget-object v1, Lmodule/sound/DU561$CHANNEL;->b:Lmodule/sound/DU561$CHANNEL;

    iget v1, v1, Lmodule/sound/DU561$CHANNEL;->a:I

    .line 6
    :cond_1
    monitor-enter p0

    .line 7
    :try_start_0
    sget-object v2, Lmodule/sound/DU561$CHANNEL;->b:Lmodule/sound/DU561$CHANNEL;

    iget v2, v2, Lmodule/sound/DU561$CHANNEL;->a:I

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-ne v1, v2, :cond_2

    const/16 p2, 0xc

    new-array v1, v5, [I

    add-int/lit8 p1, p1, 0x28

    aput p1, v1, v0

    aput v0, v1, v4

    .line 8
    invoke-virtual {p0, v3, v6, p2, v1}, Lmodule/sound/DU561;->O1(III[I)I

    const/16 p2, 0xd

    new-array v1, v5, [I

    aput p1, v1, v0

    aput v0, v1, v4

    .line 9
    invoke-virtual {p0, v3, v6, p2, v1}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    .line 10
    :cond_2
    sget-object v2, Lmodule/sound/DU561$CHANNEL;->c:Lmodule/sound/DU561$CHANNEL;

    iget v2, v2, Lmodule/sound/DU561$CHANNEL;->a:I

    if-ne v1, v2, :cond_3

    new-array v1, v5, [I

    add-int/lit8 p1, p1, 0x32

    aput p1, v1, v0

    aput v0, v1, v4

    .line 11
    invoke-virtual {p0, v6, v6, p2, v1}, Lmodule/sound/DU561;->O1(III[I)I

    const/16 p2, 0x9

    new-array v1, v5, [I

    aput p1, v1, v0

    aput v0, v1, v4

    .line 12
    invoke-virtual {p0, v6, v6, p2, v1}, Lmodule/sound/DU561;->O1(III[I)I

    goto :goto_0

    .line 13
    :cond_3
    sget-object p2, Lmodule/sound/DU561$CHANNEL;->d:Lmodule/sound/DU561$CHANNEL;

    iget p2, p2, Lmodule/sound/DU561$CHANNEL;->a:I

    if-ne v1, p2, :cond_4

    new-array p2, v5, [I

    add-int/lit8 p1, p1, 0x27

    aput p1, p2, v0

    aput v0, p2, v4

    .line 14
    invoke-virtual {p0, v6, v6, v3, p2}, Lmodule/sound/DU561;->O1(III[I)I

    const/4 p2, 0x7

    new-array v1, v5, [I

    aput p1, v1, v0

    aput v0, v1, v4

    .line 15
    invoke-virtual {p0, v6, v6, p2, v1}, Lmodule/sound/DU561;->O1(III[I)I

    .line 16
    :cond_4
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public m0()V
    .locals 6

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->m0()V

    .line 2
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->f:Lmodule/sound/AudioDevice$STORE;

    iget-object v1, p0, Lmodule/sound/DU561;->B1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Z(Lmodule/sound/AudioDevice$STORE;[I)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/DU561;->B1:[I

    .line 3
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->Z:Lmodule/sound/AudioDevice$STORE;

    iget-object v1, p0, Lmodule/sound/DU561;->J1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Z(Lmodule/sound/AudioDevice$STORE;[I)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/DU561;->J1:[I

    .line 4
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->Y:Lmodule/sound/AudioDevice$STORE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/DU561;->K1:I

    .line 5
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->X:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmodule/sound/DU561;->E1:Z

    .line 6
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->c:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->u:Z

    .line 7
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->l:Lmodule/sound/AudioDevice$STORE;

    const/16 v3, 0xc8

    invoke-virtual {p0, v0, v3}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/DU561;->x1:I

    .line 8
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->U:Lmodule/sound/AudioDevice$STORE;

    const/16 v4, 0x28

    invoke-virtual {p0, v0, v4}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/DU561;->w1:I

    .line 9
    iget-object v0, p0, Lmodule/sound/DU561;->C1:[I

    sget-object v4, Lmodule/sound/AudioDevice$STORE;->q:Lmodule/sound/AudioDevice$STORE;

    const/16 v5, 0x1e

    invoke-virtual {p0, v4, v5}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v4

    aput v4, v0, v1

    .line 10
    iget-object v0, p0, Lmodule/sound/DU561;->C1:[I

    sget-object v4, Lmodule/sound/AudioDevice$STORE;->p:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v4, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v4

    aput v4, v0, v2

    .line 11
    iget-object v0, p0, Lmodule/sound/DU561;->D1:[I

    sget-object v4, Lmodule/sound/AudioDevice$STORE;->s:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v4, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v4

    aput v4, v0, v1

    .line 12
    iget-object v0, p0, Lmodule/sound/DU561;->D1:[I

    sget-object v4, Lmodule/sound/AudioDevice$STORE;->r:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v4, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v4

    aput v4, v0, v2

    .line 13
    iget-object v0, p0, Lmodule/sound/DU561;->A1:[I

    sget-object v4, Lmodule/sound/AudioDevice$STORE;->h:Lmodule/sound/AudioDevice$STORE;

    const/16 v5, 0x14

    invoke-virtual {p0, v4, v5}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v4

    aput v4, v0, v1

    .line 14
    iget-object v0, p0, Lmodule/sound/DU561;->A1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->i:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v1, v3}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v2

    .line 15
    iget-object v0, p0, Lmodule/sound/DU561;->A1:[I

    const/4 v1, 0x2

    sget-object v2, Lmodule/sound/AudioDevice$STORE;->j:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v2, v5}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v2

    aput v2, v0, v1

    .line 16
    iget-object v0, p0, Lmodule/sound/DU561;->A1:[I

    const/4 v1, 0x3

    sget-object v2, Lmodule/sound/AudioDevice$STORE;->k:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v2, v3}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v2

    aput v2, v0, v1

    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/DU561;->S1(I)V

    .line 2
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->o(I)V

    return-void
.end method

.method public p0()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public q0()I
    .locals 1

    const/16 v0, -0x2bc

    return v0
.end method

.method public r0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/sound/DU561;->f1:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iput p1, p0, Lmodule/sound/AudioDevice;->h:I

    .line 3
    iget-object v2, p0, Lmodule/sound/DU561;->f1:[I

    invoke-virtual {p0, p1, v2}, Lmodule/sound/AudioDevice;->x1(I[I)I

    move-result v2

    if-eqz p1, :cond_0

    .line 4
    iput-boolean v1, p0, Lmodule/sound/DU561;->F1:Z

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v0, p0, Lmodule/sound/DU561;->F1:Z

    .line 6
    :goto_0
    iget-boolean p1, p0, Lmodule/sound/DU561;->F1:Z

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lmodule/sound/DU561;->G1:Z

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    sget p1, Lu0/b;->D:I

    invoke-virtual {p0, p1}, Lmodule/sound/DU561;->j0(I)I

    move-result p1

    if-eq p1, v1, :cond_3

    iget-boolean p1, p0, Lmodule/sound/DU561;->G1:Z

    if-eqz p1, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lmodule/sound/DU561;->N1()V

    .line 8
    :cond_3
    iget-boolean p1, p0, Lmodule/sound/DU561;->F1:Z

    if-eqz p1, :cond_4

    int-to-float p1, v2

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 9
    invoke-virtual {p0, v0, v1}, Lmodule/sound/DU561;->U1(D)V

    :cond_4
    return-void
.end method

.method public u1()I
    .locals 1

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v0

    return v0
.end method

.method public w0(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lmodule/sound/DU561;->a2(I)[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {p0, v1, p1}, Lmodule/sound/DU561;->X1([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p1, p0, Lmodule/sound/AudioDevice;->j:I

    new-array v1, p1, [I

    .line 6
    new-array v3, p1, [I

    .line 7
    new-array p1, p1, [I

    .line 8
    :goto_0
    iget v4, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v2, v4, :cond_1

    .line 9
    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v5, v2, v4

    aget v5, v0, v5

    aput v5, v3, v2

    mul-int v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    .line 10
    aget v5, v0, v5

    aput v5, v1, v2

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    .line 11
    aget v4, v0, v4

    aput v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v1, v3, p1, v4, p0}, Ly0/h;->H([I[I[IILmodule/sound/AudioDevice;)V

    .line 13
    iget-object p1, p0, Lmodule/sound/DU561;->L1:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 14
    new-instance v1, Lmodule/sound/DU561$b;

    invoke-direct {v1, p0, v0}, Lmodule/sound/DU561$b;-><init>(Lmodule/sound/DU561;[I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, v0}, Lmodule/sound/DU561;->Z1([I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public z1(IF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->z1(IF)V

    .line 2
    invoke-virtual {p0, p2}, Lmodule/sound/DU561;->e2(F)V

    return-void
.end method
