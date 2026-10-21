.class public Ln0/e2;
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
    iput v0, p0, Ln0/e2;->z:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ln0/e2;->A:I

    iput v0, p0, Ln0/e2;->B:I

    .line 4
    new-instance v0, Ln0/e2$a;

    invoke-direct {v0, p0}, Ln0/e2$a;-><init>(Ln0/e2;)V

    iput-object v0, p0, Ln0/e2;->C:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Ln0/e2;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Ln0/e2;->C:Ljava/lang/Runnable;

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

.method public b3()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "MWS"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x83

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 4
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    .line 5
    sput v0, Lu0/b;->P2:I

    .line 6
    sput v0, Lu0/b;->R2:I

    .line 7
    :cond_0
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Ln0/e2;->C:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Ln0/e2;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
