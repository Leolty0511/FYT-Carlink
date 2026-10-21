.class public Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;
.super Ljava/lang/Object;
.source "Receiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/broadcast/Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableHandleAmapAssistCmd"
.end annotation


# instance fields
.field bRun:Z

.field bundle:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/syu/broadcast/Receiver;


# direct methods
.method public constructor <init>(Lcom/syu/broadcast/Receiver;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;->this$0:Lcom/syu/broadcast/Receiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;->bRun:Z

    .line 36
    iput-object p2, p0, Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;->bundle:Landroid/os/Bundle;

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;->bRun:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;->this$0:Lcom/syu/broadcast/Receiver;

    iget-object v1, p0, Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/syu/broadcast/Receiver;->handleAmapAssistCmd(Landroid/os/Bundle;)V

    .line 43
    :cond_0
    return-void
.end method

.method public stopRun()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;->bRun:Z

    .line 33
    return-void
.end method
