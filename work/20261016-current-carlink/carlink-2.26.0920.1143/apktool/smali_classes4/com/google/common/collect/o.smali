.class public final synthetic Lcom/google/common/collect/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Function;

.field public final synthetic c:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;I)V
    .locals 0

    iput p3, p0, Lcom/google/common/collect/o;->a:I

    iput-object p1, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/common/collect/o;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableListMultimap$Builder;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->q(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$Builder;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->x(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$Builder;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->b(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->k(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$Builder;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->j(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$Builder;Ljava/lang/Object;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->h(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$Builder;Ljava/lang/Object;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->e(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$Builder;Ljava/lang/Object;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->r(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/Multimap;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->o(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/Multimap;Ljava/lang/Object;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/o;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/o;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/Multimap;

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/collect/CollectCollectors;->A(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/Multimap;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
