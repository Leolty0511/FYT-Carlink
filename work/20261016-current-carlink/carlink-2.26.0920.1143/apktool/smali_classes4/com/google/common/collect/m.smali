.class public final synthetic Lcom/google/common/collect/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/m;->b:I

    iput-object p1, p0, Lcom/google/common/collect/m;->c:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/m;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/m;->c:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/CollectCollectors;->w(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/m;->c:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/CollectCollectors;->z(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/m;->c:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/CollectCollectors;->B(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/m;->c:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->b(Ljava/util/Comparator;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
