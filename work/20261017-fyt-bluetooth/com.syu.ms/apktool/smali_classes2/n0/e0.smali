.class public Ln0/e0;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln0/e0;->z:I

    .line 3
    new-instance v0, Ln0/e0$c;

    invoke-direct {v0, p0}, Ln0/e0$c;-><init>(Ln0/e0;)V

    iput-object v0, p0, Ln0/e0;->A:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic S3(Ln0/e0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln0/e0;->T3()V

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/e0;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    const-string v0, "sys.fyt.bluetooth_type"

    const-string v1, "0"

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    instance-of v1, p1, Lmodule/sound/C32107;

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_0

    invoke-virtual {p1, v3}, Lmodule/sound/AudioDevice;->M0([I)V

    const/4 v3, 0x6

    .line 6
    sget-object v4, Lmodule/sound/C32107$CHANNEL;->f:Lmodule/sound/C32107$CHANNEL;

    iget v4, v4, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v3, v4}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_2
    const/4 v3, 0x3

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    .line 7
    instance-of v1, p1, Lmodule/sound/C32107S;

    if-eqz v1, :cond_4

    .line 8
    :cond_3
    sget-object v0, Lmodule/sound/C32107$CHANNEL;->c:Lmodule/sound/C32107$CHANNEL;

    iget v1, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 9
    iget v0, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v3, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    if-eqz v0, :cond_5

    .line 10
    instance-of v0, p1, Lmodule/sound/a;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 12
    invoke-virtual {p1, v3, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    .line 13
    :cond_5
    instance-of v0, p1, Lmodule/sound/C8288;

    if-eqz v0, :cond_6

    const/16 p1, 0x25

    new-array p1, p1, [I

    .line 14
    fill-array-data p1, :array_1

    .line 15
    invoke-static {p1}, Lmodule/sound/AudioDevice;->Q0([I)V

    goto :goto_2

    .line 16
    :cond_6
    instance-of v0, p1, Lmodule/sound/C7604;

    if-eqz v0, :cond_7

    .line 17
    sget-object v0, Lmodule/sound/C7604$CHANNEL;->d:Lmodule/sound/C7604$CHANNEL;

    iget v0, v0, Lmodule/sound/C7604$CHANNEL;->a:I

    invoke-virtual {p1, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_7
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x90
        0xb
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
        0x9f
        0xa3
        0xa7
        0xab
        0xad
        0xb0
        0xb2
        0xb4
        0xb6
        0xb8
        0xba
        0xbc
        0xbd
        0xbe
        0xbf
        0xc0
        0xc1
        0xc2
    .end array-data
.end method

.method public M2()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->M2()V

    const-string v0, "com.etrovision.emaaservice"

    const-string v1, "com.etrovision.emaaservice.service.EmaaService"

    .line 2
    invoke-static {v0, v1}, Lo1/u;->F0(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 9
    invoke-static {}, Lo1/q0;->v()Z

    .line 10
    :goto_0
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 v0, 0x43

    .line 12
    sput v0, Lu0/b;->P2:I

    .line 13
    sput v0, Lu0/b;->R2:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 14
    sput v0, Lu0/b;->P2:I

    .line 15
    sput v0, Lu0/b;->R2:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final T3()V
    .locals 4

    const/16 v0, 0x34

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    sget-object v1, Ly0/b;->e:[I

    const/4 v2, 0x0

    const/16 v3, 0xff

    aput v3, v1, v2

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x33

    if-gt v1, v2, :cond_0

    .line 3
    sget-object v2, Ly0/b;->e:[I

    aget v3, v0, v1

    add-int/lit16 v3, v3, 0x80

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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
.end method

.method public U2()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lu0/b;->V2:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lu0/b;->W2:[I

    .line 3
    invoke-super {p0}, Ln0/c4;->U2()V

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x32
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x19
        0x4b
        0x64
    .end array-data
.end method

.method public X2()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lw0/d;->R:I

    const/4 v0, 0x1

    .line 2
    sput v0, Lw0/d;->S:I

    .line 3
    invoke-super {p0}, Ln0/c4;->X2()V

    return-void
.end method

.method public b3()V
    .locals 5

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 3
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x8

    const/16 v3, 0x16

    const/4 v4, 0x7

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lu0/b;->t4:[I

    const/16 v2, 0x15

    aput v2, v0, v4

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lu0/b;->t4:[I

    aput v3, v0, v4

    .line 7
    :goto_0
    sget-object v0, Lu0/b;->t4:[I

    const/16 v2, 0x18

    aput v2, v0, v1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 9
    sget-object v0, Lu0/b;->t4:[I

    aput v3, v0, v4

    :cond_2
    :goto_1
    const/16 v0, 0x4b00

    const/4 v1, 0x5

    const-string v2, "/dev/ttyS1"

    .line 10
    invoke-static {v2, v0, v1}, Lz/k;->k(Ljava/lang/String;II)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 12
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    :cond_4
    :goto_2
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "AYI"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x31

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/16 v1, 0x8

    const/16 v2, 0x15

    aput v2, v0, v1

    .line 4
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 5
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/e0;->A:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public x3()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln0/c4;->x3()V

    .line 2
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    new-instance v1, Ln0/e0$a;

    invoke-direct {v1, p0}, Ln0/e0$a;-><init>(Ln0/e0;)V

    const/16 v2, 0x210

    invoke-virtual {v0, v2, v1}, Lc/e;->j(ILc/d;)V

    .line 3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    new-instance v1, Ln0/e0$b;

    invoke-direct {v1, p0}, Ln0/e0$b;-><init>(Ln0/e0;)V

    const/16 v2, 0x21b

    invoke-virtual {v0, v2, v1}, Lc/e;->i(ILc/d;)V

    return-void
.end method
