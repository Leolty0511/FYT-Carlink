.class public Lk0/c6;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static d:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/c6;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/c6;->c:I

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
    iget-object v0, p0, Lk0/c6;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/c6;->b:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/c6;->a3(I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 3

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, -0x6f

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    add-int/2addr p2, p3

    .line 2
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x3f5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    if-eq p1, p3, :cond_4

    const/4 p3, 0x4

    if-eq p1, p3, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput p3, p1, v0

    .line 3
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    const/4 p3, 0x3

    aput p3, p1, v0

    .line 4
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [I

    aput v1, p1, v0

    .line 5
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array p1, v1, [I

    aput p3, p1, v0

    .line 6
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array p1, v1, [I

    aput v0, p1, v0

    .line 7
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    :goto_0
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/c6;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_6

    .line 1
    array-length p1, p2

    if-lez p1, :cond_6

    const/4 p1, 0x0

    .line 2
    aget p1, p2, p1

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x4

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    .line 3
    invoke-virtual {p0, p1}, Lk0/c6;->a3(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1}, Lk0/c6;->a3(I)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0, p2}, Lk0/c6;->a3(I)V

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p0, p3}, Lk0/c6;->a3(I)V

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0, p2}, Lk0/c6;->a3(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 6

    .line 1
    sput p1, Lk0/c6;->d:I

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x4

    aput v3, v0, v1

    const/4 v4, 0x2

    const/16 v5, -0x70

    aput v5, v0, v4

    int-to-byte p1, p1

    const/4 v4, 0x3

    aput p1, v0, v4

    aput v2, v0, v3

    const/4 p1, 0x5

    aput v2, v0, p1

    const/4 p1, 0x6

    aput v2, v0, p1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lk0/c6;->b:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/c6;->d:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/c6;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
