.class Landroid/bluetooth/BluetoothHeadset$2;
.super Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string p1, "BluetoothHeadset"

    .line 2
    .line 3
    const-string v0, "Proxy object connected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothHeadset;->access$102(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 28
    .line 29
    invoke-static {p2}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/16 v0, 0x64

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string p1, "BluetoothHeadset"

    .line 2
    .line 3
    const-string v0, "Proxy object disconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothHeadset;->access$102(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$200(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0x65

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
