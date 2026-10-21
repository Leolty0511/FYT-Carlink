.class public Ln0/n0;
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
    .locals 6

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x7

    const/16 v2, 0x16

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

    const-string v5, "/dev/ttyS0"

    .line 5
    invoke-static {v5}, Lz/k;->g(Ljava/lang/String;)V

    .line 6
    aput v2, v0, v1

    .line 7
    sget-object v1, Ly0/d;->c:[I

    aput v4, v1, v3

    const/4 v3, 0x5

    .line 8
    aput v2, v0, v3

    .line 9
    sget-object v0, Ly0/d;->a:[I

    const/16 v2, 0xe

    aput v3, v0, v2

    .line 10
    aput v4, v1, v2

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v3, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v3}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lz/k;->c()V

    .line 13
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v1

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

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x7

    const/16 v2, 0x16

    aput v2, v0, v1

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

    const-string v0, "LMA"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x40

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    invoke-super {p0}, Ln0/c4;->j3()V

    return-void
.end method
