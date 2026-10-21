.class public Lc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f$b;,
        Lc/f$a;
    }
.end annotation


# static fields
.field public static d:Lc/f;


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/f$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    sput-object v0, Lc/f;->d:Lc/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/f;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/f;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/f;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public static b()Lc/f;
    .locals 1

    .line 1
    sget-object v0, Lc/f;->d:Lc/f;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lc/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/f$b;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1, p2}, Lc/f$b;->a(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public c(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lc/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/f$a;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1}, Lc/f$a;->a()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public d(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1}, Lc/f;->e(Landroid/util/SparseArray;I)Z

    move-result p1

    return p1
.end method

.method public final e(Landroid/util/SparseArray;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lc/f$a;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 3
    monitor-exit p1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/f$a;

    if-nez p2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p2}, Lc/f$a;->a()Z

    move-result v0

    :goto_0
    monitor-exit p1

    return v0

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final f(Landroid/util/SparseArray;ILc/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lc/f$a;",
            ">;I",
            "Lc/f$a;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    monitor-enter p1

    if-nez p3, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public g(ILc/f$b;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object v0, p0, Lc/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p2, p0, Lc/f;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Lc/f;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(ILc/f$a;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object v0, p0, Lc/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p2, p0, Lc/f;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Lc/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(ILc/f$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, p1, p2}, Lc/f;->f(Landroid/util/SparseArray;ILc/f$a;)V

    return-void
.end method
