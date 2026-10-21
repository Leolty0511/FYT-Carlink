.class Lcom/google/common/collect/TreeTraverser$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeTraverser$2;->forEach(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/TreeTraverser$2;

.field final synthetic val$action:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeTraverser$2;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$2$1;->this$1:Lcom/google/common/collect/TreeTraverser$2;

    iput-object p2, p0, Lcom/google/common/collect/TreeTraverser$2$1;->val$action:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$2$1;->val$action:Ljava/util/function/Consumer;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/widget/d;->l(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$2$1;->this$1:Lcom/google/common/collect/TreeTraverser$2;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/common/collect/TreeTraverser$2;->this$0:Lcom/google/common/collect/TreeTraverser;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, p0}, Lcom/google/common/collect/j0;->p(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
