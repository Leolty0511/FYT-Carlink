.class public Lcom/syu/broadcast/Receiver_TimeUpdate;
.super Landroid/content/BroadcastReceiver;
.source "Receiver_TimeUpdate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/syu/broadcast/Receiver_TimeUpdate$1;

    invoke-direct {v1, p0}, Lcom/syu/broadcast/Receiver_TimeUpdate$1;-><init>(Lcom/syu/broadcast/Receiver_TimeUpdate;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    return-void
.end method
