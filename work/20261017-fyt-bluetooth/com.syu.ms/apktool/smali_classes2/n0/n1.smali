.class public Ln0/n1;
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
    iput v0, p0, Ln0/n1;->z:I

    return-void
.end method


# virtual methods
.method public P2()V
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/16 v0, 0xb4

    .line 2
    sput v0, Lu0/b;->P2:I

    .line 3
    sput v0, Lu0/b;->R2:I

    goto :goto_0

    .line 4
    :cond_0
    sput v1, Lu0/b;->P2:I

    .line 5
    sput v1, Lu0/b;->R2:I

    .line 6
    :goto_0
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 7
    sget-object v0, Lu0/b;->t4:[I

    aput v3, v0, v2

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

    const-string v3, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v3}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lz/k;->c()V

    .line 13
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 14
    invoke-static {}, Ly0/b;->r()V

    const-string v0, "ro.fyt.bt_type"

    .line 15
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 16
    sget-object v0, Ly0/b;->b:[I

    aput v1, v0, v2

    const/4 v2, 0x2

    .line 17
    aput v1, v0, v2

    :cond_2
    :goto_1
    return-void
.end method

.method public b3()V
    .locals 2

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5a

    .line 3
    sput v0, Lu0/b;->P2:I

    .line 4
    sput v0, Lu0/b;->R2:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    sput v0, Lu0/b;->P2:I

    .line 6
    sput v0, Lu0/b;->R2:I

    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "CNC"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x66

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lu0/b;->h2:Z

    .line 4
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 5
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    .line 6
    sput v0, Lu0/b;->P2:I

    .line 7
    sput v0, Lu0/b;->R2:I

    .line 8
    :cond_0
    new-instance v0, Lui/d;

    invoke-direct {v0}, Lui/d;-><init>()V

    invoke-static {v0}, La/f;->D(Lui/b;)V

    .line 9
    sget-object v0, Lu0/b;->h3:[I

    const/4 v1, 0x2

    const/4 v2, -0x1

    aput v2, v0, v1

    return-void
.end method

.method public x3()V
    .locals 4

    .line 1
    invoke-super {p0}, Ln0/c4;->x3()V

    .line 2
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "ro.fyt.bt_type"

    .line 3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Ln0/n1$a;

    invoke-direct {v1, p0}, Ln0/n1$a;-><init>(Ln0/n1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lz/k;->d()V

    :goto_0
    return-void
.end method
