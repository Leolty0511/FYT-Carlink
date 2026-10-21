.class public final synthetic Lcom/google/common/collect/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/function/Consumer;

.field public final synthetic d:Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V
    .locals 0

    iput p3, p0, Lcom/google/common/collect/u;->b:I

    iput-object p1, p0, Lcom/google/common/collect/u;->c:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/google/common/collect/u;->d:Ljava/util/function/IntFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget v0, p0, Lcom/google/common/collect/u;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/u;->c:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/google/common/collect/u;->d:Ljava/util/function/IntFunction;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->b(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/u;->c:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/google/common/collect/u;->d:Ljava/util/function/IntFunction;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->a(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
