.class Landroid/bluetooth/BluetoothInputHost$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothInputHost;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothInputHost;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

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
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "onServiceConnected()"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 12
    .line 13
    invoke-static {p2}, Landroid/bluetooth/IBluetoothInputHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputHost;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothInputHost;->access$202(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/bluetooth/BluetoothInputHost;->access$400(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 29
    .line 30
    invoke-static {p1}, Landroid/bluetooth/BluetoothInputHost;->access$400(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/16 p2, 0x13

    .line 35
    .line 36
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

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
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "onServiceDisconnected()"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothInputHost;->access$202(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/bluetooth/BluetoothInputHost;->access$400(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 26
    .line 27
    invoke-static {p1}, Landroid/bluetooth/BluetoothInputHost;->access$400(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 v0, 0x13

    .line 32
    .line 33
    invoke-interface {p1, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
