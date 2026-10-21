.class public final synthetic Lcom/google/common/util/concurrent/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/common/util/concurrent/h;->b:I

    iput-object p1, p0, Lcom/google/common/util/concurrent/h;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/util/concurrent/h;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/common/util/concurrent/h;->b:I

    iget-object v1, p0, Lcom/google/common/util/concurrent/h;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/util/concurrent/h;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lcom/google/common/util/concurrent/AggregateFuture;

    check-cast v1, Lcom/google/common/collect/ImmutableCollection;

    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->b(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V

    return-void

    :goto_0
    check-cast v2, Lcom/google/common/base/Supplier;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->b(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
