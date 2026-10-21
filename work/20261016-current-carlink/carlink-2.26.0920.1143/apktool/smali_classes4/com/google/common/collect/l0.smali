.class public final synthetic Lcom/google/common/collect/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/l0;->b:I

    iput-object p1, p0, Lcom/google/common/collect/l0;->c:Ljava/util/function/BiConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/l0;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/l0;->c:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/google/common/collect/Streams$TemporaryPair;

    invoke-static {v0, p1}, Lcom/google/common/collect/Streams;->b(Ljava/util/function/BiConsumer;Lcom/google/common/collect/Streams$TemporaryPair;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/l0;->c:Ljava/util/function/BiConsumer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/google/common/collect/JdkBackedImmutableMap;->a(Ljava/util/function/BiConsumer;Ljava/util/Map$Entry;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/l0;->c:Ljava/util/function/BiConsumer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/google/common/collect/o0;->b(Ljava/util/function/BiConsumer;Ljava/util/Map$Entry;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
