.class public Ln0/j;
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
    iput v0, p0, Ln0/j;->z:I

    .line 3
    new-instance v0, Ln0/j$b;

    invoke-direct {v0, p0}, Ln0/j$b;-><init>(Ln0/j;)V

    iput-object v0, p0, Ln0/j;->A:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic S3(Ln0/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln0/j;->T3()V

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/j;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P2()V
    .locals 7

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const-string v1, "/dev/ttyS0"

    const/16 v2, 0x16

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x2

    if-ne v0, v4, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v6, 0x3

    aput v4, v0, v6

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    .line 5
    invoke-static {v1}, Lz/k;->g(Ljava/lang/String;)V

    .line 6
    aput v2, v0, v3

    .line 7
    sget-object v0, Ly0/d;->a:[I

    const/16 v1, 0xe

    aput v5, v0, v1

    .line 8
    aput v5, v0, v1

    .line 9
    sget-object v0, Ly0/d;->c:[I

    aput v6, v0, v1

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v4, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v4}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lz/k;->c()V

    .line 12
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v3

    const/16 v0, 0x2580

    .line 13
    invoke-static {v1, v0, v5}, Lz/k;->j(Ljava/lang/String;II)V

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

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x5

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
    .locals 3

    const-string v0, "CXJ"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x10

    .line 2
    sput v0, Lm1/a;->d:I

    .line 3
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 4
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/j;->A:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lu0/b;->V3:Z

    .line 7
    :cond_0
    new-instance v0, Ln0/j$a;

    invoke-direct {v0, p0}, Ln0/j$a;-><init>(Ln0/j;)V

    sput-object v0, Le/c;->a:Lo1/o;

    .line 8
    sget-object v0, Le/c;->D:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 9
    invoke-static {}, Le/a;->j()Lo1/o;

    move-result-object v1

    const/16 v2, -0x1f4

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 10
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    return-void
.end method
