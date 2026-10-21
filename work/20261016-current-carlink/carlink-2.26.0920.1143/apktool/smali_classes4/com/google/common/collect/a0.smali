.class public final synthetic Lcom/google/common/collect/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/function/Predicate;

.field public final synthetic d:Ljava/util/AbstractCollection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/AbstractCollection;Ljava/util/function/Predicate;I)V
    .locals 0

    iput p3, p0, Lcom/google/common/collect/a0;->b:I

    iput-object p1, p0, Lcom/google/common/collect/a0;->d:Ljava/util/AbstractCollection;

    iput-object p2, p0, Lcom/google/common/collect/a0;->c:Ljava/util/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/google/common/collect/a0;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/a0;->d:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    iget-object v1, p0, Lcom/google/common/collect/a0;->c:Ljava/util/function/Predicate;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->a(Lcom/google/common/collect/Lists$TransformingRandomAccessList;Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/a0;->d:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/common/collect/Collections2$TransformedCollection;

    iget-object v1, p0, Lcom/google/common/collect/a0;->c:Ljava/util/function/Predicate;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Collections2$TransformedCollection;->a(Lcom/google/common/collect/Collections2$TransformedCollection;Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/a0;->d:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/common/collect/Collections2$FilteredCollection;

    iget-object v1, p0, Lcom/google/common/collect/a0;->c:Ljava/util/function/Predicate;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Collections2$FilteredCollection;->c(Lcom/google/common/collect/Collections2$FilteredCollection;Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/a0;->d:Ljava/util/AbstractCollection;

    check-cast v0, Lcom/google/common/collect/Lists$TransformingSequentialList;

    iget-object v1, p0, Lcom/google/common/collect/a0;->c:Ljava/util/function/Predicate;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Lists$TransformingSequentialList;->a(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
