.class public Ln0/g;
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
    new-instance v0, Ln0/g$a;

    invoke-direct {v0, p0}, Ln0/g$a;-><init>(Ln0/g;)V

    iput-object v0, p0, Ln0/g;->z:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/g;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P2()V
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    const-string v0, "/dev/ttyS0"

    .line 5
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    .line 6
    sget-object v0, Ly0/d;->a:[I

    const/16 v1, 0xe

    const/4 v3, 0x2

    aput v3, v0, v1

    .line 7
    sget-object v0, Ly0/d;->b:[I

    aput v3, v0, v1

    .line 8
    sget-object v0, Ly0/d;->c:[I

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

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, 0x16

    .line 12
    aput v2, v0, v1

    const/4 v0, 0x0

    .line 13
    sput v0, Lo0/e;->g:I

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

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, 0x16

    .line 4
    aput v2, v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 6
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "RUL"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/4 v0, 0x7

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lu0/b;->X3:Z

    .line 4
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 5
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/g;->z:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
