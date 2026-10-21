.class public final synthetic Lcom/google/common/collect/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/common/collect/v;->b:I

    iput-object p1, p0, Lcom/google/common/collect/v;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/v;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/google/common/base/Function;)V
    .locals 1

    .line 2
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/common/collect/v;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/v;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/v;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/common/collect/v;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/Maps$AsMapView;

    iget-object v1, p0, Lcom/google/common/collect/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Maps$AsMapView;->a(Lcom/google/common/collect/Maps$AsMapView;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/v;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/google/common/collect/v;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/base/Function;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Iterables$5;->a(Ljava/util/function/Consumer;Lcom/google/common/base/Function;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/base/Predicate;

    iget-object v1, p0, Lcom/google/common/collect/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Iterables$4;->a(Lcom/google/common/base/Predicate;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/common/collect/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/Collections2$TransformedCollection;

    iget-object v1, p0, Lcom/google/common/collect/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Collections2$TransformedCollection;->b(Lcom/google/common/collect/Collections2$TransformedCollection;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/common/collect/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/Collections2$FilteredCollection;

    iget-object v1, p0, Lcom/google/common/collect/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Collections2$FilteredCollection;->b(Lcom/google/common/collect/Collections2$FilteredCollection;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/google/common/collect/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;

    iget-object v1, p0, Lcom/google/common/collect/v;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->d(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/google/common/collect/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;

    iget-object v1, p0, Lcom/google/common/collect/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->a(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/v;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/Maps$NavigableAsMapView;

    iget-object v1, p0, Lcom/google/common/collect/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Maps$NavigableAsMapView;->b(Lcom/google/common/collect/Maps$NavigableAsMapView;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
