.class Lcom/google/common/collect/Streams$3Splitr;
.super Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->mapWithIndex(Ljava/util/stream/LongStream;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<",
        "Ljava/util/Spliterator$OfLong;",
        "TR;",
        "Lcom/google/common/collect/Streams$3Splitr;",
        ">;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# instance fields
.field holder:J

.field final synthetic val$function:Lcom/google/common/collect/Streams$LongFunctionWithIndex;


# direct methods
.method public constructor <init>(Ljava/util/Spliterator$OfLong;JLcom/google/common/collect/Streams$LongFunctionWithIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator$OfLong;",
            "J)V"
        }
    .end annotation

    .line 1
    iput-object p4, p0, Lcom/google/common/collect/Streams$3Splitr;->val$function:Lcom/google/common/collect/Streams$LongFunctionWithIndex;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;-><init>(Ljava/util/Spliterator;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/collect/Streams$3Splitr;->holder:J

    return-void
.end method

.method public createSplit(Ljava/util/Spliterator$OfLong;J)Lcom/google/common/collect/Streams$3Splitr;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/common/collect/Streams$3Splitr;

    iget-object v1, p0, Lcom/google/common/collect/Streams$3Splitr;->val$function:Lcom/google/common/collect/Streams$LongFunctionWithIndex;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/common/collect/Streams$3Splitr;-><init>(Ljava/util/Spliterator$OfLong;JLcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    return-object v0
.end method

.method public bridge synthetic createSplit(Ljava/util/Spliterator;J)Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/j;->i(Ljava/lang/Object;)Ljava/util/Spliterator$OfLong;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$3Splitr;->createSplit(Ljava/util/Spliterator$OfLong;J)Lcom/google/common/collect/Streams$3Splitr;

    move-result-object p1

    return-object p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/j;->i(Ljava/lang/Object;)Ljava/util/Spliterator$OfLong;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lcom/google/common/collect/f1;->B(Ljava/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/common/collect/Streams$3Splitr;->val$function:Lcom/google/common/collect/Streams$LongFunctionWithIndex;

    .line 14
    .line 15
    iget-wide v1, p0, Lcom/google/common/collect/Streams$3Splitr;->holder:J

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    .line 18
    .line 19
    const-wide/16 v5, 0x1

    .line 20
    .line 21
    add-long/2addr v5, v3

    .line 22
    iput-wide v5, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    .line 23
    .line 24
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/common/collect/Streams$LongFunctionWithIndex;->apply(JJ)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Landroid/widget/d;->l(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    return p1
.end method
