.class public final synthetic Lcom/google/common/collect/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/l;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/common/collect/Multiset;

    check-cast p2, Lcom/google/common/collect/Multiset;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->d(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lcom/google/common/collect/ImmutableListMultimap$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableListMultimap$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->combine(Lcom/google/common/collect/ImmutableMultimap$Builder;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->combine(Lcom/google/common/collect/ImmutableMap$Builder;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lcom/google/common/collect/ImmutableMap$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->combine(Lcom/google/common/collect/ImmutableMap$Builder;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lcom/google/common/collect/ImmutableRangeMap$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->combine(Lcom/google/common/collect/ImmutableRangeMap$Builder;)Lcom/google/common/collect/ImmutableRangeMap$Builder;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->combine(Lcom/google/common/collect/ImmutableMultimap$Builder;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Lcom/google/common/collect/ImmutableSet$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSet$Builder;->combine(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Lcom/google/common/collect/ImmutableList$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList$Builder;->combine(Lcom/google/common/collect/ImmutableList$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->combine(Lcom/google/common/collect/ImmutableRangeSet$Builder;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Lcom/google/common/collect/ImmutableBiMap$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->combine(Lcom/google/common/collect/ImmutableMap$Builder;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p1, p2}, Lcom/google/common/collect/TableCollectors;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    check-cast p2, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->combine(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    move-result-object p1

    return-object p1

    :pswitch_d
    check-cast p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    check-cast p2, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->combine(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    move-result-object p1

    return-object p1

    :pswitch_e
    check-cast p1, Lcom/google/common/collect/TopKSelector;

    check-cast p2, Lcom/google/common/collect/TopKSelector;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TopKSelector;->combine(Lcom/google/common/collect/TopKSelector;)Lcom/google/common/collect/TopKSelector;

    move-result-object p1

    return-object p1

    :pswitch_f
    check-cast p1, Lcom/google/common/collect/Multimap;

    check-cast p2, Lcom/google/common/collect/Multimap;

    invoke-static {p1, p2}, Lcom/google/common/collect/CollectCollectors;->u(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;

    move-result-object p1

    return-object p1

    :pswitch_10
    check-cast p1, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    check-cast p2, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->combine(Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;)Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    move-result-object p1

    return-object p1

    :pswitch_11
    check-cast p1, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;

    check-cast p2, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->combine(Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;)Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;

    move-result-object p1

    return-object p1

    :pswitch_12
    check-cast p1, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    check-cast p2, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->combine(Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;)Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    move-result-object p1

    return-object p1

    :pswitch_13
    check-cast p1, Lcom/google/common/collect/Multiset;

    check-cast p2, Lcom/google/common/collect/Multiset;

    invoke-static {p1, p2}, Lcom/google/common/collect/CollectCollectors;->g(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;

    move-result-object p1

    return-object p1

    :pswitch_14
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectCollectors;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_15
    check-cast p1, Lcom/google/common/collect/Multimap;

    check-cast p2, Lcom/google/common/collect/Multimap;

    invoke-static {p1, p2}, Lcom/google/common/collect/CollectCollectors;->f(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;

    move-result-object p1

    return-object p1

    :pswitch_16
    check-cast p1, Lcom/google/common/collect/Multiset;

    check-cast p2, Lcom/google/common/collect/Multiset;

    invoke-static {p1, p2}, Lcom/google/common/collect/CollectCollectors;->s(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast p1, Lcom/google/common/collect/ImmutableTable$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableTable$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableTable$Builder;->combine(Lcom/google/common/collect/ImmutableTable$Builder;)Lcom/google/common/collect/ImmutableTable$Builder;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
