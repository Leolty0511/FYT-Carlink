.class public Ls0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/e;


# instance fields
.field public a:Lo1/g0;

.field public b:Ljava/lang/Runnable;


# direct methods
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

    iput-object v0, p0, Ls0/a;->a:Lo1/g0;

    .line 3
    new-instance v0, Ls0/a$a;

    invoke-direct {v0, p0}, Ls0/a$a;-><init>(Ls0/a;)V

    iput-object v0, p0, Ls0/a;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic i(Ls0/a;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Ls0/a;->a:Lo1/g0;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls0/a;->a:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Ls0/a;->b:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/a;->a:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Ls0/a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-static {p1, v0, v1}, Lo1/o0;->a(III)I

    move-result p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v3, 0xb0

    aput v3, v2, v0

    add-int/lit8 v0, p1, 0x8

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    .line 3
    sget v0, Ls0/c;->h:I

    if-eq v0, p1, :cond_0

    .line 4
    sput p1, Ls0/c;->h:I

    .line 5
    sget-object v0, Ls0/c;->c:[Lo1/x;

    invoke-static {v0, v1, p1}, Lo1/x;->x([Lo1/x;II)V

    .line 6
    iget-object v0, p0, Ls0/a;->a:Lo1/g0;

    invoke-virtual {v0, v3, p1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Ls0/c;->p:I

    if-nez p1, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0, v0}, Ls0/a;->d(I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    .line 3
    invoke-virtual {p0, v2}, Ls0/a;->k(I)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    .line 5
    invoke-virtual {p0, v0}, Ls0/a;->k(I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xb3
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xb3
        0x3
        0x0
    .end array-data
.end method

.method public e(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-static {p1, v0, v1}, Lo1/o0;->a(III)I

    move-result p1

    .line 2
    sget v2, Ls0/c;->l:I

    if-eq v2, p1, :cond_0

    .line 3
    sput p1, Ls0/c;->l:I

    .line 4
    sget-object v2, Ls0/c;->c:[Lo1/x;

    const/4 v3, 0x6

    invoke-static {v2, v3, p1}, Lo1/x;->x([Lo1/x;II)V

    .line 5
    iget-object v2, p0, Ls0/a;->a:Lo1/g0;

    invoke-virtual {v2, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    const/4 v2, 0x1

    add-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x1e

    new-array v1, v1, [I

    const/16 v3, 0xb2

    aput v3, v1, v0

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v2

    const/4 v0, 0x2

    and-int/lit16 p1, p1, 0xff

    aput p1, v1, v0

    .line 6
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public f(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Ls0/c;->f:I

    if-nez p1, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0, v0}, Ls0/a;->f(I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    .line 3
    invoke-virtual {p0, v0}, Ls0/a;->j(I)V

    :cond_3
    new-array p1, v1, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    .line 5
    invoke-virtual {p0, v2}, Ls0/a;->j(I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xb3
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xb3
        0x1
        0x1
    .end array-data
.end method

.method public g(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-static {p1, v0, v1}, Lo1/o0;->a(III)I

    move-result p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/16 v3, 0xb1

    aput v3, v2, v0

    add-int/lit8 v0, p1, 0x8

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 2
    invoke-static {v2}, Lz/k;->s([I)V

    .line 3
    sget v0, Ls0/c;->j:I

    if-eq v0, p1, :cond_0

    .line 4
    sput p1, Ls0/c;->j:I

    .line 5
    sget-object v0, Ls0/c;->c:[Lo1/x;

    const/4 v2, 0x5

    invoke-static {v0, v2, p1}, Lo1/x;->x([Lo1/x;II)V

    .line 6
    iget-object v0, p0, Ls0/a;->a:Lo1/g0;

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Ls0/c;->n:I

    if-nez p1, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0, v0}, Ls0/a;->h(I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    .line 3
    invoke-virtual {p0, v2}, Ls0/a;->l(I)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    .line 5
    invoke-virtual {p0, v0}, Ls0/a;->l(I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xb3
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xb3
        0x2
        0x0
    .end array-data
.end method

.method public final j(I)V
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
    iget-object v0, p0, Ls0/a;->a:Lo1/g0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final k(I)V
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
    iget-object v0, p0, Ls0/a;->a:Lo1/g0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final l(I)V
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
    iget-object v0, p0, Ls0/a;->a:Lo1/g0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
