.class public final synthetic Lcom/google/common/util/concurrent/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractService;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/util/concurrent/b;->b:I

    iput-object p1, p0, Lcom/google/common/util/concurrent/b;->c:Lcom/google/common/util/concurrent/AbstractService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/util/concurrent/b;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->c:Lcom/google/common/util/concurrent/AbstractService;

    check-cast v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->b(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->c:Lcom/google/common/util/concurrent/AbstractService;

    check-cast v0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->c(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
