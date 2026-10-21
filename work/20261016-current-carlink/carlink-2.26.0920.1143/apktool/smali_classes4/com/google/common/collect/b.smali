.class public final synthetic Lcom/google/common/collect/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/function/BiConsumer;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/common/collect/b;->b:I

    iput-object p1, p0, Lcom/google/common/collect/b;->c:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/google/common/collect/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/common/collect/b;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/b;->c:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/google/common/collect/b;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->c(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/b;->c:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/google/common/collect/b;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/ImmutableMultimap;->c(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
