.class Lcom/syu/bt/App_Bt$46;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "App_Bt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/App_Bt;->registerNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$46;->this$0:Lcom/syu/bt/App_Bt;

    .line 639
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v4, 0x1

    .line 642
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 643
    const-string v0, "net"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7f51\u7edc\u5df2\u8fde\u63a5: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bLinkNet:Z

    .line 645
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAI_JZ:Z

    if-eqz v0, :cond_0

    .line 647
    sget-boolean v0, Lcom/syu/bt/App_Bt;->isAiuvoice:Z

    if-nez v0, :cond_0

    sget v0, Lcom/syu/bt/App_Bt;->isAIType:I

    if-ne v0, v4, :cond_0

    .line 648
    const/4 v0, 0x0

    sput v0, Lcom/syu/bt/App_Bt;->iRunnStep:I

    .line 649
    iget-object v0, p0, Lcom/syu/bt/App_Bt$46;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mRunnAIUvEcnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {v4, v0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 653
    :cond_0
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 666
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 669
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 673
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 657
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 658
    const-string v0, "net"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7f51\u7edc\u5df2\u65ad\u5f00: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bLinkNet:Z

    .line 662
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .prologue
    .line 677
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 678
    const-string v0, "net"

    const-string v1, "\u65e0\u53ef\u7528\u7f51\u7edc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bLinkNet:Z

    .line 681
    return-void
.end method
