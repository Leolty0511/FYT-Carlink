.class Lcom/google/common/collect/CollectSpliterators$1Splitr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CollectSpliterators;->filter(Ljava/util/Spliterator;Ljava/util/function/Predicate;)Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field holder:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$fromSpliterator:Ljava/util/Spliterator;

.field final synthetic val$predicate:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Ljava/util/Spliterator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$predicate:Ljava/util/function/Predicate;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    return-void
.end method

.method public characteristics()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Ljava/util/Spliterator;

    invoke-static {v0}, Lcom/google/common/collect/j;->a(Ljava/util/Spliterator;)I

    move-result v0

    and-int/lit16 v0, v0, 0x115

    return v0
.end method

.method public estimateSize()J
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Ljava/util/Spliterator;

    invoke-static {v0}, Lcom/google/common/collect/j;->c(Ljava/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Ljava/util/Spliterator;

    invoke-static {v0}, Lcom/google/common/collect/j;->d(Ljava/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Ljava/util/Spliterator;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/google/common/collect/j;->D(Ljava/util/Spliterator;Ljava/util/function/Consumer;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$predicate:Ljava/util/function/Predicate;

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/text/format/b;->y(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-static {p1, v1}, Landroid/widget/d;->l(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->holder:Ljava/lang/Object;

    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$fromSpliterator:Ljava/util/Spliterator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/j;->l(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1Splitr;->val$predicate:Ljava/util/function/Predicate;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/common/collect/CollectSpliterators;->filter(Ljava/util/Spliterator;Ljava/util/function/Predicate;)Ljava/util/Spliterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    return-object v0
.end method
