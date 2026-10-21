.class Lcom/google/android/projection/sink/ui/MainActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$usbdevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    iput-object p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->val$usbdevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 2
    .line 3
    sget v1, Lcom/google/android/projection/sink/R$id;->surface:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$000(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Landroid/content/IntentFilter;

    .line 29
    .line 30
    const-string v3, "usb-disconnect"

    .line 31
    .line 32
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$100(Lcom/google/android/projection/sink/ui/MainActivity;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    if-eq v0, v1, :cond_2

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    if-ne v0, v1, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$400(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;->startLocalMode(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Unhandled case: "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/google/android/projection/sink/ui/MainActivity;->access$100(Lcom/google/android/projection/sink/ui/MainActivity;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->doBindService()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->startTcpServerMode()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->val$usbdevice:Landroid/hardware/usb/UsbDevice;

    .line 107
    .line 108
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$300(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/hardware/usb/UsbDevice;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->val$intent:Landroid/content/Intent;

    .line 113
    .line 114
    const-string v1, "accessory"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$2;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 123
    .line 124
    invoke-static {v1, v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$200(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/hardware/usb/UsbAccessory;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    return-void
.end method
