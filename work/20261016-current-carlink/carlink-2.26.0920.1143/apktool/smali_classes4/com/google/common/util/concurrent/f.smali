.class public final synthetic Lcom/google/common/util/concurrent/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/util/concurrent/f;->b:I

    iput-object p1, p0, Lcom/google/common/util/concurrent/f;->c:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/common/util/concurrent/f;->b:I

    iget-object v1, p0, Lcom/google/common/util/concurrent/f;->c:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->a(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V

    return-void

    :goto_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->b(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
