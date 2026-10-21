.class public Ln0/b0;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln0/b0;->z:I

    .line 3
    new-instance v0, Ln0/b0$d;

    invoke-direct {v0, p0}, Ln0/b0$d;-><init>(Ln0/b0;)V

    iput-object v0, p0, Ln0/b0;->A:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ln0/b0$e;

    invoke-direct {v0, p0}, Ln0/b0$e;-><init>(Ln0/b0;)V

    iput-object v0, p0, Ln0/b0;->B:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic S3(Ln0/b0;)I
    .locals 0

    .line 1
    iget p0, p0, Ln0/b0;->z:I

    return p0
.end method

.method public static synthetic T3(Ln0/b0;I)I
    .locals 0

    .line 1
    iput p1, p0, Ln0/b0;->z:I

    return p1
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/b0;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Ln0/b0;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P2()V
    .locals 3

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

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v1, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v1}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lz/k;->c()V

    :goto_0
    return-void
.end method

.method public final U3()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    .line 2
    new-instance v1, Ln0/b0$c;

    invoke-direct {v1, p0, v0}, Ln0/b0$c;-><init>(Ln0/b0;I)V

    invoke-static {v1}, Ln0/k4;->a(Ljava/lang/Runnable;)V

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
    .locals 4

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-virtual {p0}, Ln0/b0;->U3()V

    .line 3
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x5

    const/16 v3, 0x19

    aput v3, v0, v2

    .line 5
    sget-object v0, Lu0/c;->J:Lo1/y;

    new-instance v2, Ln0/b0$a;

    invoke-direct {v2, p0}, Ln0/b0$a;-><init>(Ln0/b0;)V

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

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

    const/4 v3, 0x6

    aput v3, v0, v2

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    new-instance v2, Ln0/b0$b;

    invoke-direct {v2, p0}, Ln0/b0$b;-><init>(Ln0/b0;)V

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public j3()V
    .locals 5

    const-string v0, "OWA"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x28

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v1, 0x1

    .line 3
    sput v1, Le/b;->b:I

    .line 4
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 5
    sget-object v2, Ly0/g;->a:Lo1/y;

    iget-object v3, p0, Ln0/b0;->A:Ljava/lang/Runnable;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sput v0, Lu0/b;->U2:I

    .line 7
    sget-object v0, Lu0/b;->h3:[I

    const/16 v2, 0xc

    const/4 v3, -0x1

    aput v3, v0, v2

    const/16 v2, 0xb

    .line 8
    aput v3, v0, v2

    const/16 v2, 0xd

    .line 9
    aput v3, v0, v2

    .line 10
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Ln0/b0;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget v0, Ln0/j4;->a:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 12
    sput v1, Lu0/b;->P3:I

    :cond_0
    return-void
.end method
