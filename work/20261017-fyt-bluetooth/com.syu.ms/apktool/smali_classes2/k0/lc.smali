.class public Lk0/lc;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Runnable;

.field public c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lk0/lc$a;

    invoke-direct {v0, p0}, Lk0/lc$a;-><init>(Lk0/lc;)V

    iput-object v0, p0, Lk0/lc;->b:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lk0/lc$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lk0/lc$b;-><init>(Lk0/lc;Landroid/os/Looper;)V

    iput-object v0, p0, Lk0/lc;->c:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a3(Lk0/lc;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/lc;->b3()V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x1

    .line 4
    iput v2, v0, Lk0/mt;->h:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/lc;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/lc;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_2

    .line 2
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Lk0/qt;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lc;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
