.class public Ln0/q0;
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
    new-instance v0, Ln0/q0$a;

    invoke-direct {v0, p0}, Ln0/q0$a;-><init>(Ln0/q0;)V

    iput-object v0, p0, Ln0/q0;->z:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/q0;->z:Ljava/lang/Runnable;

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

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    instance-of v0, p1, Le1/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v0, v1}, Le1/c;->v(II)V

    :cond_0
    return-void
.end method

.method public P2()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    .line 2
    sput v0, Lu0/b;->P2:I

    .line 3
    sput v0, Lu0/b;->R2:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    sput v0, Lu0/b;->P2:I

    .line 5
    sput v0, Lu0/b;->R2:I

    .line 6
    :goto_0
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 7
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 8
    invoke-static {}, Ly0/d;->r()V

    .line 9
    invoke-static {}, Ly0/d;->x()V

    const-string v0, "/dev/ttyS0"

    .line 10
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v1, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v1}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lz/k;->c()V

    :goto_1
    return-void
.end method

.method public X2()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/c4;->X2()V

    return-void
.end method

.method public j3()V
    .locals 4

    const-string v0, "JY"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x43

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput v0, Ly0/f;->X0:I

    const/4 v1, 0x5

    .line 4
    sput v1, Ly0/f;->W0:I

    .line 5
    sput v0, Lu0/b;->P3:I

    .line 6
    sget v1, Ln0/j4;->a:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 7
    sput v0, Le/b;->b:I

    .line 8
    :cond_0
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 9
    sget-object v1, Ly0/g;->a:Lo1/y;

    iget-object v2, p0, Ln0/q0;->z:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sput-boolean v0, Lu0/b;->g2:Z

    return-void
.end method
