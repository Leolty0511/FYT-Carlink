.class public Ln0/c0;
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
    new-instance v0, Ln0/c0$a;

    invoke-direct {v0, p0}, Ln0/c0$a;-><init>(Ln0/c0;)V

    iput-object v0, p0, Ln0/c0;->z:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/c0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P2()V
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "/dev/ttyS0"

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v4, 0x3

    aput v3, v0, v4

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    .line 5
    invoke-static {v2}, Lz/k;->g(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lu0/a;->h:[I

    const/16 v2, 0x15

    const/16 v3, 0xe

    aput v2, v0, v3

    .line 7
    sget-object v0, Ly0/d;->c:[I

    aput v1, v0, v3

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v3, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v3}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lz/k;->c()V

    const/16 v0, 0x4b00

    .line 10
    invoke-static {v2, v0, v1}, Lz/k;->k(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "KNS"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x29

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x5

    .line 3
    sput v0, Lp0/b;->g:I

    .line 4
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 5
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/c0;->z:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
