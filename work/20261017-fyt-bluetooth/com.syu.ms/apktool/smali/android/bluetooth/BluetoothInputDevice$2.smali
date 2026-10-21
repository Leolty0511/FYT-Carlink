.class Landroid/bluetooth/BluetoothInputDevice$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothInputDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "BluetoothInputDevice"

    const-string v0, "Proxy object connected"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputDevice;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothInputDevice;->access$102(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    .line 3
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {p1}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {p1}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object p1

    const/4 p2, 0x4

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-interface {p1, p2, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BluetoothInputDevice"

    const-string v0, "Proxy object disconnected"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothInputDevice;->access$102(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    .line 3
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {p1}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {p1}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object p1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_0
    return-void
.end method
