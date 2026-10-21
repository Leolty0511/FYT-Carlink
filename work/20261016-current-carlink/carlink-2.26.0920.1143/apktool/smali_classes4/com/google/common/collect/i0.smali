.class public final synthetic Lcom/google/common/collect/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/i0;->a:I

    iput-object p1, p0, Lcom/google/common/collect/i0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/i0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/i0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/ImmutableMultiset$Builder;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/ImmutableMultiset$Builder;->a(Lcom/google/common/collect/ImmutableMultiset$Builder;Ljava/lang/Object;I)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/i0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
