.class Lcom/syu/broadcast/Receiver_TimeUpdate$1;
.super Ljava/lang/Object;
.source "Receiver_TimeUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/broadcast/Receiver_TimeUpdate;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/broadcast/Receiver_TimeUpdate;


# direct methods
.method constructor <init>(Lcom/syu/broadcast/Receiver_TimeUpdate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/broadcast/Receiver_TimeUpdate$1;->this$0:Lcom/syu/broadcast/Receiver_TimeUpdate;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/broadcast/Receiver_TimeUpdate$1$1;

    invoke-direct {v1, p0}, Lcom/syu/broadcast/Receiver_TimeUpdate$1$1;-><init>(Lcom/syu/broadcast/Receiver_TimeUpdate$1;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 27
    return-void
.end method
