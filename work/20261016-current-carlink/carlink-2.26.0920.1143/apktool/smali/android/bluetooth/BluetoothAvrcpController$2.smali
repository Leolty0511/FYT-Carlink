.class Landroid/bluetooth/BluetoothAvrcpController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAvrcpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAvrcpController;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAvrcpController;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

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
    iget-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothAvrcpController;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothAvrcpController;->access$102(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/bluetooth/BluetoothAvrcpController;->access$300(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/bluetooth/BluetoothAvrcpController;->access$300(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 p2, 0xc

    .line 29
    .line 30
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 31
    .line 32
    invoke-interface {p1, p2, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothAvrcpController;->access$102(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/bluetooth/BluetoothAvrcpController;->access$300(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/bluetooth/BluetoothAvrcpController;->access$300(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/16 v0, 0xc

    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
