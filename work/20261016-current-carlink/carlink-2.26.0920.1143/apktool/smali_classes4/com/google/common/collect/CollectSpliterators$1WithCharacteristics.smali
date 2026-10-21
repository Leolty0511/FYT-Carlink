.class Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WithCharacteristics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Spliterator$OfInt;

.field final synthetic val$comparator:Ljava/util/Comparator;

.field final synthetic val$extraCharacteristics:I

.field final synthetic val$function:Ljava/util/function/IntFunction;


# direct methods
.method public constructor <init>(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator$OfInt;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$function:Ljava/util/function/IntFunction;

    .line 2
    .line 3
    iput p3, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$extraCharacteristics:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$comparator:Ljava/util/Comparator;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->delegate:Ljava/util/Spliterator$OfInt;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->lambda$tryAdvance$0(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->lambda$forEachRemaining$1(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    return-void
.end method

.method private static synthetic lambda$forEachRemaining$1(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    invoke-static {p2, p1}, Landroidx/emoji2/text/e;->d(ILjava/util/function/IntFunction;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/widget/d;->l(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$tryAdvance$0(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    invoke-static {p2, p1}, Landroidx/emoji2/text/e;->d(ILjava/util/function/IntFunction;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/widget/d;->l(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$extraCharacteristics:I

    or-int/lit16 v0, v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->delegate:Ljava/util/Spliterator$OfInt;

    invoke-static {v0}, Lcom/google/common/collect/j;->b(Ljava/util/Spliterator$OfInt;)J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->delegate:Ljava/util/Spliterator$OfInt;

    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$function:Ljava/util/function/IntFunction;

    new-instance v2, Lcom/google/common/collect/u;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lcom/google/common/collect/u;-><init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    invoke-static {v0, v2}, Lcom/google/common/collect/j;->w(Ljava/util/Spliterator$OfInt;Lcom/google/common/collect/u;)V

    return-void
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

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$comparator:Ljava/util/Comparator;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->delegate:Ljava/util/Spliterator$OfInt;

    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$function:Ljava/util/function/IntFunction;

    new-instance v2, Lcom/google/common/collect/u;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v1, v3}, Lcom/google/common/collect/u;-><init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    invoke-static {v0, v2}, Lcom/google/common/collect/j;->A(Ljava/util/Spliterator$OfInt;Lcom/google/common/collect/u;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->delegate:Ljava/util/Spliterator$OfInt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/j;->g(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;

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
    new-instance v1, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$function:Ljava/util/function/IntFunction;

    .line 14
    .line 15
    iget v3, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$extraCharacteristics:I

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->val$comparator:Ljava/util/Comparator;

    .line 18
    .line 19
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v1

    .line 23
    :goto_0
    return-object v0
.end method
