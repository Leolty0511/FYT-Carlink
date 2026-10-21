.class public Ln0/k;
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
    new-instance v0, Ln0/k$a;

    invoke-direct {v0, p0}, Ln0/k$a;-><init>(Ln0/k;)V

    iput-object v0, p0, Ln0/k;->z:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic S3(Ln0/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln0/k;->T3()V

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/k;->z:Ljava/lang/Runnable;

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
    invoke-static {v1}, Lz/k;->f(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lu0/b;->t4:[I

    aput v3, v0, v3

    .line 11
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x4

    const/4 v2, 0x7

    aget v2, v0, v2

    aput v2, v0, v1

    :goto_0
    return-void
.end method

.method public final T3()V
    .locals 4

    const/16 v0, 0x34

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    sget-object v1, Ly0/b;->e:[I

    const/4 v2, 0x0

    const/16 v3, 0xff

    aput v3, v1, v2

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x33

    if-gt v1, v2, :cond_0

    .line 3
    sget-object v2, Ly0/b;->e:[I

    aget v3, v0, v1

    add-int/lit16 v3, v3, 0x80

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0x21
        0x20
        0x1e
        0x1c
        0x1b
        0x1a
        0x19
        0x17
        0x13
        0x11
        0xf
        0xe
        0xd
        0xc
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
        0x1
        0x0
        -0x1
        -0x2
        -0x3
        -0x4
        -0x5
        -0x6
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
        -0x7
    .end array-data
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
    sget-object v0, Lu0/b;->t4:[I

    aput v1, v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 5
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x6

    aput v2, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "ZHX"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x11

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lu0/b;->U3:Z

    .line 4
    sput v0, Lu0/b;->b4:I

    const/16 v1, 0x3e

    .line 5
    sput v1, Lu0/b;->U2:I

    .line 6
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 7
    sget-object v1, Ly0/g;->a:Lo1/y;

    iget-object v2, p0, Ln0/k;->z:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
