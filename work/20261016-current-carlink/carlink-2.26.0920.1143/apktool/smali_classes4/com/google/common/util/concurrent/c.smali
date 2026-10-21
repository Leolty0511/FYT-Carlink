.class public final synthetic Lcom/google/common/util/concurrent/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/util/concurrent/c;->b:I

    iput-object p1, p0, Lcom/google/common/util/concurrent/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/common/util/concurrent/c;->b:I

    iget-object v1, p0, Lcom/google/common/util/concurrent/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Ljava/lang/AutoCloseable;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture;->a(Ljava/lang/AutoCloseable;)V

    return-void

    :pswitch_1
    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-static {v1}, Lcom/google/common/util/concurrent/WrappingExecutorService;->a(Ljava/util/concurrent/Callable;)V

    return-void

    :pswitch_2
    check-cast v1, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-static {v1}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->a(Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)V

    return-void

    :pswitch_3
    check-cast v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->a(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V

    return-void

    :goto_0
    check-cast v1, Ljava/util/concurrent/Future;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->a(Ljava/util/concurrent/Future;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
