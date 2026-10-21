.class public final synthetic Lcom/google/common/collect/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/e;->b:I

    iput-object p1, p0, Lcom/google/common/collect/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/e;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/StandardTable$Row;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable$Row;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/google/common/collect/StandardTable;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)Lcom/google/common/collect/Table$Cell;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/Maps$NavigableAsMapView;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps$NavigableAsMapView;->a(Lcom/google/common/collect/Maps$NavigableAsMapView;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lcom/google/common/collect/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->e(Ljava/util/Comparator;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
