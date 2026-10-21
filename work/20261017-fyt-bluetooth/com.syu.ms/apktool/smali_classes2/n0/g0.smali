.class public Ln0/g0;
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
    new-instance v0, Ln0/g0$b;

    invoke-direct {v0, p0}, Ln0/g0$b;-><init>(Ln0/g0;)V

    iput-object v0, p0, Ln0/g0;->z:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/g0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P2()V
    .locals 6

    const/16 v0, 0x64

    .line 1
    sput v0, Lu0/b;->P2:I

    .line 2
    sput v0, Lu0/b;->R2:I

    .line 3
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 4
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v1

    .line 5
    invoke-static {}, Ly0/d;->r()V

    .line 6
    invoke-static {}, Ly0/d;->x()V

    const-string v0, "/dev/ttyS0"

    .line 7
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v3, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v3}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lz/k;->c()V

    const/4 v0, 0x1

    .line 10
    sput v0, Lo0/e;->k0:I

    const/4 v0, 0x4

    .line 11
    invoke-static {v0}, Lo0/g;->y(I)V

    .line 12
    sget-object v3, Lu0/b;->t4:[I

    aput v1, v3, v1

    .line 13
    sget-object v1, Ly0/b;->b:[I

    const/4 v4, 0x7

    aget v5, v1, v4

    aput v5, v1, v0

    const/16 v5, 0x14

    .line 14
    aput v5, v3, v0

    .line 15
    aget v0, v1, v4

    aput v0, v1, v2

    :goto_0
    return-void
.end method

.method public X2()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lu0/b;->P3:I

    .line 2
    invoke-super {p0}, Ln0/c4;->X2()V

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

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    sput v1, Lo0/e;->k0:I

    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Lo0/g;->y(I)V

    .line 5
    sget-object v1, Lu0/b;->t4:[I

    aput v2, v1, v2

    .line 6
    sget-object v1, Ly0/b;->b:[I

    aput v2, v1, v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x6

    aput v1, v0, v2

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "KZ"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const v0, 0xabcdef2

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lu0/b;->U3:Z

    const/4 v1, 0x1

    .line 4
    sput v1, Lu0/b;->P3:I

    .line 5
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 6
    sget-object v1, Ly0/g;->a:Lo1/y;

    iget-object v2, p0, Ln0/g0;->z:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    new-instance v0, Ln0/g0$a;

    invoke-direct {v0, p0}, Ln0/g0$a;-><init>(Ln0/g0;)V

    sput-object v0, Le/c;->r:Lo1/o;

    return-void
.end method
