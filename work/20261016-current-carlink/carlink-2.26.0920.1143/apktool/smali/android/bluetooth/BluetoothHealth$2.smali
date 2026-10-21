.class Landroid/bluetooth/BluetoothHealth$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHealth;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHealth;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

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
    const-string p1, "BluetoothHealth"

    .line 2
    .line 3
    const-string v0, "Proxy object connected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/bluetooth/IBluetoothHealth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealth;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothHealth;->access$102(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/bluetooth/BluetoothHealth;->access$300(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/bluetooth/BluetoothHealth;->access$300(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x3

    .line 36
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    .line 37
    .line 38
    invoke-interface {p1, p2, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "BluetoothHealth"

    .line 2
    .line 3
    const-string v0, "Proxy object disconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothHealth;->access$102(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/bluetooth/BluetoothHealth;->access$300(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/bluetooth/BluetoothHealth;->access$300(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x3

    .line 29
    invoke-interface {p1, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
