.class public abstract Li1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public b:[I

.field public c:[I

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Li1/e;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Li1/e;->b:[I

    const/16 v1, 0x200

    new-array v1, v1, [I

    .line 4
    iput-object v1, p0, Li1/e;->c:[I

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Li1/e;->f:Ljava/lang/Integer;

    .line 6
    iput-object v0, p0, Li1/e;->g:[I

    return-void
.end method


# virtual methods
.method public abstract a(I)Z
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Li1/e;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Li1/e;->f:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Li1/e;->e:Ljava/lang/Integer;

    return-void
.end method

.method public abstract c(I)Z
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract f()[I
.end method

.method public g(I)I
    .locals 5

    and-int/lit16 p1, p1, 0xff

    .line 1
    invoke-virtual {p0}, Li1/e;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li1/e;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 3
    iget-object v0, p0, Li1/e;->c:[I

    iget-object v3, p0, Li1/e;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Li1/e;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput p1, v0, v3

    .line 4
    iget-object p1, p0, Li1/e;->f:Ljava/lang/Integer;

    iget-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_8

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Li1/e;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v3, p0, Li1/e;->b:[I

    array-length v3, v3

    if-ne v0, v3, :cond_5

    .line 6
    invoke-virtual {p0}, Li1/e;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li1/e;->e:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Li1/e;->i(I)Z

    goto/16 :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Li1/e;->c(I)Z

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Li1/e;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 11
    iget-object v0, p0, Li1/e;->c:[I

    iget-object v3, p0, Li1/e;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Li1/e;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput p1, v0, v3

    .line 12
    invoke-virtual {p0}, Li1/e;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Li1/e;->f:Ljava/lang/Integer;

    iget-object v0, p0, Li1/e;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_8

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0, p1}, Li1/e;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    move v1, v2

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Li1/e;->b()V

    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    const/4 v0, -0x2

    .line 15
    iget-object v2, p0, Li1/e;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 16
    iget-object v3, p0, Li1/e;->b:[I

    aget v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v3, p1, :cond_6

    .line 17
    iget-object p1, p0, Li1/e;->a:Landroid/util/SparseArray;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_6
    iget-object v1, p0, Li1/e;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 19
    iget-object v0, p0, Li1/e;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 20
    invoke-virtual {p0, p1}, Li1/e;->g(I)I

    move-result v1

    goto :goto_1

    :cond_7
    move v1, v0

    :cond_8
    :goto_1
    return v1
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li1/e;->f()[I

    move-result-object v0

    iput-object v0, p0, Li1/e;->b:[I

    return-void
.end method

.method public i(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Li1/e;->e:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
