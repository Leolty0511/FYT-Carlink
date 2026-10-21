.class public final synthetic Lcom/google/common/collect/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/h;->a:I

    iput-object p1, p0, Lcom/google/common/collect/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/h;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/ImmutableSet$Indexed;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$Indexed;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/CompactHashMap$EntrySetView;

    invoke-static {v0, p1}, Lcom/google/common/collect/CompactHashMap$EntrySetView;->a(Lcom/google/common/collect/CompactHashMap$EntrySetView;I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lcom/google/common/collect/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/ArrayTable$ArrayMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ArrayTable$ArrayMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/IndexedImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/IndexedImmutableSet;->get(I)Ljava/lang/Object;

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
