.class public final synthetic Lcom/google/common/util/concurrent/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/util/concurrent/e;->b:I

    iput-object p1, p0, Lcom/google/common/util/concurrent/e;->c:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/common/util/concurrent/e;->b:I

    iget-object v1, p0, Lcom/google/common/util/concurrent/e;->c:Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;->a(Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;)V

    return-void

    :goto_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;->b(Lcom/google/common/util/concurrent/AbstractIdleService$DelegateService;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
