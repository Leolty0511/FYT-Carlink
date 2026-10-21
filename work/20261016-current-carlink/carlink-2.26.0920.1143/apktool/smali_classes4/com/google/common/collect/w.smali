.class public final synthetic Lcom/google/common/collect/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/w;->b:I

    iput-object p1, p0, Lcom/google/common/collect/w;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/w;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/w;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/w;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;

    invoke-static {v0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->c(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/w;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;

    invoke-static {v0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->b(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;Ljava/lang/Object;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/w;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ObjIntConsumer;

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    invoke-static {v0, p1}, Lcom/google/common/collect/t0;->e(Ljava/util/function/ObjIntConsumer;Lcom/google/common/collect/Multiset$Entry;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
