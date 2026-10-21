.class Lcom/google/android/projection/sink/embedded/service/EarlyBootService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/embedded/service/EarlyBootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/service/EarlyBootService;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/service/EarlyBootService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/service/EarlyBootService$1;->this$0:Lcom/google/android/projection/sink/embedded/service/EarlyBootService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/google/android/projection/sink/embedded/service/EarlyBootService;->launchBackgroundServiceIfBluetoothEnabled(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/projection/sink/embedded/service/EarlyBootService;->access$000()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "User unlocked, but no available BT adapter.  Skipping start."

    .line 25
    .line 26
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/service/EarlyBootService$1;->this$0:Lcom/google/android/projection/sink/embedded/service/EarlyBootService;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
