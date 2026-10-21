.class Lcom/google/common/collect/Streams$1;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->zip(Ljava/util/stream/Stream;Ljava/util/stream/Stream;Ljava/util/function/BiFunction;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Ljava/util/function/BiFunction;

.field final synthetic val$itrA:Ljava/util/Iterator;

.field final synthetic val$itrB:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(JILjava/util/Iterator;Ljava/util/Iterator;Ljava/util/function/BiFunction;)V
    .locals 0

    iput-object p4, p0, Lcom/google/common/collect/Streams$1;->val$itrA:Ljava/util/Iterator;

    iput-object p5, p0, Lcom/google/common/collect/Streams$1;->val$itrB:Ljava/util/Iterator;

    iput-object p6, p0, Lcom/google/common/collect/Streams$1;->val$function:Ljava/util/function/BiFunction;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Streams$1;->val$itrA:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/common/collect/Streams$1;->val$itrB:Ljava/util/Iterator;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/common/collect/Streams$1;->val$function:Ljava/util/function/BiFunction;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/common/collect/Streams$1;->val$itrA:Ljava/util/Iterator;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/google/common/collect/Streams$1;->val$itrB:Ljava/util/Iterator;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v1, v2}, Lcom/google/common/base/a;->d(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Landroid/widget/d;->l(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    return p1
.end method
