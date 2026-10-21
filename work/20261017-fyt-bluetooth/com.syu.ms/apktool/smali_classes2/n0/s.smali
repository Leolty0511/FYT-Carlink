.class public Ln0/s;
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
    new-instance v0, Ln0/s$f;

    invoke-direct {v0, p0}, Ln0/s$f;-><init>(Ln0/s;)V

    iput-object v0, p0, Ln0/s;->z:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public P2()V
    .locals 5

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

    const-string v3, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v3}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lz/k;->c()V

    .line 8
    sget-object v0, Lu0/b;->t4:[I

    const/4 v3, 0x7

    const/16 v4, 0x16

    aput v4, v0, v3

    .line 9
    sget-object v0, Lu0/a;->h:[I

    const/4 v3, 0x1

    const/16 v4, 0x15

    aput v4, v0, v3

    .line 10
    aput v4, v0, v2

    .line 11
    sget-object v0, Lu0/c;->j:Lo1/y;

    iget-object v2, p0, Ln0/s;->z:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const/16 v0, 0x4b00

    const/4 v2, 0x5

    .line 12
    invoke-static {v1, v0, v2}, Lz/k;->k(Ljava/lang/String;II)V

    :goto_0
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

    const/16 v0, 0x4b00

    const/4 v1, 0x5

    const-string v2, "/dev/ttyS1"

    .line 3
    invoke-static {v2, v0, v1}, Lz/k;->k(Ljava/lang/String;II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 1

    const-string v0, "BRZH"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x19

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 4
    new-instance v0, Ln0/s$a;

    invoke-direct {v0, p0}, Ln0/s$a;-><init>(Ln0/s;)V

    sput-object v0, Lu0/b;->Z2:Lo1/o;

    .line 5
    new-instance v0, Ln0/s$b;

    invoke-direct {v0, p0}, Ln0/s$b;-><init>(Ln0/s;)V

    sput-object v0, Lu0/b;->a3:Lo1/o;

    .line 6
    new-instance v0, Ln0/s$c;

    invoke-direct {v0, p0}, Ln0/s$c;-><init>(Ln0/s;)V

    sput-object v0, Lu0/b;->b3:Lo1/o;

    .line 7
    new-instance v0, Ln0/s$d;

    invoke-direct {v0, p0}, Ln0/s$d;-><init>(Ln0/s;)V

    sput-object v0, Lu0/b;->c3:Lo1/o;

    .line 8
    new-instance v0, Ln0/s$e;

    invoke-direct {v0, p0}, Ln0/s$e;-><init>(Ln0/s;)V

    sput-object v0, Lu0/b;->d3:Lo1/o;

    return-void
.end method
