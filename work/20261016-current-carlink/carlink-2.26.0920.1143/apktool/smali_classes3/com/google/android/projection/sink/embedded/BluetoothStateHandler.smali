.class public Lcom/google/android/projection/sink/embedded/BluetoothStateHandler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 14
    .line 15
    const/high16 v1, -0x80000000

    .line 16
    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/16 v0, 0xb

    .line 22
    .line 23
    if-eq p2, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0xc

    .line 26
    .line 27
    if-ne p2, v0, :cond_1

    .line 28
    .line 29
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/content/ComponentName;

    .line 35
    .line 36
    const-class v1, Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 37
    .line 38
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget-object v0, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->EXTRA_START_REASON:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v1, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->EXTRA_START_REASON_RFCOMM:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method
