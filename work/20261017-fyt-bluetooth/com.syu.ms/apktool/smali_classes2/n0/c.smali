.class public Ln0/c;
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
    new-instance v0, Ln0/c$b;

    invoke-direct {v0, p0}, Ln0/c$b;-><init>(Ln0/c;)V

    iput-object v0, p0, Ln0/c;->z:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/c;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P2()V
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const-string v1, "/dev/ttyS0"

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v2, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v4

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
    sget-object v0, Lu0/b;->t4:[I

    aput v4, v0, v4

    .line 10
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x4

    const/4 v2, 0x7

    aget v2, v0, v2

    aput v2, v0, v1

    .line 11
    sput v3, Lo0/e;->g:I

    .line 12
    :goto_0
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    sput v3, Lu0/b;->P2:I

    .line 14
    sput v3, Lu0/b;->R2:I

    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lh0/c;->l0:Z

    :cond_1
    return-void
.end method

.method public b3()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "/dev/ttyS1"

    .line 3
    invoke-static {v0}, Lz/k;->f(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lu0/b;->t4:[I

    aput v1, v0, v1

    .line 5
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x4

    const/4 v2, 0x7

    aget v2, v0, v2

    aput v2, v0, v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 7
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "HS"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const v0, 0xabcdef2

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lu0/b;->V3:Z

    .line 4
    sput-boolean v0, Lu0/b;->h2:Z

    .line 5
    sput v0, Le/b;->b:I

    .line 6
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 7
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/c;->z:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const/4 v0, 0x5

    .line 8
    sput v0, Lw0/d;->R:I

    const/4 v0, 0x6

    .line 9
    sput v0, Lw0/d;->S:I

    .line 10
    sget-object v0, Le/c;->D:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 11
    invoke-static {}, Le/a;->k()Lo1/o;

    move-result-object v1

    const/16 v2, -0x1f4

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 12
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 13
    new-instance v0, Ln0/c$a;

    invoke-direct {v0, p0}, Ln0/c$a;-><init>(Ln0/c;)V

    sput-object v0, Lk0/nt;->d0:Lo1/o;

    return-void
.end method
