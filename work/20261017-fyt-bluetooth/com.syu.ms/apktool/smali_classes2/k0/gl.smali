.class public Lk0/gl;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/gl;->c:I

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/gl;->d:[[I

    .line 4
    new-instance v0, Lk0/gl$a;

    invoke-direct {v0, p0}, Lk0/gl$a;-><init>(Lk0/gl;)V

    iput-object v0, p0, Lk0/gl;->e:Ljava/lang/Runnable;

    .line 5
    iput v3, p0, Lk0/gl;->f:I

    .line 6
    iput v3, p0, Lk0/gl;->g:I

    .line 7
    new-instance v0, Lk0/gl$b;

    invoke-direct {v0, p0}, Lk0/gl$b;-><init>(Lk0/gl;)V

    iput-object v0, p0, Lk0/gl;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/gl$c;

    invoke-direct {v0, p0}, Lk0/gl$c;-><init>(Lk0/gl;)V

    iput-object v0, p0, Lk0/gl;->i:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_5
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_6
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x10
        0x6
    .end array-data
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gl;->h:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    .line 9
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/gl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 4

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    if-eq v0, v1, :cond_5

    const/16 p3, 0x11

    if-eq v0, p3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x4

    .line 2
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x5

    .line 3
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p3, p2

    .line 4
    iput p3, p0, Lk0/gl;->c:I

    const/4 p3, 0x0

    move v0, p3

    .line 5
    :goto_0
    iget-object v1, p0, Lk0/gl;->d:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 6
    iget v2, p0, Lk0/gl;->c:I

    aget-object v3, v1, v0

    aget v3, v3, p3

    if-ne v2, v3, :cond_1

    if-eqz v2, :cond_2

    .line 7
    iput v0, p0, Lk0/gl;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    and-int/2addr p1, p2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 8
    array-length p1, v1

    if-ge v0, p1, :cond_6

    .line 9
    aget-object p1, v1, v0

    aget p1, p1, v2

    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_6

    .line 10
    iget p1, p0, Lk0/gl;->b:I

    array-length p3, v1

    if-ge p1, p3, :cond_4

    if-eq p1, p2, :cond_4

    .line 11
    aget-object p1, v1, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 12
    :cond_4
    iput p2, p0, Lk0/gl;->b:I

    goto :goto_2

    .line 13
    :cond_5
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/gl;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/gl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    .locals 7

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/4 v0, -0x3

    const/16 v1, 0xe3

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    const/16 v6, 0x3eb

    if-eq p1, v6, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    .line 2
    sget p1, Lu0/b;->o:I

    if-ne p1, v4, :cond_2

    new-array p1, v2, [I

    aput v1, p1, v5

    aput v3, p1, v4

    aput v0, p1, v3

    .line 3
    iget p2, p0, Lk0/gl;->f:I

    aput p2, p1, p4

    aput v5, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_1
    aget p1, p2, v5

    iput p1, p0, Lk0/gl;->f:I

    new-array p1, v2, [I

    aput v1, p1, v5

    aput v3, p1, v4

    aput v0, p1, v3

    .line 5
    aget v0, p2, v5

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
