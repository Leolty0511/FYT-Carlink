.class public Lk0/ul;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ul;->b:I

    .line 3
    new-instance v0, Lk0/ul$a;

    invoke-direct {v0, p0}, Lk0/ul$a;-><init>(Lk0/ul;)V

    iput-object v0, p0, Lk0/ul;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lk0/ul$b;

    invoke-direct {v0, p0}, Lk0/ul$b;-><init>(Lk0/ul;)V

    iput-object v0, p0, Lk0/ul;->d:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/ul$c;

    invoke-direct {v0, p0}, Lk0/ul$c;-><init>(Lk0/ul;)V

    iput-object v0, p0, Lk0/ul;->e:Ljava/lang/Runnable;

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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->i:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ul;->e:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ul;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 4

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x30

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    const/16 p3, 0x6a

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    new-array v0, p3, [I

    add-int/2addr p2, v2

    .line 2
    aget-byte v1, p1, p2

    const/4 v3, 0x0

    shr-int/2addr v1, v3

    and-int/2addr v1, p3

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, p3, [I

    .line 3
    aget-byte p1, p1, p2

    shr-int/2addr p1, p3

    and-int/2addr p1, p3

    aput p1, v0, v3

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ul;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ul;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x3

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 5

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x8b

    aput v0, p1, v4

    aput v2, p1, v2

    .line 1
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x90

    aput v0, p1, v4

    aput v2, p1, v2

    .line 2
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
