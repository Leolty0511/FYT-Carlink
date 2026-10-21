.class Lcom/google/android/projection/sink/ui/MainActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$12;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryStatusNotification(IIZ)V
    .locals 2

    .line 1
    const-string p3, "Battery status: "

    .line 2
    .line 3
    const-string v0, " percent remaining/"

    .line 4
    .line 5
    const-string v1, " seconds remaining"

    .line 6
    .line 7
    invoke-static {p3, p1, v0, p2, v1}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "AHU.MAIN_ACTIVITY"

    .line 12
    .line 13
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDisconnected(Lcom/google/android/projection/protocol/Transport$StopReason;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Shutting down GAL/transport: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$12;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->onDisconnected()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$12;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$100(Lcom/google/android/projection/sink/ui/MainActivity;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x2

    .line 32
    if-eq p1, v0, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$12;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 35
    .line 36
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Landroid/content/Intent;

    .line 41
    .line 42
    const-string v1, "usb-disconnect"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public onNavigationFocusRequest(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onNavigationFocusRequest: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$12;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 21
    .line 22
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$12$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/google/android/projection/sink/ui/MainActivity$12$1;-><init>(Lcom/google/android/projection/sink/ui/MainActivity$12;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onPoorWirelessNetworkConnectivity()V
    .locals 2

    .line 1
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 2
    .line 3
    const-string v1, "Wireless connectivity is poor"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onUnrecoverableError(Lcom/google/android/projection/proto/Protos$MessageStatus;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Received unrecoverable error "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ". Shutting down."

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "AHU.MAIN_ACTIVITY"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$12;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lcom/google/android/projection/protocol/Transport$StopReason;->CONNECTION_ERROR:Lcom/google/android/projection/protocol/Transport$StopReason;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/GalIntegration;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onVoiceSessionNotification(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVoiceSessionNotification, state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AHU.MAIN_ACTIVITY"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
