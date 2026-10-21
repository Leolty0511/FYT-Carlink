.class Landroid/os/UpdateEngine$1;
.super Landroid/os/IUpdateEngineCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/UpdateEngine;

.field final synthetic val$callback:Landroid/os/UpdateEngineCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/os/UpdateEngine$1;->this$0:Landroid/os/UpdateEngine;

    iput-object p2, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-direct {p0}, Landroid/os/IUpdateEngineCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/os/UpdateEngine$1$2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Landroid/os/UpdateEngine$1$2;-><init>(Landroid/os/UpdateEngine$1;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/os/UpdateEngineCallback;->onPayloadApplicationComplete(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public onStatusUpdate(IF)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/os/UpdateEngine$1$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Landroid/os/UpdateEngine$1$1;-><init>(Landroid/os/UpdateEngine$1;IF)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/os/UpdateEngineCallback;->onStatusUpdate(IF)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
