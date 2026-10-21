.class public Ls0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/e;


# static fields
.field public static g:I = 0x1d

.field public static h:Z = false

.field public static i:[I

.field public static j:[I

.field public static k:I


# instance fields
.field public a:Lo1/g0;

.field public final b:Ljava/lang/String;

.field public c:Lo1/n;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Ls0/b;->i:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Ls0/b;->j:[I

    const/4 v0, 0x0

    .line 3
    sput v0, Ls0/b;->k:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1c
        0x30
        0x41
        0x50
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x5
        0xa
        0x14
        0x1e
        0x28
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ls0/b;->a:Lo1/g0;

    const-string v0, "gsensor"

    .line 3
    iput-object v0, p0, Ls0/b;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lo1/n;

    invoke-direct {v0}, Lo1/n;-><init>()V

    iput-object v0, p0, Ls0/b;->c:Lo1/n;

    .line 5
    new-instance v0, Ls0/b$a;

    invoke-direct {v0, p0}, Ls0/b$a;-><init>(Ls0/b;)V

    iput-object v0, p0, Ls0/b;->d:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Ls0/b$b;

    invoke-direct {v0, p0}, Ls0/b$b;-><init>(Ls0/b;)V

    iput-object v0, p0, Ls0/b;->e:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Ls0/b$c;

    invoke-direct {v0, p0}, Ls0/b$c;-><init>(Ls0/b;)V

    iput-object v0, p0, Ls0/b;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic i()I
    .locals 1

    .line 1
    sget v0, Ls0/b;->k:I

    return v0
.end method

.method public static synthetic j(I)I
    .locals 0

    .line 1
    sput p0, Ls0/b;->k:I

    return p0
.end method

.method public static synthetic k(I)I
    .locals 1

    .line 1
    sget v0, Ls0/b;->k:I

    sub-int/2addr v0, p0

    sput v0, Ls0/b;->k:I

    return v0
.end method

.method public static synthetic l()Z
    .locals 1

    .line 1
    sget-boolean v0, Ls0/b;->h:Z

    return v0
.end method

.method public static synthetic m(Ls0/b;II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ls0/b;->q(II)I

    move-result p0

    return p0
.end method

.method public static synthetic n(Ls0/b;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls0/b;->r(I)I

    move-result p0

    return p0
.end method

.method public static synthetic o()[I
    .locals 1

    .line 1
    sget-object v0, Ls0/b;->i:[I

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ls0/b;->c:Lo1/n;

    const-string v1, "/dev/i2c-4"

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 3
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ls0/b;->c:Lo1/n;

    const-string v1, "/dev/i2c-2"

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ls0/b;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Ls0/b;->t()V

    .line 7
    sput-boolean v1, Ls0/b;->h:Z

    .line 8
    iget-object v0, p0, Ls0/b;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ls0/d;->a(Ljava/lang/Runnable;)V

    .line 9
    :cond_2
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 10
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Ls0/b;->f:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Ls0/b;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    invoke-virtual {p0}, Ls0/b;->p()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/b;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ls0/d;->l(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 3
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Ls0/b;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Ls0/b;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-static {p1, v0, v1}, Lo1/o0;->a(III)I

    move-result p1

    .line 2
    sget v0, Ls0/c;->h:I

    if-eq v0, p1, :cond_0

    .line 3
    sput p1, Ls0/c;->h:I

    .line 4
    sget-object v0, Ls0/c;->c:[Lo1/x;

    invoke-static {v0, v1, p1}, Lo1/x;->x([Lo1/x;II)V

    .line 5
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Ls0/c;->p:I

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Ls0/b;->d(I)V

    goto :goto_0

    .line 2
    :cond_2
    invoke-virtual {p0, v1}, Ls0/b;->v(I)V

    goto :goto_0

    .line 3
    :cond_3
    invoke-virtual {p0, v0}, Ls0/b;->v(I)V

    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-static {p1, v0, v1}, Lo1/o0;->a(III)I

    move-result p1

    .line 2
    sget v0, Ls0/c;->l:I

    if-eq v0, p1, :cond_0

    .line 3
    sput p1, Ls0/c;->l:I

    .line 4
    sget-object v0, Ls0/c;->c:[Lo1/x;

    const/4 v2, 0x6

    invoke-static {v0, v2, p1}, Lo1/x;->x([Lo1/x;II)V

    .line 5
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Ls0/c;->f:I

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Ls0/b;->f(I)V

    goto :goto_0

    .line 2
    :cond_2
    invoke-virtual {p0, v1}, Ls0/b;->u(I)V

    goto :goto_0

    .line 3
    :cond_3
    invoke-virtual {p0, v0}, Ls0/b;->u(I)V

    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-static {p1, v0, v1}, Lo1/o0;->a(III)I

    move-result p1

    .line 2
    sget v0, Ls0/b;->g:I

    sget-object v1, Ls0/b;->j:[I

    aget v1, v1, p1

    const/16 v2, 0x3a

    invoke-virtual {p0, v0, v2, v1}, Ls0/b;->x(III)I

    .line 3
    sget v0, Ls0/c;->j:I

    if-eq v0, p1, :cond_0

    .line 4
    sput p1, Ls0/c;->j:I

    .line 5
    sget-object v0, Ls0/c;->c:[Lo1/x;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Lo1/x;->x([Lo1/x;II)V

    .line 6
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Ls0/c;->n:I

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Ls0/b;->h(I)V

    goto :goto_0

    .line 2
    :cond_2
    invoke-virtual {p0, v1}, Ls0/b;->w(I)V

    goto :goto_0

    .line 3
    :cond_3
    invoke-virtual {p0, v0}, Ls0/b;->w(I)V

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    sget v1, Ls0/c;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo1/g0;->d(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ls0/b;->f(I)V

    .line 2
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    sget v1, Ls0/c;->i:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lo1/g0;->d(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ls0/b;->c(I)V

    .line 3
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    sget v1, Ls0/c;->k:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lo1/g0;->d(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ls0/b;->g(I)V

    .line 4
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    sget v1, Ls0/c;->m:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lo1/g0;->d(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ls0/b;->e(I)V

    .line 5
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    sget v1, Ls0/c;->o:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lo1/g0;->d(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ls0/b;->h(I)V

    .line 6
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    sget v1, Ls0/c;->q:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lo1/g0;->d(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ls0/b;->d(I)V

    return-void
.end method

.method public final q(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/b;->c:Lo1/n;

    invoke-virtual {v0, p1, p2}, Lo1/n;->g(II)I

    move-result p1

    return p1
.end method

.method public final r(I)I
    .locals 2

    shr-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    rsub-int p1, p1, 0xff

    add-int/2addr p1, v1

    :cond_0
    return p1
.end method

.method public final s()I
    .locals 5

    .line 1
    sget v0, Ls0/b;->g:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ls0/b;->x(III)I

    move-result v0

    add-int/2addr v0, v2

    .line 2
    sget v1, Ls0/b;->g:I

    const/16 v3, 0x38

    invoke-virtual {p0, v1, v3, v2}, Ls0/b;->x(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    sget v1, Ls0/b;->g:I

    const/16 v2, 0x24

    const/16 v4, 0x80

    invoke-virtual {p0, v1, v2, v4}, Ls0/b;->x(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    sget v1, Ls0/b;->g:I

    const/16 v2, 0x20

    invoke-virtual {p0, v1, v2, v3}, Ls0/b;->x(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    sget v1, Ls0/b;->g:I

    const/16 v2, 0x21

    const/16 v3, 0xd

    invoke-virtual {p0, v1, v2, v3}, Ls0/b;->x(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    sget v1, Ls0/b;->g:I

    const/16 v2, 0x23

    invoke-virtual {p0, v1, v2, v4}, Ls0/b;->x(III)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final t()V
    .locals 4

    .line 1
    sget v0, Ls0/b;->g:I

    const/16 v1, 0x25

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Ls0/b;->x(III)I

    .line 2
    sget v0, Ls0/b;->g:I

    const/16 v1, 0x3a

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Ls0/b;->x(III)I

    .line 3
    sget v0, Ls0/b;->g:I

    const/16 v1, 0x3b

    const/16 v3, 0x7f

    invoke-virtual {p0, v0, v1, v3}, Ls0/b;->x(III)I

    .line 4
    sget v0, Ls0/b;->g:I

    const/16 v1, 0x3c

    invoke-virtual {p0, v0, v1, v2}, Ls0/b;->x(III)I

    .line 5
    sget v0, Ls0/b;->g:I

    const/16 v1, 0x38

    const/16 v2, 0x15

    invoke-virtual {p0, v0, v1, v2}, Ls0/b;->x(III)I

    .line 6
    sget v0, Ls0/b;->g:I

    const/16 v1, 0x22

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Ls0/b;->x(III)I

    return-void
.end method

.method public final u(I)V
    .locals 2

    .line 1
    sget v0, Ls0/c;->f:I

    if-eq v0, p1, :cond_0

    .line 2
    sput p1, Ls0/c;->f:I

    .line 3
    sget-object v0, Ls0/c;->c:[Lo1/x;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lo1/x;->x([Lo1/x;II)V

    .line 4
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    .line 5
    invoke-static {p1}, Lcom/syu/jni/ToolsJni;->cmd_153_gsensor_power_onoff(I)I

    :cond_0
    return-void
.end method

.method public final v(I)V
    .locals 2

    .line 1
    sget v0, Ls0/c;->p:I

    if-eq v0, p1, :cond_0

    .line 2
    sput p1, Ls0/c;->p:I

    .line 3
    sget-object v0, Ls0/c;->c:[Lo1/x;

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Lo1/x;->x([Lo1/x;II)V

    .line 4
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final w(I)V
    .locals 2

    .line 1
    sget v0, Ls0/c;->n:I

    if-eq v0, p1, :cond_0

    .line 2
    sput p1, Ls0/c;->n:I

    .line 3
    sget-object v0, Ls0/c;->c:[Lo1/x;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Lo1/x;->x([Lo1/x;II)V

    .line 4
    iget-object v0, p0, Ls0/b;->a:Lo1/g0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final x(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/b;->c:Lo1/n;

    invoke-virtual {v0, p1, p2, p3}, Lo1/n;->h(III)I

    move-result p1

    return p1
.end method
