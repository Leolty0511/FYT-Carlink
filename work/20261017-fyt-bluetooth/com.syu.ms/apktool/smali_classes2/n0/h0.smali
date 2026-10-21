.class public Ln0/h0;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln0/h0;->B:I

    .line 3
    new-instance v0, Ln0/h0$b;

    invoke-direct {v0, p0}, Ln0/h0$b;-><init>(Ln0/h0;)V

    iput-object v0, p0, Ln0/h0;->C:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic S3(Ln0/h0;)I
    .locals 0

    .line 1
    iget p0, p0, Ln0/h0;->B:I

    return p0
.end method

.method public static synthetic T3(Ln0/h0;I)I
    .locals 0

    .line 1
    iput p1, p0, Ln0/h0;->B:I

    return p1
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/h0;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget v0, p0, Ln0/h0;->z:I

    sput v0, Ly0/b;->h:I

    .line 4
    iget v0, p0, Ln0/h0;->A:I

    sput v0, Ly0/b;->i:I

    return-void
.end method

.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    .line 2
    instance-of v0, p1, Lmodule/sound/C32107;

    const/16 v1, 0xe

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lmodule/sound/C32107$CHANNEL;->f:Lmodule/sound/C32107$CHANNEL;

    iget v0, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lmodule/sound/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_1
    :goto_0
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

    :goto_0
    return-void
.end method

.method public final U3()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    .line 2
    new-instance v1, Ln0/h0$a;

    invoke-direct {v1, p0, v0}, Ln0/h0$a;-><init>(Ln0/h0;I)V

    invoke-static {v1}, Ln0/k4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Z2()V
    .locals 0

    .line 1
    invoke-static {}, Lg/f;->j()V

    return-void
.end method

.method public a3()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->k()V

    .line 2
    sget v0, Le1/a;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x4

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method public b3()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lu0/b;->k2:Z

    .line 2
    invoke-static {}, Lg/f;->l()V

    .line 3
    invoke-virtual {p0}, Ln0/h0;->U3()V

    .line 4
    invoke-static {}, Lg/e;->g()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v0, :cond_2

    .line 5
    sget v0, Ly0/b;->h:I

    iput v0, p0, Ln0/h0;->z:I

    const/16 v0, 0x8

    .line 6
    sput v0, Ly0/b;->h:I

    .line 7
    sget v0, Ly0/b;->i:I

    iput v0, p0, Ln0/h0;->A:I

    const/16 v0, 0xa

    .line 8
    sput v0, Ly0/b;->i:I

    .line 9
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0xb

    const/4 v3, 0x5

    if-eq v0, v1, :cond_0

    .line 10
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 11
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 12
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 13
    :cond_0
    sget-object v0, Lu0/b;->t4:[I

    const/16 v1, 0x18

    aput v1, v0, v3

    .line 14
    :cond_1
    sget-object v0, Lu0/b;->u4:[I

    const/4 v1, 0x4

    aput v1, v0, v3

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 16
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v3, 0x6

    aput v3, v0, v1

    .line 17
    sget-object v0, Ly0/d;->b:[I

    aput v3, v0, v2

    :cond_3
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 4

    const-string v0, "FY"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 2
    sput v0, Lh0/c;->j0:I

    const/16 v0, 0x34

    .line 3
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x0

    .line 4
    sput v0, Lu0/b;->x0:I

    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lu0/b;->V3:Z

    .line 6
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 7
    sget-object v2, Ly0/g;->a:Lo1/y;

    iget-object v3, p0, Ln0/h0;->C:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sput v1, Lo1/u;->a:I

    const/16 v0, 0x1f4

    .line 9
    sput v0, Ly0/f;->o:I

    return-void
.end method
