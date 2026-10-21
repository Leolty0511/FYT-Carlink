.class public Ln0/f;
.super Ln0/c4;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ln0/f;->z:I

    iput v0, p0, Ln0/f;->A:I

    .line 3
    new-instance v0, Ln0/f$a;

    invoke-direct {v0, p0}, Ln0/f$a;-><init>(Ln0/f;)V

    iput-object v0, p0, Ln0/f;->B:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ln0/f$b;

    invoke-direct {v0, p0}, Ln0/f$b;-><init>(Ln0/f;)V

    iput-object v0, p0, Ln0/f;->C:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->C3()V

    .line 2
    sget-object v0, Ly0/g;->a:Lo1/y;

    iget-object v1, p0, Ln0/f;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Ln0/f;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Ln0/f;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P2()V
    .locals 8

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const-string v1, "/dev/ttyS0"

    const/16 v2, 0x16

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x6

    if-ne v0, v5, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    aput v5, v0, v3

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    .line 5
    invoke-static {v1}, Lz/k;->g(Ljava/lang/String;)V

    .line 6
    aput v2, v0, v4

    .line 7
    sget-object v0, Ly0/d;->a:[I

    const/16 v1, 0xe

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 8
    sget-object v0, Ly0/d;->b:[I

    aput v2, v0, v1

    .line 9
    sget-object v0, Ly0/d;->c:[I

    aput v3, v0, v1

    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v6, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v6}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lz/k;->c()V

    .line 12
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    const/16 v6, 0x14

    const/4 v7, 0x7

    if-eqz v0, :cond_1

    .line 13
    sget-object v0, Lu0/b;->t4:[I

    aput v5, v0, v7

    .line 14
    aput v6, v0, v4

    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v7

    .line 16
    aput v2, v0, v4

    .line 17
    :goto_0
    sget v0, Ln0/j4;->a:I

    if-ne v0, v3, :cond_2

    .line 18
    invoke-static {v1}, Lz/k;->l(Ljava/lang/String;)V

    .line 19
    sget-object v0, Lu0/b;->t4:[I

    aput v5, v0, v7

    .line 20
    aput v6, v0, v4

    .line 21
    sget-object v0, Ly0/b;->b:[I

    const/16 v1, 0xa

    aput v1, v0, v5

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 22
    sput v0, Lo0/e;->k0:I

    .line 23
    invoke-static {v4}, Lo0/g;->y(I)V

    .line 24
    sget-object v0, Lu0/b;->t4:[I

    aput v5, v0, v3

    .line 25
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x4

    aget v2, v0, v7

    aput v2, v0, v1

    :goto_1
    return-void
.end method

.method public b3()V
    .locals 8

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-ne v0, v1, :cond_4

    .line 3
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    const/16 v4, 0x16

    const/4 v5, 0x5

    const/4 v6, 0x7

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v6

    const/16 v7, 0x14

    .line 5
    aput v7, v0, v5

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lu0/b;->t4:[I

    aput v4, v0, v6

    .line 7
    aput v4, v0, v5

    .line 8
    :goto_0
    sget v0, Ln0/j4;->a:I

    const/4 v7, 0x4

    if-ne v0, v3, :cond_2

    const-string v0, "/dev/ttyS1"

    .line 9
    invoke-static {v0}, Lz/k;->l(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v6

    .line 11
    aput v4, v0, v5

    .line 12
    sget-object v0, Ly0/b;->b:[I

    aput v3, v0, v2

    .line 13
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_3

    .line 14
    :cond_1
    sget-object v0, Lu0/b;->u4:[I

    aput v7, v0, v6

    .line 15
    aput v3, v0, v5

    goto :goto_1

    .line 16
    :cond_2
    sput v1, Lo0/e;->k0:I

    .line 17
    invoke-static {v5}, Lo0/g;->y(I)V

    .line 18
    sget-object v0, Lu0/b;->t4:[I

    aput v4, v0, v3

    .line 19
    sget-object v0, Ly0/b;->b:[I

    aget v1, v0, v6

    aput v1, v0, v7

    .line 20
    :cond_3
    :goto_1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 21
    sget-object v0, Lu0/b;->t4:[I

    const/16 v1, 0x18

    aput v1, v0, v6

    goto :goto_2

    .line 22
    :cond_4
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 23
    sget-object v0, Lu0/b;->t4:[I

    aput v2, v0, v3

    :cond_5
    :goto_2
    return-void
.end method

.method public j3()V
    .locals 6

    const-string v0, "ZYC"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/4 v0, 0x6

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x4

    .line 3
    sput v0, Lp0/b;->g:I

    const/4 v1, 0x1

    .line 4
    sput v1, Lh0/c;->j0:I

    const/4 v2, 0x0

    .line 5
    sput v2, Ly0/b;->i:I

    .line 6
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 7
    sget-object v3, Ly0/g;->a:Lo1/y;

    iget-object v4, p0, Ln0/f;->C:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget v3, Ln0/j4;->a:I

    const-string v4, "bd_gps_enabled"

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 10
    sput v5, Lp0/b;->g:I

    const/16 v0, 0x14

    .line 11
    sput v0, Ly0/f;->N:I

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 13
    :cond_1
    :goto_0
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v2, p0, Ln0/f;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v2, p0, Ln0/f;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
