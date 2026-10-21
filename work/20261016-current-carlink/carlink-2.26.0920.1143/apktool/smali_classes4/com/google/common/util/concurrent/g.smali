.class public final synthetic Lcom/google/common/util/concurrent/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/google/common/util/concurrent/g;->b:I

    iput-object p3, p0, Lcom/google/common/util/concurrent/g;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/common/util/concurrent/g;->e:Ljava/lang/Object;

    iput p1, p0, Lcom/google/common/util/concurrent/g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/google/common/util/concurrent/g;->b:I

    iget v1, p0, Lcom/google/common/util/concurrent/g;->c:I

    iget-object v2, p0, Lcom/google/common/util/concurrent/g;->e:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/util/concurrent/g;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Lcom/google/common/util/concurrent/AggregateFuture;

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3, v2, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->a(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    return-void

    :goto_0
    check-cast v3, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    check-cast v2, Lcom/google/common/collect/ImmutableList;

    invoke-static {v3, v2, v1}, Lcom/google/common/util/concurrent/Futures;->b(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
