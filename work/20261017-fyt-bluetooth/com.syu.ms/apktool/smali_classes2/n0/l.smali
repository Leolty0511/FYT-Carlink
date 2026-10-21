.class public Ln0/l;
.super Ln0/c4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    return-void
.end method


# virtual methods
.method public P2()V
    .locals 5

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v2, 0x2

    .line 3
    aput v2, v0, v1

    .line 4
    invoke-static {}, Ly0/d;->r()V

    .line 5
    invoke-static {}, Ly0/d;->x()V

    const-string v0, "/dev/ttyS0"

    .line 6
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v3, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v3}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lz/k;->c()V

    .line 9
    sget-object v0, Lu0/b;->t4:[I

    const/4 v3, 0x7

    const/16 v4, 0x15

    aput v4, v0, v3

    .line 10
    aput v2, v0, v1

    :goto_0
    return-void
.end method

.method public b3()V
    .locals 4

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 4
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x7

    const/16 v3, 0x15

    aput v3, v0, v2

    const/4 v2, 0x5

    .line 5
    aput v1, v0, v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 7
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 1

    const-string v0, "YLO"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x12

    .line 2
    sput v0, Lm1/a;->d:I

    const/16 v0, 0x14

    .line 3
    sput v0, Ly0/f;->N:I

    .line 4
    invoke-super {p0}, Ln0/c4;->j3()V

    return-void
.end method
