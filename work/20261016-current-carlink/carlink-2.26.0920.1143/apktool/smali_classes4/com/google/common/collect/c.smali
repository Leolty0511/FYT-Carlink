.class public final synthetic Lcom/google/common/collect/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/c;->b:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p1, Ljava/util/Optional;

    invoke-static {p1}, Lcom/google/common/collect/Comparators;->c(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/util/Optional;

    invoke-static {p1}, Lcom/google/common/collect/Comparators;->b(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->build()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lcom/google/common/collect/ImmutableListMultimap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->build()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Lcom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->build()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Lcom/google/common/collect/SetMultimap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSetMultimap;->copyOf(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->build()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p1, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object p1

    return-object p1

    :pswitch_d
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1

    :pswitch_e
    check-cast p1, Lcom/google/common/collect/ListMultimap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableListMultimap;->copyOf(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p1

    return-object p1

    :pswitch_f
    check-cast p1, Ljava/util/TreeMap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfSorted(Ljava/util/SortedMap;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1

    :pswitch_10
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_11
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p1

    return-object p1

    :pswitch_12
    check-cast p1, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    invoke-static {p1}, Lcom/google/common/collect/TableCollectors;->e(Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;)Lcom/google/common/collect/ImmutableTable;

    move-result-object p1

    return-object p1

    :pswitch_13
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/StandardTable;->b(Ljava/util/Map$Entry;)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1

    :pswitch_14
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/MutableClassToInstanceMap$2;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1

    :pswitch_15
    check-cast p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    invoke-static {p1}, Lcom/google/common/collect/MoreCollectors;->b(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_16
    check-cast p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    invoke-virtual {p1}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->getOptional()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :pswitch_17
    check-cast p1, Lcom/google/common/collect/TopKSelector;

    invoke-virtual {p1}, Lcom/google/common/collect/TopKSelector;->topK()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_18
    check-cast p1, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    invoke-virtual {p1}, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->toImmutableMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1

    :pswitch_19
    check-cast p1, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;

    invoke-virtual {p1}, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->toImmutableSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1

    :pswitch_1a
    check-cast p1, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    invoke-virtual {p1}, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->toImmutableMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1

    :pswitch_1b
    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/collect/CollectCollectors;->p(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p1

    return-object p1

    :pswitch_1c
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->a(Ljava/util/Map$Entry;)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
