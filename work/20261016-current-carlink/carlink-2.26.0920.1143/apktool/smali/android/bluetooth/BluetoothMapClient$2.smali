.class Landroid/bluetooth/BluetoothMapClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMapClient;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothMapClient;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

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
    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->access$000()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "BluetoothMapClient"

    .line 8
    .line 9
    const-string v0, "Proxy object connected"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 15
    .line 16
    invoke-static {p2}, Landroid/bluetooth/IBluetoothMapClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMapClient;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothMapClient;->access$302(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 24
    .line 25
    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->access$500(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->access$500(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/16 p2, 0x12

    .line 38
    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 40
    .line 41
    invoke-interface {p1, p2, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->access$000()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "BluetoothMapClient"

    .line 8
    .line 9
    const-string v0, "Proxy object disconnected"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothMapClient;->access$302(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->access$500(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    .line 29
    .line 30
    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->access$500(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/16 v0, 0x12

    .line 35
    .line 36
    invoke-interface {p1, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
