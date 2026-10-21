.class public abstract Lc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Landroid/os/Handler;

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/d;->a:Z

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lc/d;->c:Landroid/util/SparseArray;

    .line 4
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lc/d;->d:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 6
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iput-object v0, p0, Lc/d;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(IJ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lc/d;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v3, p0, Lc/d;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    mul-int/lit16 v4, v3, 0x1f4

    if-eqz v3, :cond_2

    int-to-long v4, v4

    sub-long v4, p2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 3
    invoke-virtual {p0, p1, v3}, Lc/d;->c(II)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p3, p0, Lc/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public abstract b(I)Z
.end method

.method public abstract c(II)Z
.end method

.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lc/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/d;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object v0, p0, Lc/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 6
    iget-object v4, p0, Lc/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d$a;

    .line 7
    iget-wide v4, v4, Lc/d$a;->a:J

    sub-long v4, v1, v4

    .line 8
    iget-object v6, p0, Lc/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p0, v6, v4, v5}, Lc/d;->a(IJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    iget-object v4, p0, Lc/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
