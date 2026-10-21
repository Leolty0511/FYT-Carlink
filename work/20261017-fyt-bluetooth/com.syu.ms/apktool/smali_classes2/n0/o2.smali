.class public Ln0/o2;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    .line 2
    new-instance v0, Ln0/o2$a;

    invoke-direct {v0, p0}, Ln0/o2$a;-><init>(Ln0/o2;)V

    iput-object v0, p0, Ln0/o2;->z:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ln0/o2$b;

    invoke-direct {v0, p0}, Ln0/o2$b;-><init>(Ln0/o2;)V

    iput-object v0, p0, Ln0/o2;->A:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ln0/o2$c;

    invoke-direct {v0, p0}, Ln0/o2$c;-><init>(Ln0/o2;)V

    iput-object v0, p0, Ln0/o2;->B:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/o2;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 3
    sget-object v0, Lz/c;->b:Lo1/y;

    iget-object v1, p0, Ln0/o2;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lz/c;->a:Lo1/y;

    iget-object v1, p0, Ln0/o2;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P2()V
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const-string v1, "/dev/ttyS0"

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-ne v0, v2, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

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

    const/4 v0, 0x1

    .line 8
    sput v0, Lo0/e;->k0:I

    .line 9
    sput v0, Lo0/e;->g:I

    .line 10
    invoke-static {v1}, Lz/k;->f(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lu0/b;->t4:[I

    aput v3, v0, v3

    .line 12
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x4

    const/4 v2, 0x7

    aget v2, v0, v2

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

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    sput v2, Lo0/e;->k0:I

    .line 4
    sput v2, Lo0/e;->g:I

    const-string v0, "/dev/ttyS1"

    .line 5
    invoke-static {v0}, Lz/k;->f(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lu0/b;->t4:[I

    aput v1, v0, v1

    .line 7
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x4

    const/4 v2, 0x7

    aget v2, v0, v2

    aput v2, v0, v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 9
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 4

    const-string v0, "DH"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x7d0

    .line 2
    sput v0, Lu0/b;->v3:I

    const/16 v0, 0x8

    .line 3
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x30

    if-ge v1, v2, :cond_0

    .line 4
    sget-object v2, Ly0/f;->x0:[I

    const/4 v3, 0x5

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lu0/b;->V3:Z

    .line 6
    sput-boolean v1, Lu0/b;->a4:Z

    const/16 v1, 0x56

    .line 7
    sput v1, Lu0/b;->T2:I

    const/16 v1, 0x4c

    .line 8
    sput v1, Lu0/b;->U2:I

    .line 9
    sput v0, Lh0/c;->j0:I

    .line 10
    sget-object v1, Ly0/g;->a:Lo1/y;

    iget-object v2, p0, Ln0/o2;->B:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 12
    sget-object v1, Lz/c;->b:Lo1/y;

    iget-object v2, p0, Ln0/o2;->z:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v1, Lz/c;->a:Lo1/y;

    iget-object v2, p0, Ln0/o2;->A:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
