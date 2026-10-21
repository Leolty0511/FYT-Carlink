.class public Ln0/p;
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
.method public C3()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    return-void
.end method

.method public I3(Le1/c;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->I3(Le1/c;)V

    .line 2
    instance-of v0, p1, Le1/e;

    if-eqz v0, :cond_0

    iget v0, p0, Ln0/c4;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p1, v0, v1}, Le1/c;->v(II)V

    :cond_0
    return-void
.end method

.method public P2()V
    .locals 7

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const-string v1, "/dev/ttyS0"

    const/16 v2, 0x16

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x6

    if-ne v0, v5, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v6, 0x3

    aput v5, v0, v6

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    .line 5
    invoke-static {v1}, Lz/k;->g(Ljava/lang/String;)V

    .line 6
    aput v2, v0, v3

    .line 7
    sget-object v1, Ly0/d;->c:[I

    aput v6, v1, v5

    const/4 v2, 0x5

    .line 8
    aput v4, v0, v2

    .line 9
    sget-object v0, Ly0/d;->a:[I

    const/16 v3, 0xe

    aput v2, v0, v3

    .line 10
    aput v4, v1, v3

    const/4 v0, 0x4

    .line 11
    invoke-static {v0}, Lc1/b;->g(I)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v5, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v5}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 13
    invoke-static {}, Lz/k;->c()V

    .line 14
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v3

    const/16 v0, 0x4b00

    .line 15
    invoke-static {v1, v0, v4}, Lz/k;->k(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public b3()V
    .locals 5

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

    const/16 v2, 0x16

    const/4 v3, 0x7

    aput v2, v0, v3

    const/16 v0, 0x2580

    const/16 v2, 0x9

    const-string v4, "/dev/ttyS1"

    .line 4
    invoke-static {v4, v0, v2}, Lz/k;->k(Ljava/lang/String;II)V

    .line 5
    sget-object v0, Ly0/b;->b:[I

    aget v2, v0, v3

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

    const/4 v2, 0x3

    aput v1, v0, v2

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "CML"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x16

    .line 2
    sput v0, Lm1/a;->d:I

    const/16 v0, 0x14

    .line 3
    sput v0, Ly0/f;->N:I

    .line 4
    sput v0, Ly0/f;->T:I

    const/4 v0, 0x0

    .line 5
    sput v0, Lp0/b;->g:I

    .line 6
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 7
    sget-object v0, Le/c;->E:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 8
    invoke-static {}, Le/a;->e()Lo1/o;

    move-result-object v1

    const/16 v2, -0x1f4

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 9
    invoke-static {}, Le/a;->i()Lo1/o;

    move-result-object v1

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    return-void
.end method
