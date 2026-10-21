.class public Lcom/syu/broadcast/AutoTestReceiver$Runnable_UpdatePin;
.super Ljava/lang/Object;
.source "AutoTestReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/broadcast/AutoTestReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Runnable_UpdatePin"
.end annotation


# instance fields
.field strPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/syu/broadcast/AutoTestReceiver;


# direct methods
.method public constructor <init>(Lcom/syu/broadcast/AutoTestReceiver;Ljava/lang/String;)V
    .locals 0
    .param p2, "strPin"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/syu/broadcast/AutoTestReceiver$Runnable_UpdatePin;->this$0:Lcom/syu/broadcast/AutoTestReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/syu/broadcast/AutoTestReceiver$Runnable_UpdatePin;->strPin:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 35
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    return-void

    .line 35
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 36
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    iget-object v2, p0, Lcom/syu/broadcast/AutoTestReceiver$Runnable_UpdatePin;->strPin:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/syu/bt/InterfaceBt;->updatePin(Ljava/lang/String;)V

    goto :goto_0
.end method
