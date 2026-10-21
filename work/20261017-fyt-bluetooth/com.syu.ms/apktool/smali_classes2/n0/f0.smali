.class public Ln0/f0;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    .line 2
    new-instance v0, Ln0/f0$b;

    invoke-direct {v0, p0}, Ln0/f0$b;-><init>(Ln0/f0;)V

    iput-object v0, p0, Ln0/f0;->z:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic S3(Ln0/f0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln0/f0;->T3()V

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/f0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    .line 2
    instance-of v0, p1, Lmodule/sound/C32107;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 3
    sget-object v1, Lmodule/sound/C32107$CHANNEL;->d:Lmodule/sound/C32107$CHANNEL;

    iget v1, v1, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v0, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_0
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
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x7

    const/16 v2, 0x16

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 9
    aput v2, v0, v1

    :goto_0
    return-void
.end method

.method public final T3()V
    .locals 5

    const/16 v0, 0x34

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    sget-object v1, Ly0/b;->e:[I

    const/16 v2, 0xff

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x33

    if-gt v1, v2, :cond_0

    .line 3
    sget-object v2, Ly0/b;->e:[I

    aget v4, v0, v1

    add-int/lit16 v4, v4, 0x80

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_1

    .line 5
    sget-object v2, Ly0/b;->d:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0x21
        0x20
        0x1e
        0x1c
        0x1b
        0x1a
        0x19
        0x17
        0x13
        0x11
        0xf
        0xe
        0xd
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
        -0x1
        -0x2
        -0x3
        -0x4
        -0x5
        -0x6
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xaf
        0xab
        0xa7
        0xa3
        0x9f
        0x9c
        0x99
        0x96
        0x93
        0x91
        0x8f
        0x8d
        0x8b
        0x8a
        0x89
        0x88
        0x87
        0x86
        0x85
        0x84
        0x83
        0x82
        0x81
        0x80
        0x7f
        0x7e
        0x7d
        0x7c
        0x7b
        0x7a
        0x79
        0x78
        0x77
        0x76
        0x75
        0x74
    .end array-data
.end method

.method public b3()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x7

    const/16 v2, 0x16

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 4
    aput v2, v0, v1

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
    .locals 4

    const-string v0, "PSTAR"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x32

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lu0/b;->V3:Z

    .line 4
    sput v0, Ly0/f;->J0:I

    .line 5
    sput v0, Le/b;->b:I

    .line 6
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 7
    sget-object v1, Ly0/g;->a:Lo1/y;

    iget-object v2, p0, Ln0/f0;->z:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sput v0, Lw0/d;->S:I

    .line 9
    sput v3, Lw0/d;->R:I

    .line 10
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.vietmap.assistant"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x210

    new-instance v2, Ln0/f0$a;

    invoke-direct {v2, p0}, Ln0/f0$a;-><init>(Ln0/f0;)V

    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    :cond_0
    return-void
.end method
