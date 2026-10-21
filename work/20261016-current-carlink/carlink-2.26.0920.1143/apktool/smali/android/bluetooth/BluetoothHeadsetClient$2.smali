.class Landroid/bluetooth/BluetoothHeadsetClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/a;->a(Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string p1, "BluetoothHeadsetClient"

    .line 2
    .line 3
    const-string v0, "Proxy object connected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothHeadsetClient;->access$102(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->access$300(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->access$300(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/16 p2, 0x10

    .line 36
    .line 37
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 38
    .line 39
    invoke-interface {p1, p2, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "BluetoothHeadsetClient"

    .line 2
    .line 3
    const-string v0, "Proxy object disconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->access$102(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->access$300(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->access$300(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v0, 0x10

    .line 29
    .line 30
    invoke-interface {p1, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
