.class public Lcom/google/android/projection/sink/ui/MainActivity$BtListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BtListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$BtListener;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleConnectStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStateChange(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$BtListener;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/google/android/projection/sink/ui/MainActivity;->btConnected:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$BtListener;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/google/android/projection/sink/ui/MainActivity;->mService:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->start()Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
