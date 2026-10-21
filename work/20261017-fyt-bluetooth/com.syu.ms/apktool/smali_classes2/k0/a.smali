.class public Lk0/a;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lk0/a$a;

    invoke-direct {v0, p0}, Lk0/a$a;-><init>(Lk0/a;)V

    iput-object v0, p0, Lk0/a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public S2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->b:I

    .line 3
    iput v1, v0, Lk0/mt;->c:I

    .line 4
    iput v1, v0, Lk0/mt;->d:I

    .line 5
    iput v1, v0, Lk0/mt;->e:I

    .line 6
    iput v1, v0, Lk0/mt;->f:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->h:I

    .line 9
    iput v1, v0, Lk0/mt;->i:I

    .line 10
    iput v1, v0, Lk0/mt;->j:I

    .line 11
    iput v1, v0, Lk0/mt;->k:I

    .line 12
    sget v0, Ln0/j4;->b:I

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_1

    .line 13
    :cond_0
    iget-object v0, p0, Lk0/a;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public U2([BII)V
    .locals 3

    .line 1
    sget v0, Ln0/j4;->b:I

    const/16 v1, 0x8f

    if-eq v0, v1, :cond_1

    .line 2
    new-array v0, p3, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v2, p2, v1

    .line 3
    aget-byte v2, p1, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x3fb

    .line 4
    invoke-virtual {p0, p1, v0}, Lk0/lt;->Y2(I[I)V

    :cond_1
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/a;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    return-void
.end method
