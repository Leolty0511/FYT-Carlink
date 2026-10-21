.class public Ln0/h2;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public A:Landroid/media/SoundPool;

.field public B:I

.field public C:Lo1/p;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln0/h2;->z:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln0/h2;->A:Landroid/media/SoundPool;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ln0/h2;->B:I

    .line 5
    new-instance v0, Ln0/h2$a;

    invoke-direct {v0, p0}, Ln0/h2$a;-><init>(Ln0/h2;)V

    iput-object v0, p0, Ln0/h2;->C:Lo1/p;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    return-void
.end method

.method public M2()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->M2()V

    const-string v0, "com.fvision.camera.service.ForegroundService"

    const-string v1, "com.fvision.camera"

    .line 2
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public P2()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    const-string v0, "/dev/ttyS0"

    .line 5
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v1, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v1}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lz/k;->c()V

    .line 8
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 9
    invoke-static {}, Ly0/b;->r()V

    .line 10
    :cond_1
    :goto_0
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lh0/c;->l0:Z

    :cond_2
    return-void
.end method

.method public S2()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/c4;->S2()V

    return-void
.end method

.method public S3()V
    .locals 4

    .line 1
    invoke-static {}, Lr0/a;->X2()Lr0/a;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/16 v2, 0x17

    const/16 v3, 0x195

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x18

    const/16 v3, 0x194

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x1e

    const/16 v3, 0x5b

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lr0/a;->d3(Landroid/util/SparseIntArray;Z)V

    .line 7
    iget-object v1, p0, Ln0/h2;->C:Lo1/p;

    invoke-virtual {v0, v1}, Lr0/a;->e3(Lo1/p;)V

    return-void
.end method

.method public X2()V
    .locals 8

    const/4 v0, 0x1

    .line 1
    sput v0, Lu0/b;->k1:I

    .line 2
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Ln0/h2;->A:Landroid/media/SoundPool;

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    const v4, 0x7f030052

    invoke-virtual {v1, v3, v4, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Ln0/h2;->B:I

    .line 4
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    new-instance v3, Ln0/h2$b;

    invoke-direct {v3, p0}, Ln0/h2$b;-><init>(Ln0/h2;)V

    iput-object v3, v1, Lu0/i;->p:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p0}, Ln0/h2;->S3()V

    const-string v1, "persist.gesture.switch"

    const-string v3, "1"

    .line 6
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "persist.sys.syu.audio"

    const-string v3, "32107"

    .line 7
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x25

    new-array v4, v4, [I

    .line 9
    fill-array-data v4, :array_0

    const/16 v5, 0x17

    .line 10
    sput v5, Lmodule/sound/C32107;->z1:I

    .line 11
    sput v2, Lmodule/sound/C32107;->A1:I

    .line 12
    invoke-static {v4}, Lmodule/sound/AudioDevice;->Q0([I)V

    .line 13
    :cond_0
    invoke-super {p0}, Ln0/c4;->X2()V

    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    const/16 v4, 0xa

    const/16 v5, 0x9

    if-eqz v2, :cond_1

    const/16 v1, 0x30

    new-array v2, v1, [I

    .line 15
    fill-array-data v2, :array_1

    new-array v6, v1, [I

    .line 16
    fill-array-data v6, :array_2

    new-array v1, v1, [I

    .line 17
    fill-array-data v1, :array_3

    .line 18
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v7

    invoke-virtual {v7, v3, v2}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 19
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmodule/sound/AudioDevice;->I(I)V

    .line 20
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 21
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v2

    invoke-virtual {v2, v4}, Lmodule/sound/AudioDevice;->I(I)V

    .line 22
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    goto :goto_0

    :cond_1
    const-string v2, "7602"

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x27

    new-array v2, v1, [I

    .line 24
    fill-array-data v2, :array_4

    new-array v6, v1, [I

    .line 25
    fill-array-data v6, :array_5

    new-array v1, v1, [I

    .line 26
    fill-array-data v1, :array_6

    .line 27
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v7

    invoke-virtual {v7, v5, v1}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 28
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 29
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 30
    :cond_2
    :goto_0
    sput-boolean v0, Lu0/b;->h2:Z

    return-void

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
        0x1e
        0xc
        0xe
        0x32
        0xd
        0xe
        0x50
        0xe
        0xe
        0x7d
        0xf
        0xe
        0xc8
        0xe
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
        0xf
        0xe
        0x7d0
        0xe
        0xe
        0xbb8
        0xf
        0xe
        0x1388
        0xe
        0xe
        0x1f40
        0xd
        0xe
        0x2ee0
        0xd
        0xe
        0x3e80
        0xc
        0xe
    .end array-data

    :array_2
    .array-data 4
        0x1e
        0x7
        0xe
        0x32
        0x6
        0xe
        0x50
        0x6
        0xe
        0x7d
        0x6
        0xe
        0xc8
        0x9
        0xe
        0x140
        0xb
        0xe
        0x1f4
        0xf
        0xe
        0x320
        0x10
        0xe
        0x3e8
        0x10
        0xe
        0x4e2
        0x10
        0xe
        0x7d0
        0x11
        0xe
        0xbb8
        0xf
        0xe
        0x1388
        0xe
        0xe
        0x1f40
        0x9
        0xe
        0x2ee0
        0x9
        0xe
        0x3e80
        0x9
        0xe
    .end array-data

    :array_3
    .array-data 4
        0x1e
        0x14
        0xe
        0x32
        0x13
        0xe
        0x50
        0x12
        0xe
        0x7d
        0x11
        0xe
        0xc8
        0xf
        0xe
        0x140
        0xd
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

    :array_4
    .array-data 4
        0x32
        0xb
        0xe
        0x50
        0xd
        0xe
        0x7d
        0xf
        0xe
        0xc8
        0x10
        0xe
        0x1f4
        0xf
        0xe
        0x320
        0xf
        0xe
        0x3e8
        0xf
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

    :array_5
    .array-data 4
        0x32
        0x15
        0xe
        0x50
        0x13
        0xe
        0x7d
        0x11
        0xe
        0xc8
        0xe
        0xe
        0x1f4
        0xd
        0xe
        0x320
        0xc
        0xe
        0x3e8
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

    :array_6
    .array-data 4
        0x32
        0x6
        0xe
        0x50
        0x6
        0xe
        0x7d
        0x6
        0xe
        0xc8
        0x9
        0xe
        0x1f4
        0xe
        0xe
        0x320
        0xf
        0xe
        0x3e8
        0xf
        0xe
        0x7d0
        0x10
        0xe
        0xbb8
        0xf
        0xe
        0x1388
        0xe
        0xe
        0x1f40
        0xb
        0xe
        0x2ee0
        0xb
        0xe
        0x3e80
        0xb
        0xe
    .end array-data
.end method

.method public b3()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->l()V

    const/4 v0, 0x1

    .line 2
    sput v0, Lu0/b;->k1:I

    const-string v1, "persist.gesture.switch"

    const-string v2, "1"

    .line 3
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lg/e;->g()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln0/c4;->n:I

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ln0/c4;->o:I

    const-string v0, "HBS"

    .line 3
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x86

    .line 4
    sput v0, Lm1/a;->d:I

    .line 5
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 6
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    .line 7
    sput v0, Lu0/b;->P2:I

    .line 8
    sput v0, Lu0/b;->R2:I

    :cond_0
    return-void
.end method
