.class Landroid/bluetooth/BluetoothPbap$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

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
    .locals 0

    .line 1
    const-string p1, "Proxy object connected"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$300(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    .line 7
    .line 8
    invoke-static {p2}, Landroid/bluetooth/IBluetoothPbap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbap;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothPbap;->access$102(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    .line 24
    .line 25
    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "Proxy object disconnected"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$300(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothPbap;->access$102(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceDisconnected()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
