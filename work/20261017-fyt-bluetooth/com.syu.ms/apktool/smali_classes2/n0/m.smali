.class public Ln0/m;
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
    new-instance v0, Ln0/m$c;

    invoke-direct {v0, p0}, Ln0/m$c;-><init>(Ln0/m;)V

    iput-object v0, p0, Ln0/m;->z:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/m;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public I3(Le1/c;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->I3(Le1/c;)V

    .line 2
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 3
    instance-of v0, p1, Le1/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p1, v0, v1}, Le1/c;->v(II)V

    :cond_0
    return-void
.end method

.method public P2()V
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const-string v1, "/dev/ttyS0"

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    .line 5
    invoke-static {v1}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v2, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v2}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lz/k;->c()V

    .line 8
    invoke-static {v1}, Lz/k;->f(Ljava/lang/String;)V

    .line 9
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x4

    const/4 v2, 0x7

    aget v3, v0, v2

    aput v3, v0, v1

    .line 10
    sget-object v0, Lu0/b;->t4:[I

    const/16 v1, 0x16

    aput v1, v0, v2

    :goto_0
    const/16 v0, 0x8

    .line 11
    sput v0, Lo0/e;->l0:I

    const/16 v0, 0x9

    .line 12
    sput v0, Lo0/e;->m0:I

    return-void
.end method

.method public S2()V
    .locals 2

    .line 1
    sget-object v0, Lg/e;->a:Lg/g;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lg/j;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lg/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/j;->a0(I)V

    .line 3
    :cond_0
    invoke-super {p0}, Ln0/c4;->S2()V

    const/16 v0, 0x8

    .line 4
    sput v0, Lo0/e;->l0:I

    const/16 v0, 0x9

    .line 5
    sput v0, Lo0/e;->m0:I

    return-void
.end method

.method public X2()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln0/c4;->X2()V

    .line 2
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    new-instance v1, Ln0/m$b;

    invoke-direct {v1, p0}, Ln0/m$b;-><init>(Ln0/m;)V

    const/16 v2, 0x210

    invoke-virtual {v0, v2, v1}, Lc/e;->i(ILc/d;)V

    return-void
.end method

.method public b3()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lu0/b;->k2:Z

    .line 2
    invoke-static {}, Lg/f;->l()V

    .line 3
    invoke-static {}, Lg/e;->g()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 4
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x7

    const/16 v2, 0x16

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
    const/16 v0, 0x8

    .line 7
    sput v0, Lo0/e;->l0:I

    const/16 v1, 0x9

    .line 8
    sput v1, Lo0/e;->m0:I

    .line 9
    invoke-static {}, Lo1/q0;->v()Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    invoke-static {}, Lg/e;->e()I

    move-result v1

    if-ne v1, v0, :cond_2

    const/16 v0, 0x64

    .line 11
    sput v0, Lu0/b;->P2:I

    .line 12
    sput v0, Lu0/b;->R2:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 13
    sput v0, Lu0/b;->P2:I

    .line 14
    sput v0, Lu0/b;->R2:I

    :cond_3
    :goto_1
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "SBD"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x13

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lu0/b;->V3:Z

    .line 4
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 5
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/m;->z:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public x3()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/c4;->x3()V

    .line 2
    new-instance v0, Ln0/m$a;

    invoke-direct {v0, p0}, Ln0/m$a;-><init>(Ln0/m;)V

    sput-object v0, Lu0/b;->Y2:Lo1/o;

    return-void
.end method
