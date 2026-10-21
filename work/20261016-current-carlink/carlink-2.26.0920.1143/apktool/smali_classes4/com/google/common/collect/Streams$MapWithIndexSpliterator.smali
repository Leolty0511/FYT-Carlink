.class abstract Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MapWithIndexSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Ljava/util/Spliterator<",
        "*>;R:",
        "Ljava/lang/Object;",
        "S:",
        "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<",
        "TF;TR;TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final fromSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field index:J


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    invoke-static {v0}, Lcom/google/common/collect/j;->a(Ljava/util/Spliterator;)I

    move-result v0

    and-int/lit16 v0, v0, 0x4050

    return v0
.end method

.method public abstract createSplit(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;J)TS;"
        }
    .end annotation
.end method

.method public estimateSize()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    invoke-static {v0}, Lcom/google/common/collect/j;->c(Ljava/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public trySplit()Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    invoke-static {v0}, Lcom/google/common/collect/j;->l(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-wide v1, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->createSplit(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$MapWithIndexSpliterator;

    move-result-object v1

    .line 4
    iget-wide v2, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    invoke-static {v0}, Lcom/google/common/collect/d1;->c(Ljava/util/Spliterator;)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    return-object v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->trySplit()Lcom/google/common/collect/Streams$MapWithIndexSpliterator;

    move-result-object v0

    return-object v0
.end method
