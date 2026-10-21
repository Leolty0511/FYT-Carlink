.class public Ln0/a;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln0/a;->z:I

    return-void
.end method


# virtual methods
.method public L3()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lu0/b;->h2:Z

    const-string v0, "NOR"

    .line 2
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const v0, 0xabcdef2

    .line 3
    sput v0, Lm1/a;->d:I

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

    :cond_1
    :goto_0
    return-void
.end method

.method public S2()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/c4;->S2()V

    return-void
.end method

.method public final S3()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    .line 2
    new-instance v1, Ln0/a$a;

    invoke-direct {v1, p0, v0}, Ln0/a$a;-><init>(Ln0/a;I)V

    invoke-static {v1}, Ln0/k4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public X2()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/c4;->X2()V

    return-void
.end method

.method public Z2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln0/a;->S3()V

    .line 2
    invoke-static {}, Lg/f;->j()V

    return-void
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

    :cond_0
    return-void
.end method

.method public j3()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 2
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    .line 3
    sput v0, Lu0/b;->P2:I

    .line 4
    sput v0, Lu0/b;->R2:I

    :cond_0
    return-void
.end method
