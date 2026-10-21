.class public Ln0/m0;
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
    new-instance v0, Ln0/m0$a;

    invoke-direct {v0, p0}, Ln0/m0$a;-><init>(Ln0/m0;)V

    iput-object v0, p0, Ln0/m0;->z:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/m0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

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

    const/4 v1, 0x5

    const/16 v2, 0x16

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 9
    aput v2, v0, v1

    :goto_0
    return-void
.end method

.method public S2()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Li1/w;->G:Z

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Li1/w;->H:J

    .line 3
    invoke-super {p0}, Ln0/c4;->S2()V

    return-void
.end method

.method public X2()V
    .locals 2

    const-string v0, "persist.sys.syu.audio"

    const-string v1, "32107"

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lmodule/sound/C32107;->z1:I

    add-int/lit8 v0, v0, 0x3

    sput v0, Lmodule/sound/C32107;->z1:I

    .line 4
    :cond_0
    invoke-super {p0}, Ln0/c4;->X2()V

    return-void
.end method

.method public b3()V
    .locals 6

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_0

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v4, 0x7

    const/16 v5, 0x16

    aput v5, v0, v4

    .line 4
    sput v2, Lo0/e;->k0:I

    const/4 v2, 0x5

    .line 5
    invoke-static {v2}, Lo0/g;->y(I)V

    .line 6
    aput v3, v0, v1

    .line 7
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 9
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "FAD"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x39

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 4
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/m0;->z:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
