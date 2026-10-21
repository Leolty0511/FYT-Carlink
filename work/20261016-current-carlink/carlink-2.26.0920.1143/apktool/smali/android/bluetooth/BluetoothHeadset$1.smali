.class Landroid/bluetooth/BluetoothHeadset$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
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

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3

    .line 1
    const-string v0, "BluetoothHeadset"

    .line 2
    .line 3
    const-string/jumbo v1, "onBluetoothStateChange: up="

    .line 4
    .line 5
    .line 6
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->doUnbind()V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadset;->access$000(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->doBind()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_2

    .line 40
    :catch_0
    move-exception v0

    .line 41
    :try_start_1
    const-string v1, "BluetoothHeadset"

    .line 42
    .line 43
    const-string v2, ""

    .line 44
    .line 45
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    monitor-exit p1

    .line 49
    :goto_1
    return-void

    .line 50
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v0
.end method
