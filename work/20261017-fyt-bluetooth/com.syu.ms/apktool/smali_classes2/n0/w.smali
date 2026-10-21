.class public Ln0/w;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Runnable;

.field public final z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Ln0/w;->z:I

    .line 3
    new-instance v0, Ln0/w$a;

    invoke-direct {v0, p0}, Ln0/w$a;-><init>(Ln0/w;)V

    iput-object v0, p0, Ln0/w;->A:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic S3(Ln0/w;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln0/w;->T3()V

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/w;->A:Ljava/lang/Runnable;

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

    if-ne v0, v2, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v3, 0x3

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

    .line 8
    sget-object v0, Lu0/b;->t4:[I

    const/16 v2, 0x16

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 9
    invoke-static {v1}, Lz/k;->f(Ljava/lang/String;)V

    .line 10
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x4

    aget v2, v0, v3

    aput v2, v0, v1

    :goto_0
    return-void
.end method

.method public final T3()V
    .locals 4

    const/16 v0, 0x25

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    .line 2
    sget-object v2, Ly0/b;->d:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :array_0
    .array-data 4
        0xff
        0xc0
        0xb9
        0xb4
        0xaf
        0xaa
        0xa6
        0xa5
        0xa1
        0x9e
        0x9b
        0x99
        0x96
        0x95
        0x94
        0x93
        0x92
        0x91
        0x90
        0x8f
        0x8e
        0x8c
        0x8b
        0x8a
        0x89
        0x88
        0x87
        0x86
        0x85
        0x84
        0x83
        0x82
        0x81
        0x80
        0x7f
        0x7e
        0x7d
    .end array-data
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v0, Ln0/j4;->h:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :goto_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p2, p1}, Ln0/c4;->k3([II)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 2
    aget p2, p2, p3

    const/4 p4, 0x3

    if-eq p2, p1, :cond_1

    if-eq p2, p4, :cond_1

    move p2, p4

    .line 3
    :cond_1
    sget-boolean p1, Lm1/a;->c:Z

    if-eqz p1, :cond_2

    sget-object p1, Ln0/j4;->h:[I

    aget p4, p1, p3

    if-eq p4, p2, :cond_2

    .line 4
    aput p2, p1, p3

    .line 5
    invoke-static {p3, p2}, Ln0/k4;->l(II)V

    .line 6
    sget-object p1, Ln0/j4;->e:[Lo1/x;

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    .line 7
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    sget-object p2, La/i;->d:Ljava/lang/Runnable;

    const-wide/16 p3, 0x3e8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public j3()V
    .locals 3

    const-string v0, "HY"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x23

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x2

    .line 3
    sput v0, Lp0/b;->g:I

    .line 4
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 5
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/w;->A:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
