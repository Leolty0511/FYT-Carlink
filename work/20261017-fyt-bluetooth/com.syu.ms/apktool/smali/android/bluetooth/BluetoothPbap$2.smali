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
.field public final synthetic this$0:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "Proxy object connected"

    .line 1
    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$300(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothPbap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbap;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothPbap;->access$102(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 3
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object p1

    iget-object p2, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-interface {p1, p2}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "Proxy object disconnected"

    .line 1
    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$300(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothPbap;->access$102(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 3
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbap;->access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
