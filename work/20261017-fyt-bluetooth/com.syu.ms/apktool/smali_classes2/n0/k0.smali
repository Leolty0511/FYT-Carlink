.class public Ln0/k0;
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

    const/16 v1, 0x16

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-ne v0, v2, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    const-string v2, "/dev/ttyS0"

    .line 5
    invoke-static {v2}, Lz/k;->g(Ljava/lang/String;)V

    .line 6
    aput v1, v0, v3

    .line 7
    sget-object v0, Ly0/d;->a:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 8
    sget-object v0, Ly0/d;->c:[I

    const/4 v2, 0x2

    aput v2, v0, v1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v2, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v2}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lz/k;->c()V

    .line 11
    sget-object v0, Lu0/b;->t4:[I

    aput v1, v0, v3

    :goto_0
    return-void
.end method

.method public j3()V
    .locals 1

    const-string v0, "JLH"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x37

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lu0/b;->c4:Z

    .line 4
    sput v0, Le/b;->b:I

    .line 5
    invoke-super {p0}, Ln0/c4;->j3()V

    return-void
.end method
