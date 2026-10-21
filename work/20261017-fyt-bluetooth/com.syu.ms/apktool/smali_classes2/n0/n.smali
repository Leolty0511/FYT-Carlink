.class public Ln0/n;
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
    new-instance v0, Ln0/n$a;

    invoke-direct {v0, p0}, Ln0/n$a;-><init>(Ln0/n;)V

    iput-object v0, p0, Ln0/n;->z:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/n;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Ln0/c4;->C3()V

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

    const/16 v0, 0x2580

    const/4 v2, 0x1

    .line 8
    invoke-static {v1, v0, v2}, Lz/k;->k(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "DCE"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x14

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 4
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/n;->z:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
