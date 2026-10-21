.class public Le1/k;
.super Le1/l;
.source "SourceFile"


# static fields
.field public static e:I = 0x20


# instance fields
.field public a:Lo1/n;

.field public b:I

.field public c:I

.field public d:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le1/l;-><init>()V

    .line 2
    new-instance v0, Lo1/n;

    invoke-direct {v0}, Lo1/n;-><init>()V

    iput-object v0, p0, Le1/k;->a:Lo1/n;

    .line 3
    new-instance v0, Le1/k$a;

    invoke-direct {v0, p0}, Le1/k$a;-><init>(Le1/k;)V

    iput-object v0, p0, Le1/k;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic j(Le1/k;)I
    .locals 0

    .line 1
    iget p0, p0, Le1/k;->b:I

    return p0
.end method

.method public static synthetic k(Le1/k;I)I
    .locals 0

    .line 1
    iput p1, p0, Le1/k;->b:I

    return p1
.end method

.method public static synthetic l(Le1/k;)I
    .locals 0

    .line 1
    iget p0, p0, Le1/k;->c:I

    return p0
.end method

.method public static synthetic m(Le1/k;I)I
    .locals 0

    .line 1
    iput p1, p0, Le1/k;->c:I

    return p1
.end method

.method public static synthetic n(Le1/k;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le1/k;->o(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le1/k;->a:Lo1/n;

    const-string v1, "/dev/i2c-4"

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    .line 3
    :goto_0
    iget-object v0, p0, Le1/k;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Le1/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le1/k;->o(I)I

    move-result v1

    .line 2
    invoke-static {}, Lg/e;->e()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, 0xf0

    or-int/2addr p1, v0

    .line 3
    invoke-virtual {p0, v0, p1}, Le1/k;->p(II)V

    goto :goto_0

    :cond_1
    if-eq p1, v3, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit16 p1, v1, 0xf0

    or-int/lit8 p1, p1, 0x4

    .line 4
    invoke-virtual {p0, v0, p1}, Le1/k;->p(II)V

    goto :goto_0

    :cond_3
    and-int/lit16 p1, v1, 0xf0

    or-int/lit8 p1, p1, 0x3

    .line 5
    invoke-virtual {p0, v0, p1}, Le1/k;->p(II)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le1/k;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Le1/b;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Le1/k;->a:Lo1/n;

    invoke-virtual {v0}, Lo1/n;->close()V

    return-void
.end method

.method public h(IIII)V
    .locals 0

    const/16 p1, 0xa

    .line 1
    invoke-virtual {p0, p1, p2}, Le1/k;->p(II)V

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1, p4}, Le1/k;->p(II)V

    const/16 p1, 0xb

    .line 3
    invoke-virtual {p0, p1, p3}, Le1/k;->p(II)V

    return-void
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public final o(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le1/k;->a:Lo1/n;

    sget v1, Le1/k;->e:I

    invoke-virtual {v0, v1, p1}, Lo1/n;->g(II)I

    move-result p1

    return p1
.end method

.method public final p(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/k;->a:Lo1/n;

    sget v1, Le1/k;->e:I

    invoke-virtual {v0, v1, p1, p2}, Lo1/n;->h(III)I

    return-void
.end method
