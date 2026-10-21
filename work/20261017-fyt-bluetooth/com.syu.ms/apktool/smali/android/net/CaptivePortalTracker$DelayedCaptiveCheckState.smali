.class Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DelayedCaptiveCheckState"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0}, Landroid/net/CaptivePortalTracker;->access$2204(Landroid/net/CaptivePortalTracker;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v1}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lu/m;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-virtual {v1, v0}, Lu/m;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lu/l;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/CaptivePortalTracker;->access$2300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0}, Landroid/net/CaptivePortalTracker;->access$900(Landroid/net/CaptivePortalTracker;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0}, Landroid/net/CaptivePortalTracker;->access$2200(Landroid/net/CaptivePortalTracker;)I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_5

    .line 5
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {p1}, Landroid/net/CaptivePortalTracker;->access$2400(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/CaptivePortalTracker;->access$2500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0, p1}, Landroid/net/CaptivePortalTracker;->access$2600(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Captive network "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/CaptivePortalTracker;->access$2700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not captive network "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/CaptivePortalTracker;->access$2800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {p1}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/net/CaptivePortalTracker;->access$2900(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;Z)V

    .line 10
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {p1}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_4

    .line 11
    :try_start_0
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {p1}, Landroid/net/CaptivePortalTracker;->access$3100(Landroid/net/CaptivePortalTracker;)Landroid/net/IConnectivityManager;

    move-result-object p1

    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v1}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$3000(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 13
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "captivePortal"

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.google.android.setupwizard"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v0}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 17
    :cond_4
    :goto_1
    iget-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {p1}, Landroid/net/CaptivePortalTracker;->access$3200(Landroid/net/CaptivePortalTracker;)Lu/l;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/CaptivePortalTracker;->access$3300(Landroid/net/CaptivePortalTracker;Lu/g;)V

    :cond_5
    return v2
.end method
