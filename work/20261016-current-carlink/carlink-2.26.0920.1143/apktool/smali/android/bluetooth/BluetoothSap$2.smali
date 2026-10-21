.class Landroid/bluetooth/BluetoothSap$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothSap;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSap;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothSap$2;->this$0:Landroid/bluetooth/BluetoothSap;

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
    const-string p1, "Proxy object connected"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/bluetooth/BluetoothSap;->access$300(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/bluetooth/BluetoothSap$2;->this$0:Landroid/bluetooth/BluetoothSap;

    .line 7
    .line 8
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/bluetooth/IBluetoothSap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSap;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothSap;->access$102(Landroid/bluetooth/BluetoothSap;Landroid/bluetooth/IBluetoothSap;)Landroid/bluetooth/IBluetoothSap;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroid/bluetooth/BluetoothSap$2;->this$0:Landroid/bluetooth/BluetoothSap;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/bluetooth/BluetoothSap;->access$400(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Landroid/bluetooth/BluetoothSap$2;->this$0:Landroid/bluetooth/BluetoothSap;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/bluetooth/BluetoothSap;->access$400(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/16 p2, 0xa

    .line 34
    .line 35
    iget-object v0, p0, Landroid/bluetooth/BluetoothSap$2;->this$0:Landroid/bluetooth/BluetoothSap;

    .line 36
    .line 37
    invoke-interface {p1, p2, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "Proxy object disconnected"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/bluetooth/BluetoothSap;->access$300(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/bluetooth/BluetoothSap$2;->this$0:Landroid/bluetooth/BluetoothSap;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothSap;->access$102(Landroid/bluetooth/BluetoothSap;Landroid/bluetooth/IBluetoothSap;)Landroid/bluetooth/IBluetoothSap;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/bluetooth/BluetoothSap$2;->this$0:Landroid/bluetooth/BluetoothSap;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/bluetooth/BluetoothSap;->access$400(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/bluetooth/BluetoothSap$2;->this$0:Landroid/bluetooth/BluetoothSap;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/bluetooth/BluetoothSap;->access$400(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/16 v0, 0xa

    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
