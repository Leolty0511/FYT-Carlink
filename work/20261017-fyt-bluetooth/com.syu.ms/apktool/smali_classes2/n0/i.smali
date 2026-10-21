.class public Ln0/i;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln0/i;->z:I

    .line 3
    new-instance v0, Ln0/i$c;

    invoke-direct {v0, p0}, Ln0/i$c;-><init>(Ln0/i;)V

    iput-object v0, p0, Ln0/i;->A:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic S3(Ln0/i;)I
    .locals 0

    .line 1
    iget p0, p0, Ln0/i;->z:I

    return p0
.end method

.method public static synthetic T3(Ln0/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Ln0/i;->z:I

    return p1
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/i;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    .line 2
    instance-of v0, p1, Lmodule/sound/C32107;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lmodule/sound/AudioDevice;->M0([I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x8a
        0x9
    .end array-data
.end method

.method public M2()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/c4;->M2()V

    return-void
.end method

.method public P2()V
    .locals 6

    .line 1
    sget-object v0, Lu0/c;->k:Lo1/y;

    new-instance v1, Ln0/i$a;

    invoke-direct {v1, p0}, Ln0/i$a;-><init>(Ln0/i;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0x16

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v5, 0x3

    aput v3, v0, v5

    .line 4
    invoke-static {}, Ly0/d;->r()V

    .line 5
    invoke-static {}, Ly0/d;->x()V

    const-string v3, "/dev/ttyS0"

    .line 6
    invoke-static {v3}, Lz/k;->g(Ljava/lang/String;)V

    .line 7
    aput v2, v0, v1

    .line 8
    sget-object v0, Ly0/d;->a:[I

    const/16 v1, 0xe

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 9
    sget-object v0, Ly0/d;->b:[I

    aput v2, v0, v1

    .line 10
    sget-object v0, Ly0/d;->c:[I

    aput v5, v0, v1

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

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 14
    aput v3, v0, v1

    .line 15
    sput v4, Lo0/e;->g:I

    .line 16
    :goto_0
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 v0, 0x64

    .line 18
    sput v0, Lu0/b;->P2:I

    .line 19
    sput v0, Lu0/b;->R2:I

    goto :goto_1

    .line 20
    :cond_1
    sput v4, Lu0/b;->P2:I

    .line 21
    sput v4, Lu0/b;->R2:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final U3()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    .line 2
    new-instance v1, Ln0/i$b;

    invoke-direct {v1, p0, v0}, Ln0/i$b;-><init>(Ln0/i;I)V

    invoke-static {v1}, Ln0/k4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public X2()V
    .locals 1

    const-string v0, "PCBA"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput v0, Lu0/b;->P3:I

    .line 3
    invoke-super {p0}, Ln0/c4;->X2()V

    .line 4
    invoke-virtual {p0}, Ln0/i;->U3()V

    return-void
.end method

.method public b3()V
    .locals 3

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-virtual {p0}, Ln0/i;->U3()V

    .line 3
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lu0/b;->t4:[I

    const/16 v1, 0x16

    const/4 v2, 0x7

    aput v1, v0, v2

    const/4 v1, 0x5

    .line 5
    aput v2, v0, v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "NOR"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x9

    .line 2
    sput v0, Lm1/a;->d:I

    const/16 v0, 0x10

    .line 3
    sput v0, Ly0/f;->T:I

    const/4 v0, 0x1

    .line 4
    sput v0, Lu0/b;->P3:I

    .line 5
    sput v0, Le/b;->b:I

    .line 6
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 7
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/i;->A:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
